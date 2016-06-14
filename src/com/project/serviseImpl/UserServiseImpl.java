package com.project.serviseImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.bean.UserBean;
import com.project.servise.UserServise;
import com.project.user.daoimpl.UserDaoImpl;

@Service("userServiseImpl")
public class UserServiseImpl implements UserServise{
	@Autowired
	UserDaoImpl userd = new UserDaoImpl();
	//登陆需要的方法
	public UserBean login(UserBean userb){
		return userd.login(userb);
	}
	public UserBean check(UserBean userb){
		return userd.check(userb);
	}
	
	public UserDaoImpl getUserd() {
		return userd;
	}
	public void setUserd(UserDaoImpl userd) {
		this.userd = userd;
	}
	
	
	
	
}
