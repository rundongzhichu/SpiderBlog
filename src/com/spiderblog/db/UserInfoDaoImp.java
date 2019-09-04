package com.spiderblog.db;

import com.spiderblog.bean.Admin;
import com.spiderblog.bean.UserInfo;
import com.spiderblog.dao.UserInfoDao;

import java.sql.*;
import java.util.List;

public class UserInfoDaoImp implements UserInfoDao {
	private  Connection conn = null;
	
	private PreparedStatement pstmt = null;
	
	public UserInfoDaoImp(Connection conn){
		this.conn = conn;
	}
	@Override
	public boolean addUser(UserInfo userInfo) throws Exception {
		pstmt = null;
		int result = 0;
		String sql = "insert into Admin(uname,upass,age,sex,state) values (?,?,?,?,1)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userInfo.getUname());
		pstmt.setString(2, userInfo.getUpass());
		pstmt.setInt(3, userInfo.getAge());
		pstmt.setString(4, userInfo.getSex());
		result = pstmt.executeUpdate();
		pstmt.close();
		if(result==0){
			return false;
		}
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean editUpass(int userid, String upass) throws Exception {
		pstmt = null;
		int result = 0;
		String sql = "update Admin set upass = ? where userid = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, upass);
		pstmt.setInt(2, userid);
		result = pstmt.executeUpdate();
		pstmt.close();
		if(result==0){
			return false;
		}
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean deleteUser(int userid) throws Exception {
		pstmt = null;
		int result = 0;
		String sql ="delete from UserInfo where userid = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, userid);
		result = pstmt.executeUpdate();
		pstmt.close();
		if(result==0){
			return false;
		}
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public UserInfo queryByUname(String uname) throws Exception {
		UserInfo userinfo = null;
		pstmt = null;
		ResultSet rs = null;
		String sql = "select * from Admin where uname = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uname);
		rs = pstmt.executeQuery();
		while(rs.next()){
			userinfo.setUserid(rs.getInt("userid"));
			userinfo.setUpass(rs.getString("upass"));
			userinfo.setState(rs.getInt("state"));
		}
		pstmt.close();
		rs.close();
		// TODO Auto-generated method stub
		return userinfo;
	}

}
