package com.spiderblog.util;

import java.io.BufferedReader; 
import java.io.IOException; 
import java.io.InputStream; 
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList; 
import java.util.List;

import com.spiderblog.bean.Blog;
import com.spiderblog.db.ManageBlogs;
import com.spiderblog.db.dbConnection;

  
public class SearchBlogs { 
   
	 private List<Blog> blogs = new ArrayList<Blog>();
	 
	//读取所有博客
	 public void readBlogTitles() 
	 { 
		 Connection conn;
		try {
			conn = new dbConnection().getConnection();
			 //获取所有博客
			 ManageBlogs mbBlogs = new ManageBlogs(conn);
			 blogs = mbBlogs.getAllBlogs();	 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 } 
	   
	 /*
	  * str 为用户输入的检索字段
	  */
	 public List<Blog> findBlogList(String str) 
	 { 
		 readBlogTitles();
		 List<Blog> result=new ArrayList<>();
		 for(Blog data:blogs) 
		  { 
			  //如果标题包含输入的全部字符，则加入结果集
			   if (strContain(data.getTitle(), str)) { 
				   result.add(data);
			   } 
		  }//for 
		 
		  return result; 
	 } 
	 
	 //判断s是否包含于f
	 public boolean strContain(String f,String s){
		    int n=0,m=0,total=0;
		    boolean flag=false;
		    while(n<f.length()&&m<s.length()){
		        if(f.charAt(n)==s.charAt(m)){
		            n=0;
		            m++;
		            total++;
		        }else{
		            n++;
		        }
		        if(total==s.length()){
		            flag=true;
		            break;
		        }
		    }
		    return flag;
		}
} 