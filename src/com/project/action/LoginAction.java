package com.project.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.project.bean.ClientsBean;
import com.project.bean.SalesBean;
import com.project.bean.UserBean;
import com.project.serviseImpl.ClientsServiseImpl;
import com.project.serviseImpl.SalesServiceImpl;
import com.project.serviseImpl.UserServiseImpl;

@Controller
public class LoginAction extends ActionSupport implements RequestAware,SessionAware, Action{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String account;
	private String password;
	private Map<String, Object> request;
	private Map<String, Object> session;
	
	UserBean userb = new UserBean();
	@Autowired
	UserServiseImpl users = new UserServiseImpl();
	@Autowired
	SalesServiceImpl sales = new SalesServiceImpl();

	@Autowired
	ClientsServiseImpl clients = new ClientsServiseImpl();
	
	//判断能不能的登陆的
	public String login(){	
		userb.setAccount(account);
		userb.setPassword(password);
		UserBean user = users.login(userb);
		List<ClientsBean> clientList=clients.show();
		List<SalesBean> saleList = sales.showSale();
	//	System.out.println("LoginAction "+request);
	//	request.put("user", user);
		session.put("user", user);
		session.put("saleList", saleList);
		session.put("clientList", clientList);
		if(user!=null){
			return "success";
		}else{
			return "error";
		}		
	}
	
	public void validate(){
		if (getAccount() == null || getAccount().trim().equals(""))
		{
		//添加表单校验错误
		addFieldError("account", "user.required");
		}
		if (getPassword() == null || getPassword().trim().equals(""))
		{
		addFieldError("password", "pass.required");
		}
	}
	
	
	public void setRequest(Map<String,Object>request){
		this.request=request;
		}
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserBean getUserb() {
		return userb;
	}

	public void setUserb(UserBean userb) {
		this.userb = userb;
	}
	public UserServiseImpl getUsers() {
		return users;
	}
	public void setUsers(UserServiseImpl users) {
		this.users = users;
	}
	
}
