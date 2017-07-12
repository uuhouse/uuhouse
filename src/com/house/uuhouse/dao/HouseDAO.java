package com.house.uuhouse.dao;

import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.house.hibernate.BaseHibernateDAO;
import com.house.uuhouse.vo.House;

/**
 * @see com.house.uuhouse.vo.House
 */
public class HouseDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(HouseDAO.class);
	// property constants
	public static final String HID = "hid";
	public static final String KIND = "kind";
	public static final String HTYPE = "htype";
	public static final String IDENTIFY = "identify";
	public static final String LAYOUT = "layout";
	public static final String TITLE = "title";
	public static final String AREAS = "areas";
	public static final String FLOOR = "floor";
	public static final String UNTIPRICE = "untiprice";
	public static final String AREA = "area";
	public static final String COUNTPRICE = "countprice";
	public static final String PROVINCE = "province";
	public static final String CITY = "city";
	public static final String VILLAGE = "village";
	public static final String STRETCH = "stretch";
	public static final String ADDRESS = "address";
	public static final String CX = "cx";
	public static final String HTIME = "htime";
	public static final String PROPERTY_RIGHT = "propertyRight";
	public static final String ELEVATOR = "elevator";
	public static final String DECORATE = "decorate";
	public static final String HIMAGE = "himage";
	public static final String DESCRIPTION = "description";
	public static final String FEATURE = "feature";
	public static final String OWNER_MOOD = "ownerMood";
	public static final String AREAS_INFO = "areasInfo";
	public static final String AM_ENVIRONMENT = "amEnvironment";
	public static final String MONTH_PAY = "monthPay";
	public static final String MAP = "map";
	public static final String HSTATE = "hstate";
	public static final String UID = "uid";
	public static final String UNAME = "uname";
	public static final String PHONE = "phone";
	public static final String IS_HOT = "isHot";
	public static final String CID = "cid";

	// 修改房屋信息方法:
	public void update(House persistentInstance) {
		log.debug("updating House instance");
		try {
			getSession().update(persistentInstance);
			getSession().flush();
            getSession().beginTransaction().commit();
			getSession().close();
			log.debug("uhdate successful");
		} catch (RuntimeException re) {
			log.error("uhdate failed", re);
			throw re;
		}
	}
	
	// 保存房屋信息方法:
	public void save(House transientInstance) {
		log.debug("saving House instance");
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

	// 删除房屋信息方法:
	public void delete(House persistentInstance) {
		log.debug("deleting House instance");
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


	public House findByHid(java.lang.Integer aid) {
		log.debug("getting House instance with id: " + aid);
		try {
			House instance = (House) getSession().get("com.house.uuhouse.vo.House", aid);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(House instance) {
		log.debug("finding House instance by example");
		try {
			List results = getSession().createCriteria("com.house.uuhouse.vo.House").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding House instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from House as model where model." + propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all House instances");
		try {
			String queryString = "from House";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public House merge(House detachedInstance) {
		log.debug("merging House instance");
		try {
			House result = (House) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(House instance) {
		log.debug("attaching dirty House instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(House instance) {
		log.debug("attaching clean House instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	//热门商品查询
	public List<House> findHot() {
		String hql = "from House where is_hot = 1";
		Query query = getSession().createQuery(hql);
		return query.list();
	}

	// 最新房屋的查询
	public List<House> findNew() {
		return findByPage(0, 4);
	}
	
	// 根据房屋ID查询房屋房屋列表信息
	public List<House> findByHid() {
		String hql = "from House order by hid";
		Query query = getSession().createQuery(hql);
		return query.list();
	}

	// 统计房屋信息数的方法
	public int findCount() {
		String hql = "select count(*) from House";
		Query query = getSession().createQuery(hql);
		int count = (new Integer(query.uniqueResult().toString())).intValue();  
		
		if(query.list() != null && query.list().size() != 0) {
			return count;
		}
		return 0;
	}

	// 查询一页中房屋信息的方法
	public List<House> findByPage(int begin, int limit) {
		String hql = "from House";
		Query query = getSession().createQuery(hql);
		query.setFirstResult(begin);
		query.setMaxResults(limit);
		
		return query.list();
	}

	public List<House> findByArea(String village, String stretch) {
		String hql = "from House where village = '" + village + "'and stretch = '" + stretch + "'";
		Query query = getSession().createQuery(hql);
		
		return query.list();
	}

	public House findByEndHid() {
		String hql = "from House order by hdate desc";
		Query query = getSession().createQuery(hql);
		if(query.list() != null && query.list().size() > 0) {
			return (House) query.list().get(0);
		}
		else {
			return null;
		}
	}

	public List<House> findByProperty(Integer price1, Integer price2, Integer area1, Integer area2, List<String> villages2, String layout2) {
		StringBuffer sql=new StringBuffer("from House  where 1=1 "); 
		if(villages2!=null){
			sql.append(" and village in (");
		for (String village : villages2) {
			sql.append("'"+village+"',");
		}
		sql.append("' ')");
		}
		if(price1!=price2 && price1!=-1){
			sql.append(" and countprice between "+price1+" and " +price2);
		}
		if(area1!=area2&&area1!=-1){
			sql.append(" and area between "+area1+" and " +area2);
		}
		if(!"".equals(layout2)){
			sql.append(" and layout like '%"+layout2+"%' ");
		}
		
		System.out.println(sql);
		Query query = getSession().createQuery(sql.toString());
//		List <Object []> result  = query.list();
		
		
		return query.list();
	}

	public List<House> findBuy() {
		String hql = "from House where kind = '求购'" ;
		Query query = getSession().createQuery(hql);
		
		return query.list();
	}

	public List<House> findHouse(String search_keyword) {
		String hql = "from House where village like '%" + search_keyword + "%' or areas like '%" + search_keyword + "%' or title like '%" + search_keyword + "%' or address like '%" + search_keyword + "%' or description like '%" + search_keyword + "%' " ;
		Query query = getSession().createQuery(hql);
		/*
		 * or htype like '%" + search_keyword + "%' or identify like '%" + search_keyword + "%' or layout like '%" + search_keyword + "%' or title like '%" + search_keyword + "%' or areas like '%" + search_keyword + "%' or floor like '%" + search_keyword + "%' or untiprice like '%" + search_keyword + "%' or area like '%" 
			+ "%' or countprice like '%" + search_keyword + "%' or village like '%" + search_keyword + "%' or stretch like '%" + search_keyword + "%' or address like '%" + search_keyword + "%' or cx like '%" + search_keyword + "%' or htime like '%" + search_keyword + "%' or propertyRight like '%" + search_keyword + "%' or elevator like '%" + search_keyword + "%' or decorate like '%" 
				+ search_keyword + "%' or description like '%" + search_keyword + "%' or feature like '%"  + search_keyword + "%' 
		 */
		return query.list();
	}
}