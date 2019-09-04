package com.spiderblog.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.spiderblog.bean.Blog;
import com.spiderblog.bean.Review;
import com.spiderblog.bean.UserInfo;


public class ManageReview {
	
	private List<Review> reviews=new ArrayList<Review>(); 
	private Statement stmt = null;
	private Connection conn = null;
	private ResultSet rs = null;
	private PreparedStatement pstmt = null;

	public ManageReview(Connection conn) {
		// TODO Auto-generated constructor stub
		this.conn = conn;
	}
	
	public void insertReview(Review review){
	       try {
	            String sql;
	            //TODO 待完善,最好用pstmt的方式插入
	            sql = "Insert into Review() values('";
	            stmt.execute(sql);
	            close();
	       }catch (SQLException e) {
			// TODO: handle exception
	    	   System.out.println(e.getMessage());
		}

	}
	
	public List<Review> getReview(int bid){
	       try {

	            String sql;
	            
	            // TODO 待完善
	            sql = "SELECT * FROM Review";
	            ResultSet rs =  stmt.executeQuery(sql);

	            // 展开结果集数据库
	            while(rs.next()){
	            	//创建Review对象
	            	Review review = new Review();

	            	
	            	review.setRid(rs.getInt(0));
	            	review.setBlog((Blog)rs.getObject(1));
	            	review.setReviewer((UserInfo)rs.getObject(2));
	            	review.setEvaluate(rs.getInt(3));
	            	review.setContent(rs.getString(4));
	            	review.setAddtime(rs.getString(5));
	            	review.setState(rs.getInt(6));
	            	
	                // 通过字段检索
	                reviews.add(review);
	            }
	        	
	            close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	       return this.reviews;
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
