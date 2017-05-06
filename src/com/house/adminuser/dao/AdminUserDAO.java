package com.house.adminuser.dao;

import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.house.adminuser.vo.AdminUser;
import com.house.hibernate.BaseHibernateDAO;

/**
 	* A data access object (DAO) providing persistence and search support for AdminUser entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.house.adminuser.vo.AdminUser
  * @author MyEclipse Persistence Tools 
 */
public class AdminUserDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(AdminUserDAO.class);
		//property constants
	public static final String USERNAME = "username";
	public static final String PASSWORD = "password";



    
    public void save(AdminUser transientInstance) {
        log.debug("saving AdminUser instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(AdminUser persistentInstance) {
        log.debug("deleting AdminUser instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public AdminUser findById( java.lang.Integer id) {
        log.debug("getting AdminUser instance with id: " + id);
        try {
            AdminUser instance = (AdminUser) getSession()
                    .get("com.house.adminuser.vo.AdminUser", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(AdminUser instance) {
        log.debug("finding AdminUser instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.house.adminuser.vo.AdminUser")
                    .add(Example.create(instance))
            .list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding AdminUser instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from AdminUser as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByUsername(Object username
	) {
		return findByProperty(USERNAME, username
		);
	}
	
	public List findByPassword(Object password
	) {
		return findByProperty(PASSWORD, password
		);
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
            AdminUser result = (AdminUser) getSession()
                    .merge(detachedInstance);
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
/*
	// Dao完成登录的代码
	public AdminUser login(AdminUser adminUser) {
		String hql = "from AdminUser where username = ? and password = ?";
		Query query = getSession().createQuery(hql);
		if(query.list() != null && query.list().size() != 0) {
			return  (AdminUser) query.list().get(0);
		}
		return null;
	}
*/
	public String getPassword(String username) {
		String hql = "select password from AdminUser u where u.username='" +  username + "'";
		System.out.println(hql);
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return (String) query.list().get(0);
		}
		else {
			return "";
		}

	}
}