package com.house.utils;

import java.sql.Connection;
import java.sql.SQLException;
 
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
/*
 * 
 * TxQueryRunner类是common-dbutils下QueryRunner的子类，是用来简化JDBC操作的，所以要导入common-dbutils的jar包。
 * TxQueryRunner底层是使用了JdbcUtils。可以使用JdbcUtils.getConnection()来获取连接。使用JdbcUtils.releaseConnection()来关闭连接。
 * 2.TxQueryRunner中的方法
 * TxQueryRunner主要涉及3个方法：
 * 1.update() -->insert、delete、update
 * 2.query()   -->select
 * 3.batch()  -->批处理
 */
public class TxQueryRunner extends QueryRunner{
     /**
       * 1.批处理
       */
      public int[]batch(String sql,Object[][] params)throws SQLException
      {
          //获取连接
          Connection con = JdbcUtils.getConnection();
          //操作
          int[] result = super.batch(con, sql, params);
          //释放连接
          JdbcUtils.releaseConnection(con);
          return result;
      }
      
      /**
       * 2.带有查询条件的query()方法。
       *  单行查询
       */
      @Override
      public <T> T query(String sql,ResultSetHandler<T> rsh,Object... params)
      throws SQLException
      {
          //获取连接
          Connection con = JdbcUtils.getConnection();
          //操作
          T  result = super.query(con, sql, rsh, params);
          //释放连接
          JdbcUtils.releaseConnection(con);
          return result;
      }
      
      /**
       * 3.多行查询
       */
      @Override
      public <T> T query(String sql,ResultSetHandler<T> rsh)
              throws SQLException
              {
                  //获取连接
                  Connection con = JdbcUtils.getConnection();
                  //操作
                  T  result = super.query(con, sql, rsh);
                  //释放连接
                  JdbcUtils.releaseConnection(con);
                  return result;
             }
      
      /**
       * 4.不带参数的update()
       */
      @Override
      public int update(String sql)throws SQLException
      {
          //获取连接
          Connection con = JdbcUtils.getConnection();
          //操作
          int result = super.update(con, sql);
          //释放连接
          JdbcUtils.releaseConnection(con);
          return result;
      }
      
      /**
       * 带有一个参数的uodate()
       */
      @Override
      public int update(String sql,Object param)throws SQLException
     {
          //获取连接
          Connection con = JdbcUtils.getConnection();
          //操作
          int result = super.update(con, sql, param);
          //释放连接
          JdbcUtils.releaseConnection(con);
          return result;
      }
      
      @Override
      public int update(String sql,Object... params)throws SQLException
      {
          //获取连接
          Connection con = JdbcUtils.getConnection();
          //操作
          int result = super.update(con, sql, params);
          //释放连接
          JdbcUtils.releaseConnection(con);
          return result;
      }
}
