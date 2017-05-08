package com.house.utils;

/*
 * 
 * 这是一个工具类，一般工具类不能被继承，所以定义成final
 * 
 * 不需要构造实例，用私有的构造方法
 *  单例模式或者用static静态代码块，
 *  本例用static，没有实例
 * */

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class JdbcUtils {
	/*普通的连接数据库,读取dbconfig.properties配置文件*/
	 private static final String dbconfig = "dbconfig.properties";
	    private static Properties prop = new Properties();
	    private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>();
	    
	    static {    
	        try {
	            InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream(dbconfig);
	            prop.load(in);
	            Class.forName(prop.getProperty("driver"));
	        } catch (Exception e) {
	            throw new RuntimeException(e);
	        }
	    }
	    public static Connection getConnection(){
	        try {
	            return DriverManager.getConnection(prop.getProperty("url"),prop.getProperty("username"),prop.getProperty("password"));
	        } catch (SQLException e) {
	            throw new RuntimeException(e);
	        }        
	    }
	    
	    //释放连接
	    public static void releaseConnection(Connection connection) throws SQLException {
	        Connection con = tl.get();
	        /*
	         * 判断它是不是事务专用，如果是，就不关闭！
	         * 如果不是事务专用，那么就要关闭！
	         */
	        // 如果con == null，说明现在没有事务，那么connection一定不是事务专用的！
	        if(con == null) connection.close();
	        // 如果con != null，说明有事务，那么需要判断参数连接是否与con相等，若不等，说明参数连接不是事务专用连接
	        if(con != connection) connection.close();
	    }
}  