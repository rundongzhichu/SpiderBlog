package com.spiderblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.spiderblog.factory.factoryDao;
import com.spiderblog.dao.UserInfoDao;
import com.spiderblog.bean.UserInfo;
/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		UserInfo userInfo = null;
		String message = "";
		String path = "��¼/jsp";
		try{
			UserInfoDao dao = factoryDao.getUserServiceInstance();
			if((userInfo = dao.queryByUname(uname))!=null){
				if(userInfo.getUpass().equals(upass)){
					request.getSession().setAttribute("uname", uname);
					request.getSession().setAttribute("userid",String.valueOf(userInfo.getUserid()));
					path = "��ҳ/jsp";
				}else{
					message = "���벻��ȷ,����������";
				}
			}else{
				message = "�û��������ڣ�����������";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
//		String truePath = request.getContextPath() + "/" +path;
//		if("".equals(truePath)){
//			response.sendRedirect(truePath);
//		}else{
//			PrintWriter out = response.getWriter();
//			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//			out.println("<HTML>");
//			out.println("  <HEAD><TITLE>��¼����</TITLE>");
//			out.println("<meta http-equiv=\"refresh\" content=\"5;url="+ truePath + "\">");
//			out.println("</HEAD>");
//			out.println("  <BODY>");
//			out.print("<div align=\"center\">");
//			out.print(message);
//			out.print("<br/>");
//			out.print("���Զ���ת����¼ҳ��");
//			out.print("<br/>");
//			out.print("�������ﷵ�أ�");
//			out.print("<a href=\"" + truePath+"\"" +">��¼"+"</a>");
//			out.print("</div>");
//			out.println("  </BODY>");
//			out.println("</HTML>");
//			out.flush();
//			out.close();
//		}
	}

}
