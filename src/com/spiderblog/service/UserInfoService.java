package com.spiderblog.service;

import com.spiderblog.bean.UserInfo;
import com.spiderblog.dao.UserInfoDao;
import com.spiderblog.db.UserInfoDaoImp;
import com.spiderblog.db.dbConnection;

public class UserInfoService implements UserInfoDao{
	private dbConnection dbconn = null;
	
	private UserInfoDao dao = null;
	
	public UserInfoService() throws Exception{
		this.dbconn = new dbConnection();
		this.dao = new UserInfoDaoImp(this.dbconn.getConnection());
	}
	
	public boolean addUser(UserInfo userInfo) throws Exception{
		boolean flag = false;
		if(userInfo != null && this.dao.queryByUname(userInfo.getUname())==null){
			flag = this.dao.addUser(userInfo);
		}
		return flag;
	}

	@Override
	public boolean editUpass(int userid, String upass) throws Exception {
		if(isInt(userid) && upass != null){
			return dao.editUpass(userid, upass);
		}
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(int userid) throws Exception {
		if(isInt(userid)){
			return dao.deleteUser(userid);
		}
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserInfo queryByUname(String uname) throws Exception {
		if(uname != null){
			return dao.queryByUname(uname);
		}
		// TODO Auto-generated method stub
		return null;
	}
	
	private boolean isInt(int index) {
		if(index == 0){
			return false;
		}
		String str = String.valueOf(index);
		// TODO Auto-generated method stub
		return str.matches("[0-9]+$");
	}
	
}
