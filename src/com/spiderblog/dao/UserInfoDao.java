package com.spiderblog.dao;

import com.spiderblog.bean.UserInfo;

public interface UserInfoDao {
	
	public boolean addUser(UserInfo useriInfo) throws Exception;
	
	public boolean editUpass(int userid, String upass) throws Exception;
	
	public boolean deleteUser(int userid) throws Exception;
	
	public UserInfo queryByUname(String uname) throws Exception;
}
