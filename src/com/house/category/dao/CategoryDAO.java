package com.house.category.dao;

import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.house.category.vo.Category;
import com.house.hibernate.BaseHibernateDAO;
import com.house.user.vo.User;

/**
 * 一级分类的持久层对象
 */
public class CategoryDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(CategoryDAO.class);
		//property constants
	public static final String CNAME = "cname";
	
    public void save(Category transientInstance) {
        log.debug("saving Category instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Category persistentInstance) {
        log.debug("deleting Category instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Category findByCid( java.lang.Integer cid) {
        log.debug("getting Category instance with cid: " + cid);
        try {
            Category instance = (Category) getSession()
                    .get("com.house.adminuser.vo.Category", cid);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Category instance) {
        log.debug("finding Category instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.house.adminuser.vo.Category")
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
      log.debug("finding Category instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Category as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByCname(Object cname
	) {
		return findByProperty(CNAME, cname
		);
	}
	

	public List findAll() {
		log.debug("finding all Category instances");
		try {
			String queryString = "from Category";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Category merge(Category detachedInstance) {
        log.debug("merging Category instance");
        try {
            Category result = (Category) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Category instance) {
        log.debug("attaching dirty Category instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Category instance) {
        log.debug("attaching clean Category instance");
        try {
                      	getSession().buildLockRequest(LockOptions.NONE).lock(instance);
          	            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public void update(Category category) {
    	getSession().update(category);
        getSession().flush();
        getSession().beginTransaction().commit();
        getSession().close();
	}
}