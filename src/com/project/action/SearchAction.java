package com.project.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.project.bean.ClientsBean;
import com.project.serviseImpl.ClientsServiseImpl;

@Controller
public class SearchAction extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Map<String, Object> session;
	private int status;
	private String select;
	@Resource
	ClientsServiseImpl cliens;
	
	
	public String searQianding(){
//		System.out.println("searQianding");
//		System.out.println(client.getStatus());
//		System.out.println(status);
		
		List<ClientsBean> clientList = cliens.qianding(status);
	//	System.out.println("listqian.get(0)  "+clientList.get(0));
		session.put("clientList", clientList);
		
	//	System.out.println("error");
		return "success";
	}
	
	//在结果中查询时使用的方法
	public String sinall(){
	//	System.out.println("select " + select);
		List<ClientsBean> clientList = cliens.select(select);
		session.put("clientList", clientList);
		return "success";
	}
	
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		this.select = select;
	}
	
}
