package com.house.uuhouse.adminaction;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.house.utils.PageBean;
import com.house.uuhouse.service.HouseService;
import com.house.uuhouse.vo.House;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class AdminHouseAction extends ActionSupport implements
	ModelDriven<House> {
	// 模型驱动使用的对象
	private House house = new House();

	public House getModel() {
		return house;
	}

	// 接收page参数
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	// 注入HouseService
	private HouseService houseService = new HouseService();

	public void setHouseService(HouseService houseService) {
		this.houseService = houseService;
	}

	// 文件上传需要的三个属性:
	private File upload;
	private String uploadFileName;
	private String uploadContentType;

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	// 查询所有的商品:
	public String findAll() {
		PageBean<House> pageBean = houseService.findByPage(page);
		// 将PageBean数据存入到值栈中.
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// 页面跳转
		return "findAll";
	}

	// 保存房屋信息的方法:
	public String save() throws IOException {
		// 将提交的数据添加到数据库中.
		house.setHdate(new Date());
		if(upload != null){
			// 将房屋图片上传到服务器上.
			// 获得上传图片的服务器端路径.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/houses");
			// 创建文件类型对象:
			File diskFile = new File(path + "//" + uploadFileName);
			// 文件上传:
			FileUtils.copyFile(upload, diskFile);
	
			house.setHimage("houses/" + uploadFileName);
		}
		houseService.save(house);
		return "save_success";
	}

	// 删除房屋信息的方法:
	public String delete() {
		// 根据id查询房屋信息
		house = houseService.findByHid(house.getHid());
		// 删除房屋信息的图片:
		String path = ServletActionContext.getServletContext().getRealPath(
				"/" + house.getHimage());
		File file = new File(path);
		file.delete();
		// 删除数据库中房屋信息记录:
		houseService.delete(house);
		// 页面跳转
		return "delete_success";
	}

	// 编辑商品的方法
	public String edit() {
		// 根据房屋id查询房屋信息
		house = houseService.findByHid(house.getHid());
		// 页面跳转到编辑页面:
		return "edit_success";
	}

	// 修改房屋信息的方法
	public String update() throws IOException {
		// 将信息修改到数据库
		house.setHdate(new Date());
		
		// 上传:
		if(upload != null ){
			String delPath = ServletActionContext.getServletContext().getRealPath(
					"/" + house.getHimage());
			File file = new File(delPath);
			file.delete();
			// 获得上传图片的服务器端路径.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/houses");
			// 创建文件类型对象:
			File diskFile = new File(path + "//" + uploadFileName);
			// 文件上传:
			FileUtils.copyFile(upload, diskFile);

			house.setHimage("houses/" + uploadFileName);
		}
		houseService.update(house);
		// 页面跳转
		return "update_success";
	}

}
