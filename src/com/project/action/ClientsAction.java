package com.project.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.project.bean.ClientsBean;
import com.project.bean.SalesBean;
import com.project.serviseImpl.ClientsServiseImpl;
import com.project.serviseImpl.SalesServiceImpl;

@Controller
public class ClientsAction extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String, Object> session;
	private List<ClientsBean> clientList;
//	private List<SalesBean> saleList;
	@Autowired
	ClientsServiseImpl clients = new ClientsServiseImpl();
	@Autowired
	SalesServiceImpl sales = new SalesServiceImpl();
	
	//跳转到主页面以及显示所有用户的
	public String show(){
	//	System.out.println("show ");
		clientList=clients.show();
		/*List<SalesBean> saleList = sales.showSale();
		System.out.println(session);
		session.put("saleList", saleList);*/
		session.put("clientList", clientList);
		return "success";
	}
	
	
	public ClientsServiseImpl getClients() {
		return clients;
	}
	public void setClients(ClientsServiseImpl clients) {
		this.clients = clients;
	}

	public List<ClientsBean> getClientList() {
		return clientList;
	}
	public SalesServiceImpl getSales() {
		return sales;
	}


	public void setSales(SalesServiceImpl sales) {
		this.sales = sales;
	}


	public void setClientList(List<ClientsBean> clientList) {
		this.clientList = clientList;
	}
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
