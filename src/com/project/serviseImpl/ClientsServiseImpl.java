package com.project.serviseImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.bean.ClientsBean;
import com.project.servise.ClientsServise;
import com.project.user.daoimpl.ClientsDaoImpl;

@Service("clientsServiseImpl")
public class ClientsServiseImpl implements ClientsServise{

	@Autowired
	ClientsDaoImpl clientd = new ClientsDaoImpl();
	
	
	public List<ClientsBean> show(){
		return clientd.show();
	}
	public boolean saveClient(ClientsBean client){
		if(clientd.saveClient(client)){
			return true;
		}else
			return false;
	}
	public List<ClientsBean> qianding(int status){
	//	System.out.println("ClientsServiseImpl qianding");
		return clientd.qianding(status);
		
	}
	
	public List<ClientsBean> select(String select){
		return clientd.select(select);
	}
	
	public ClientsDaoImpl getClientd() {
		return clientd;
	}
	public void setClientd(ClientsDaoImpl clientd) {
		this.clientd = clientd;
	}
}
