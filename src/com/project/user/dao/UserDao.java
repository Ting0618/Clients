package com.project.user.dao;



import com.project.bean.UserBean;

public interface UserDao {

	public UserBean login(UserBean userb);//进行登陆
	public UserBean check(UserBean userb);//判断用户是否存在
}
