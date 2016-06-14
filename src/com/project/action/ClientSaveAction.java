package com.project.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.bean.ClientsBean;
import com.project.serviseImpl.ClientsServiseImpl;


public class ClientSaveAction {

	private ClientsBean client;
	private String sales;
	@Autowired
	ClientsServiseImpl cliens = new ClientsServiseImpl();
	
	public String save(){
		System.out.println("sales   "+sales);
		System.out.println("getSales   "+client.getSales());
		boolean b = cliens.saveClient(client);
		/*if(b){
			return "success";
		}else{
			return "error";
		}*/
		return null;
	}

	public ClientsBean getClient() {
		return client;
	}

	public void setClient(ClientsBean client) {
		this.client = client;
	}

	public ClientsServiseImpl getCliens() {
		return cliens;
	}

	public void setCliens(ClientsServiseImpl cliens) {
		this.cliens = cliens;
	}

	public String getSales() {
		return sales;
	}

	public void setSales(String sales) {
		this.sales = sales;
	}
	
	
	
}
