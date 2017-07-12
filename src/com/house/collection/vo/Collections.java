package com.house.collection.vo;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;


/**
 * 收藏对象
 */
public class Collections implements Serializable{
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		// 收藏车属性
		//收藏项集合:Map的key就是房屋hid,value:收藏项
		private Map<Integer, CollectionItem> map = new LinkedHashMap<Integer, CollectionItem>();

		// Collection对象中有一个叫CollectionItem属性.
		public Collection<CollectionItem> getCollectionItems(){
			return map.values();
		}
		
		// 收藏总计:
		private double total;

		public double getTotal() {
			return total;
		}

		// 收藏车的功能:
		public void addCollection(CollectionItem collectionItem) {
		// 1.将收藏项添加到收藏车
			// 判断收藏车中是否已经存在该收藏项:
			/*
			 *  * 如果存在:
			 *  	* 不添加,
			 *  * 如果不存在:
			 *  	* 向map中添加收藏项
			 */
			// 获得商品id.
			Integer hid = collectionItem.getHouse().getHid();
			// 判断购物车中是否已经存在该购物项:
			if(map.containsKey(hid)){
				// 存在,不添加
				System.out.println("存在");
			}else{
				// 不存在
				map.put(hid, collectionItem);
			}
		}

		// 2.从收藏车移除收藏项
		public void removeCollection(Integer hid) {
			// 将购物项移除购物车:
			CollectionItem collectionItem = map.remove(hid);
		}

		// 3.清空收藏车
		public void clearCollection() {
			// 将所有收藏项清空
			map.clear();
			// 将总计设置为0
			total = 0;
		}
}
