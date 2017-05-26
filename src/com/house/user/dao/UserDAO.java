package com.house.user.dao;

import com.house.hibernate.BaseHibernateDAO;
import com.house.user.vo.User;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 用户模块持久层代码:
 * @see com.house.user.vo.User
 */
public class UserDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(UserDAO.class);
	// property constants
	public static final String UID = "uid";
	public static final String USERNAME = "username";
	public static final String PASSWORD = "password";
	public static final String MAIL = "mail";
	public static final String NAME = "name";
	public static final String NICNAME = "nicname";
	public static final String GENDER = "gender";
	public static final String PHOTO = "photo";
	public static final String PHONE = "phone";
	public static final String QQ = "qq";
	public static final String ADDRESS = "address";
	public static final String BIRTHDAY = "birthday";
	public static final String CODE = "code";
	public static final String STATE = "state";
	public static final String POWER = "power";

	public void update(User persistentInstance) {
		log.debug("updating User instance");
		try {
			getSession().update(persistentInstance);
			getSession().flush();
            getSession().beginTransaction().commit();
			getSession().close();
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	
	public void save(User transientInstance) {
		log.debug("saving User instance");
		try {
			getSession().save(transientInstance);
			getSession().flush();
            getSession().beginTransaction().commit();
			log.debug("save successful");
			getSession().close();
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(User persistentInstance) {
		log.debug("deleting User instance");
		try {
			getSession().delete(persistentInstance);
			getSession().flush();
            getSession().beginTransaction().commit();
			getSession().close();
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public User findByUid(java.lang.Integer uid) {
		log.debug("getting User instance with uid: " + uid);
		try {
			User instance = (User) getSession().get("com.house.user.vo.User", uid);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding User instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from User as model where model." + propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all User instances");
		try {
			String queryString = "from User";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public User merge(User detachedInstance) {
		log.debug("merging User instance");
		try {
			User result = (User) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(User instance) {
		log.debug("attaching dirty User instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(User instance) {
		log.debug("attaching clean User instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	// 根据激活码查询用户
	 public User findByCode(String code){
		 List result = findByProperty(CODE, code);
		 if(result != null && result.size() != 0) {
			 return (User) result.get(0);
		 }
		else {
			 return null;
		}
	 }
	 
	// 根据ID查询用户
	public User findByUid(String uid){
		List result = findByProperty(UID, uid);
		 if(result != null && result.size() != 0) {
			 return (User) result.get(0);
		 }
		else {
			 return null;
		}
	}
	
	// 根据用户名查询用户
	public User findByUsername(String username) {
		List result = findByProperty(USERNAME, username);
		 if(result != null && result.size() != 0) {
			 return (User) result.get(0);
		 }
		else {
			 return null;
		}
	}
	
	// 查询用户总记录数
	public int findCount() {
		String hql = "select count(*) from User";
		Query query = getSession().createQuery(hql);
		int count = (new Integer(query.uniqueResult().toString())).intValue();  
		
		if(query.list() != null && query.list().size() != 0) {
			return count;
		}
		return 0;
	}
	
	// 查询用户在一页中的记录数
	public List<User> findByPage(int begin, int limit) {
		String hql = "from User";
		Query query = getSession().createQuery(hql);
		query.setFirstResult(begin);
		query.setMaxResults(limit);
		
		return query.list();
		
	}

	public String getPassword(String username) {
		String hql = "select password from User u where u.username='" +  username + "'";
		Query query = getSession().createQuery(hql);	
		if(query.list() != null && query.list().size() > 0) {
			return (String) query.list().get(0);
		}
		else {
			return "";
		}
	}
	
	public int getState(String username) {
		String hql = "select state from User u where u.username='" +  username + "'";
		Query query = getSession().createQuery(hql);	
		if(query.list() != null && query.list().size() > 0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		else {
			return 0;
		}
	}

	public int getPower(String username) {
		String hql = "select power from User u where u.username='" +  username + "'";
		Query query = getSession().createQuery(hql);	
		if(query.list() != null && query.list().size() > 0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		else {
			return 0;
		}
	}

	public int getUid(String username) {
		String hql = "select uid from User u where u.username='" +  username + "'";
		Query query = getSession().createQuery(hql);	
		if(query.list() != null && query.list().size() > 0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		else {
			return 0;
		}
	}

}