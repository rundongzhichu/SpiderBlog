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
	 
	//��ȡ���в���
	 public void readBlogTitles() 
	 { 
		 Connection conn;
		try {
			conn = new dbConnection().getConnection();
			 //��ȡ���в���
			 ManageBlogs mbBlogs = new ManageBlogs(conn);
			 blogs = mbBlogs.getAllBlogs();	 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 } 
	   
	 /*
	  * str Ϊ�û�����ļ����ֶ�
	  */
	 public List<Blog> findBlogList(String str) 
	 { 
		 readBlogTitles();
		 List<Blog> result=new ArrayList<>();
		 for(Blog data:blogs) 
		  { 
			  //���������������ȫ���ַ������������
			   if (strContain(data.getTitle(), str)) { 
				   result.add(data);
			   } 
		  }//for 
		 
		  return result; 
	 } 
	 
	 //�ж�s�Ƿ������f
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