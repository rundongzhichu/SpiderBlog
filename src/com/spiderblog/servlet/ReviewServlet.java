package com.spiderblog.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spiderblog.bean.Blog;
import com.spiderblog.bean.Review;
import com.spiderblog.bean.UserInfo;
import com.spiderblog.db.ManageReview;
import com.spiderblog.db.dbConnection;


/**
 * Servlet implementation class Review
 */
//@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO ��ȡǰ�˴���������
		
		int blogId=0;
		
		Connection conn = null;
		try {
			conn = new dbConnection().getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ManageReview mr= new ManageReview(conn);
		//��ȡ��Ӧ����id�ŵ�����
		List<Review> reviews  = mr.getReview(blogId);
		
		// TODO  ���������۴��ص�ǰ��
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO ��ȡǰ�˴����������ݣ�����review����Ȼ�����ڴ洢��jsonʵ�����ݽ���
		
		Blog blog;
		UserInfo reviewer;
		int evalute;
		String content;
		String addtime;
		int state;
	}
	
}
