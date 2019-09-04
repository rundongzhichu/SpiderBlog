package com.spiderblog.factory;

import com.spiderblog.dao.UserInfoDao;
import com.spiderblog.service.UserInfoService;

public class factoryDao {

	public static UserInfoDao getUserServiceInstance() throws Exception{
		return new UserInfoService();
	}
}
