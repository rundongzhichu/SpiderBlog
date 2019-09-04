package com.spiderblog.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spiderblog.bean.Blog;
import com.spiderblog.db.dbConnection;
import com.spiderblog.util.SearchBlogs;



/**
 * Servlet implementation class Research
 */
//@WebServlet("/ResearchServlet")
public class ResearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取前端提交的搜索文字,并进行转码
		String title = request.getParameter("searchtxt");
		String serchTxt=new String(title.getBytes("ISO-8859-1"),"UTF-8");
		//String str =  java.net.URLDecoder.decode(title, "utf-8");
		
		
		SearchBlogs sb = new SearchBlogs();
		List<Blog> blogs = new ArrayList<>();
		
		//开始搜索
		blogs = sb.findBlogList(serchTxt);
		
		//通过senssion传递数据
		HttpSession session = request.getSession();
		session.setAttribute("searchedBlogs", blogs);
		
		// TODO 还需要过滤数据然后用json或其他方式传给前端
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
