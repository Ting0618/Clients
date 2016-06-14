package com.project.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.project.bean.UserBean;
import com.project.serviseImpl.UserServiseImpl;

@Controller
public class CheckPassAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserBean userb = new UserBean();
	private String password;
	private String result;
	private String account;
	@Autowired
	UserServiseImpl users = new UserServiseImpl();

	public String execute() throws Exception{
		try{  
			System.out.println("lalalala");
			userb.setAccount(account);
			userb.setPassword(password);
			System.out.println(userb.getPassword());
            String responseText="";  
            HttpServletRequest request=ServletActionContext.getRequest();  
            password=request.getParameter("password");   
            System.out.println("---  "+password);  
            UserBean user = users.check(userb);//通过email查询数据库，判断邮箱是否已经被注册  
            if(user==null){    
                responseText="false";    
            }else{  
                responseText="true";  
            }  
            HttpServletResponse response=ServletActionContext.getResponse();      
            response.setContentType("text/html;charset=utf-8");   
            PrintWriter out=response.getWriter();    
            out.print(responseText);    
            out.flush();    
            out.close();    
        }catch(Exception e){  
            e.printStackTrace();  
        }  
        return "success";  
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}  
	public String getResult() {  
        return result;  
    }
	
}


