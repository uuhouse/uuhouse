package com.house.adminuser.dao;

import com.house.hibernate.BaseHibernateDAO;
import com.house.adminuser.vo.AdminUser;

import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 用户模块持久层代码:
 * @see com.house.adminUser.vo.AdminAdminUser
 */
public class AdminUserDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(AdminUserDAO.class);
	// property constants
	public static final String AID = "aid";
	public static final String AUSERNAME = "ausername";
	public static final String APASSWORD = "apassword";
	
	public void update(AdminUser persistentInstance) {
		log.debug("updating AdminUser instance");
		try {
			getSession().update(persistentInstance);
            getSession().beginTransaction().commit();
            getSession().flush();
			getSession().close();
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}
	
	public void save(AdminUser transientInstance) {
		log.debug("saving AdminUser instance");
		try {
			getSession().save(transientInstance);
            getSession().beginTransaction().commit();
            getSession().flush();
			log.debug("save successful");
			getSession().close();
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(AdminUser persistentInstance) {
		log.debug("deleting AdminUser instance");
		try {
			getSession().delete(persistentInstance);
            getSession().beginTransaction().commit();
            getSession().flush();
			getSession().close();
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public AdminUser findByAid(java.lang.Integer aid) {
		log.debug("getting AdminUser instance with aid: " + aid);
		try {
			AdminUser instance = (AdminUser) getSession().get("com.house.adminuser.vo.AdminUser", aid);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding AdminUser instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from AdminUser as model where model." + propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all AdminUser instances");
		try {
			String queryString = "from AdminUser";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public AdminUser merge(AdminUser detachedInstance) {
		log.debug("merging AdminUser instance");
		try {
			AdminUser result = (AdminUser) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(AdminUser instance) {
		log.debug("attaching dirty AdminUser instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(AdminUser instance) {
		log.debug("attaching clean AdminUser instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	// 根据用户名查询用户
	public AdminUser findByAdminUsername(String adminUsername) {
		List result = findByProperty(AUSERNAME, adminUsername);
		 if(result != null && result.size() != 0) {
			 return (AdminUser) result.get(0);
		 }
		else {
			 return null;
		}
	}
	
	// 查询用户总记录数
	public int findCount() {
		String hql = "select count(*) from AdminUser";
		Query query = getSession().createQuery(hql);
		int count = (new Integer(query.uniqueResult().toString())).intValue();  
		
		if(query.list() != null && query.list().size() != 0) {
			return count;
		}
		return 0;
	}
	
	// 查询用户在一页中的记录数
	public List<AdminUser> findByPage(int begin, int limit) {
		String hql = "from AdminUser";
		Query query = getSession().createQuery(hql);
		query.setFirstResult(begin);
		query.setMaxResults(limit);
		
		return query.list();
		
	}

	public String getAPassword(String adminUsername) {
		String hql = "select apassword from AdminUser a where ausername='" +  adminUsername + "'";
		Query query = getSession().createQuery(hql);	
		if(query.list() != null && query.list().size() > 0) {
			return (String) query.list().get(0);
		}
		else {
			return "";
		}
	}

	public int getAid(String adminUsername) {
		String hql = "select aid from AdminUser a where a.ausername='" +  adminUsername + "'";
		Query query = getSession().createQuery(hql);	
		if(query.list() != null && query.list().size() > 0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		else {
			return 0;
		}
	}

}