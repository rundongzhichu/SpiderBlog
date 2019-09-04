package com.spiderblog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.spiderblog.bean.UserInfo;
import com.spiderblog.dao.UserInfoDao;
import com.spiderblog.factory.factoryDao;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String path = "注册/jsp";
		String message = "";
		try{
			if(register(uname,upass,sex,age)){
				message = "注册成功";
				path = "登录/jsp";
			}else{
				message = "注册失败，用户名已被使用";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
//		String truePath = request.getContextPath() + "/" + path;
//		PrintWriter out = response.getWriter();
//		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>注册</TITLE>");
//		out.println("<meta http-equiv=\"refresh\" content=\"5;url=" + truePath
//				+ "\">");
//		out.println("</HEAD>");
//		out.println("  <BODY>");
//		out.print("<div align=\"center\">");
//		out.print(message);
//		out.print("<br/>");
//		out.print("将自动跳转到相应页面");
//		out.print("<br/>");
//		out.print("或点击这里：");
//		out.print("<a href=\"" + truePath + "\"" + ">返回" + "</a>");
//		out.print("</div>");
//		out.println("  </BODY>");
//		out.println("</HTML>");
//		out.flush();
//		out.close();
	}
	
	public boolean register(String uname,String upass,String sex, String age) throws Exception{
		UserInfo userInfo = new UserInfo();
		userInfo.setUname(uname);
		userInfo.setUpass(upass);
		userInfo.setSex(sex);
		userInfo.setAge(Integer.parseInt(age));
		return factoryDao.getUserServiceInstance().addUser(userInfo);
	}

}
