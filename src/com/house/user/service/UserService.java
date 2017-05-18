package com.house.user.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.house.user.vo.User;
import com.house.user.dao.UserDAO;

import com.house.utils.MailUitls;
import com.house.utils.PageBean;
import com.house.utils.UUIDUtils;

/**
 * 用户名模块业务层代码
 *
 */
@Transactional
public class UserService {
	private UserDAO userDao = new UserDAO();

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
	
	// 删除用户的方法
	public void delete(User existUser) {
		userDao.delete(existUser);
	}
	
	// 修改用户的状态的方法
	public void update(User existUser) {
		userDao.update(existUser);
	}
	
	// 业务层完成用户注册代码:
	public void save(User user) {
		user.setState(0); // 0:代表用户未激活.  1:代表用户已经激活.
		String code = UUIDUtils.getUUID()+UUIDUtils.getUUID();
		user.setCode(code);
		userDao.save(user);
		// 发送激活邮件;
		MailUitls.sendMail(user.getMail(), code);
	}


	// 按用户ID查询用户
	public User findByUid(int uid) {
		return userDao.findByUid(uid);
	}
	// 按用户名查询用户
	public User findByUsername(String username){
		return userDao.findByUsername(username);
	}
		
	// 根据激活码查询用户
	public User findByCode(String code) {
		return userDao.findByCode(code);
	}
	
	// 业务层用户查询所有
	public PageBean<User> findByPage(Integer page) {
		PageBean<User> pageBean = new PageBean<User>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		// 显示5个
		int limit = 5;
		pageBean.setLimit(limit);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = userDao.findCount();
		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置每页显示数据集合:
		int begin = (page - 1)*limit;
		List<User> list = userDao.findByPage(begin,limit);  
		pageBean.setList(list);
		return pageBean;
	}

	public String getPassword(String username) {
		// TODO Auto-generated method stub
		return userDao.getPassword(username);
	}

	public int getState(String username) {
		// TODO Auto-generated method stub
		return userDao.getState(username);
	}

	public int getPower(String username) {
		// TODO Auto-generated method stub
		return userDao.getPower(username);
	}

	public int getUid(String username) {
		// TODO Auto-generated method stub
		return userDao.getUid(username);
	}
}
