package com.house.uuhouse.dao;

import java.util.Date;
import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.house.hibernate.BaseHibernateDAO;
import com.house.uuhouse.vo.House;

/**
 * 房屋持久层代码
 */
public class HouseDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(HouseDAO.class);
	// property constants
	public static final String HTYPE = "htype";
	public static final String LAYOUT = "layout";
	public static final String TITLE = "title";
	public static final String UNTIPRICE = "untiprice";
	public static final String AREA = "area";
	public static final String COUNTPRICE = "countprice";
	public static final String PROVINCE = "province";
	public static final String CITY = "city";
	public static final String VILLAGE = "village";
	public static final String ADDRESS = "address";
	public static final String FLOOR = "floor";
	public static final String HTIME = "htime";
	public static final String HPHOTO = "hphoto";
	public static final String DESCRIPTION = "description";
	public static final String IS_HOT = "isHot";
	public static final String HSTATE = "hstate";
	public static final String UID = "uid";
	public static final String UNAME = "uname";
	public static final String PHONE = "phone";

	public void update(House house) {
		getSession().update(house);
        getSession().flush();
        getSession().beginTransaction().commit();
        getSession().close();
	}
	
	public void save(House transientInstance) {
		log.debug("saving House instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(House persistentInstance) {
		log.debug("deleting House instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	// 根据房屋ID查询
	public House findByHid(java.lang.Integer hid) {
		log.debug("getting House instance with hid: " + hid);
		try {
			House instance = (House) getSession().get("com.house.adminuser.vo.House", hid);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(House instance) {
		log.debug("finding House instance by example");
		try {
			List results = getSession().createCriteria("com.house.adminuser.vo.House").add(Example.create(instance))
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

	public List findByHtype(Object htype) {
		return findByProperty(HTYPE, htype);
	}

	public List findByLayout(Object layout) {
		return findByProperty(LAYOUT, layout);
	}

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByUntiprice(Object untiprice) {
		return findByProperty(UNTIPRICE, untiprice);
	}

	public List findByArea(Object area) {
		return findByProperty(AREA, area);
	}

	public List findByCountprice(Object countprice) {
		return findByProperty(COUNTPRICE, countprice);
	}

	public List findByProvince(Object province) {
		return findByProperty(PROVINCE, province);
	}

	public List findByCity(Object city) {
		return findByProperty(CITY, city);
	}

	public List findByVillage(Object village) {
		return findByProperty(VILLAGE, village);
	}

	public List findByAddress(Object address) {
		return findByProperty(ADDRESS, address);
	}

	public List findByFloor(Object floor) {
		return findByProperty(FLOOR, floor);
	}

	public List findByHtime(Object htime) {
		return findByProperty(HTIME, htime);
	}

	public List findByHphoto(Object hphoto) {
		return findByProperty(HPHOTO, hphoto);
	}

	public List findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List findByIsHot(Object isHot) {
		return findByProperty(IS_HOT, isHot);
	}

	public List findByHstate(Object hstate) {
		return findByProperty(HSTATE, hstate);
	}

	public List findByUid(Object uid) {
		return findByProperty(UID, uid);
	}

	public List findByUname(Object uname) {
		return findByProperty(UNAME, uname);
	}

	public List findByPhone(Object phone) {
		return findByProperty(PHONE, phone);
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

	// 首页上热门房屋查询
	public List<House> findHot() {
		
		// 使用离线条件查询.
		DetachedCriteria criteria = DetachedCriteria.forClass(House.class);
		// 查询热门的商品,条件就是is_host = 1
		criteria.add(Restrictions.eq("is_hot", 1));
		// 倒序排序输出:
		criteria.addOrder(Order.desc("hdate"));
		// 执行查询:
		/*********************************具体方法不会转化********************************/
		/* getHibernateTemplate().findByCriteria(criteria)可以查询不需要分页的数据，

			getHibernateTemplate().findByCriteria(criteria, firstResult, maxResults)可以用来查询需要的分页的属性，*/
		
		// 执行查询:
		/*
	 	List<House> list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);
		return list;
		*/
		return null;
	}
	
	// 首页上最新房屋信息的查询
	public List<House> findNew() {
		// 使用离线条件查询:
		DetachedCriteria criteria = DetachedCriteria.forClass(House.class);
		// 按日期进行倒序排序:
		criteria.addOrder(Order.desc("hdate"));
		// 执行查询:
		/*
	 	List<House> list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);
		return list;
		*/
		return null;
	}

	// 根据分类id查询房屋的个数
	public int findCountCid(Integer cid) {
		String hql = "select count(*) from House h where h.category.cid = ?";
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		return 0;
	}
	
	// 根据分类id查询商品的集合
	public List<House> findByPageCid(Integer cid, int begin, int limit) {
	/*	    // select p.* from category c,categorysecond cs,product p where c.cid = cs.cid and cs.csid = p.csid and c.cid = 2
			// select p from Category c,CategorySecond cs,Product p where c.cid = cs.category.cid and cs.csid = p.categorySecond.csid and c.cid = ?
			String hql = "select p from Product p join p.categorySecond cs join cs.category c where c.cid = ?";
			// 分页另一种写法:
			List<House> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, new Object[]{cid}, begin, limit));
			if(list != null && list.size() > 0){
				return list;
			}
	*/
			return null;
			
		}

	// 后台统计商品个数的方法
	public int findCount() {
		String hql = "select count(*) from House";
		Query query = getSession().createQuery(hql);	
		if(query.list().size()!=0) {
			return ((Integer) query.list().get(0)).intValue();
		}
		return 0;
	}

	public List<House> findByPage(int begin, int limit) {
		String hql = "from House order by hdate desc";
		/*List<House> list =  this.getHibernateTemplate().execute(new PageHibernateCallback<House>(hql, null, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}*/
		return null;
	}
}