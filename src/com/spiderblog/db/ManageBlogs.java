package com.spiderblog.db;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.spiderblog.bean.Blog;
import com.spiderblog.bean.Kinds;
import com.spiderblog.bean.UserInfo;
import com.spiderblog.db.dbConnection;



public class ManageBlogs {
	private List<Blog> searchBlogs=new ArrayList<Blog>();  
	private Statement stmt = null;
	private Connection conn = null;
	private ResultSet rs = null;
	private PreparedStatement pstmt = null;
	
	public ManageBlogs(Connection conn){
		this.conn = conn;
	}
	
	
	public List<Blog> getAllBlogs() 
	 { 
       try {
    		// 执行 SQL 查询
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM Blog";
            ResultSet rs =  stmt.executeQuery(sql);

            // 展开结果集数据库
            while(rs.next()){
            	//创建Blog对象
            	Blog blog = new Blog();
            	
            	blog.setBid(rs.getInt(0));
            	blog.setWriter((UserInfo)rs.getObject(1));
            	blog.setKind((Kinds)rs.getObject(2));
            	blog.setTitle(rs.getString(3));
            	blog.setContent(rs.getString(4));
            	blog.setAddtime(rs.getString(5));
            	blog.setUp(rs.getInt(6));
            	blog.setDown(rs.getInt(7));
            	blog.setClick(rs.getInt(8));
            	blog.setState(rs.getInt(9));
                // 通过字段检索
                searchBlogs.add(blog);
            }
        	
            close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       return this.searchBlogs;
	 }
	
	public void insertBlog(Blog blog){
		// TODO 
		
	}
	
	public void updateBlog(Blog blog){
		// TODO
	}
	
	public void close() throws SQLException{
    	// 完成后关闭
		if(rs!=null){
			rs.close();
		}
		if(stmt!=null){
			stmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
	}
		
		
}
