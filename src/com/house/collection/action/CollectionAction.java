package com.house.collection.action;

import org.apache.struts2.ServletActionContext;

import com.house.collection.vo.CollectionItem;
import com.house.collection.vo.Collections;
import com.house.uuhouse.service.HouseService;
import com.house.uuhouse.vo.House;

/*
 *  收藏车Action
 */
public class CollectionAction {
		// 接收hid
		private Integer hid;
		// 注入商品的Service
		private HouseService houseService = new HouseService();

		public void setHouseService(HouseService houseService) {
			this.houseService = houseService;
		}

		public void setHid(Integer hid) {
			this.hid = hid;
		}

		// 将收藏项添加到收藏车:执行的方法
		public String addCollections() {
			// 封装一个CollectionItem对象.
			CollectionItem collectionItem = new CollectionItem();
			// 根据hid进行查询房屋:
			House house = houseService.findByHid(hid);
			System.out.println(house.toString());
			// 设置房屋信息:
			collectionItem.setHouse(house);
			// 将收藏项添加到收藏车.
			// 收藏车应该存在session中.
			Collections collections = getCollections();
			collections.addCollection(collectionItem);
			return "addCollections";
		}

		// 清空收藏车的执行的方法:
		public String clearCollections(){
			// 获得购物车对象.
			Collections collections = getCollections();
			// 调用购物车中清空方法.
			collections.clearCollection();
			return "clearCollections";
		}
		
		// 从收藏车中移除收藏项的方法:
		public String removeCollections(){
			// 获得购物车对象
			Collections collections = getCollections();
			// 调用购物车中移除的方法:
			collections.removeCollection(hid);
			// 返回页面:
			return "removeCollections";
		}
		
		// 我的收藏车:执行的方法
		public String myCollections(){
			return "myCollections";
		}
		
		/**
		 * 获得收藏车的方法:从session中获得收藏车.
		 * @return
		 */
		private Collections getCollections() {
			Collections collections = (Collections) ServletActionContext.getRequest().getSession()
					.getAttribute("collections");
			if (collections == null) {
				collections = new Collections();
				ServletActionContext.getRequest().getSession()
						.setAttribute("collections", collections);
			}
			return collections;
		}
}
