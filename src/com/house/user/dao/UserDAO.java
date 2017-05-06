package com.house.user.dao;

import com.house.hibernate.BaseHibernateDAO;
import com.house.user.vo.User;

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

	public void update(User transientInstance){
    	getSession().update( transientInstance);
        getSession().flush();
        getSession().beginTransaction().commit();
        getSession().close();
    } 
	
	public void save(User transientInstance) {
		log.debug("saving User instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(User persistentInstance) {
		log.debug("deleting User instance");
		try {
			getSession().delete(persistentInstance);
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

	public List findByExample(User instance) {
		log.debug("finding User instance by example");
		try {
			List results = getSession().createCriteria("com.house.user.vo.User").add(Example.create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
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

	public List findByUsername(Object username) {
		return findByProperty(USERNAME, username);
	}

	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List findByMail(Object mail) {
		return findByProperty(MAIL, mail);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByNicname(Object nicname) {
		return findByProperty(NICNAME, nicname);
	}

	public List findByGender(Object gender) {
		return findByProperty(GENDER, gender);
	}

	public List findByPhoto(Object photo) {
		return findByProperty(PHOTO, photo);
	}

	public List findByPhone(Object phone) {
		return findByProperty(PHONE, phone);
	}

	public List findByQq(Object qq) {
		return findByProperty(QQ, qq);
	}

	public List findByAddress(Object address) {
		return findByProperty(ADDRESS, address);
	}

	public List findByBirthday(Object birthday) {
		return findByProperty(BIRTHDAY, birthday);
	}

	public List findByCode(Object code) {
		return findByProperty(CODE, code);
	}
	
	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findByPower(Object power) {
		return findByProperty(POWER, power);
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
	
	public int findCount() {
		String hql = "select count(*) from User";
		Query query = getSession().createQuery(hql);
		if(query.list() != null && query.list().size() != 0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		return 0;
	}
	
	public List<User> findByPage(int begin, int limit) {
		return null;
	}

	public String getPassword(String username) {
		String hql = "select password from User u where u.username='" +  username + "'";
		System.out.println(hql);
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return (String) query.list().get(0);
		}
		else {
			return "";
		}
	}
	
	public int getState(String username) {
		String hql = "select state from User u where u.username='" +  username + "'";
		System.out.println(hql);
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		else {
			return 0;
		}
	}
	
	public String getMail(String username) {
		String hql = "select mail from User u where u.username='" +  username + "'";
		System.out.println(hql);
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return (String) query.list().get(0);
		}
		else {
			return "";
		}
	}
	
	public int getPower(String username) {
		String hql = "select power from User u where u.username='" +  username + "'";
		System.out.println(hql);
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		else {
			return 0;
		}
	}
	
	public String getName(String username) {
		String hql = "select name from User u where u.username='" +  username + "'";
		System.out.println(hql);
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return ((String) query.list().get(0));
		}
		else {
			return null;
		}
	}

}