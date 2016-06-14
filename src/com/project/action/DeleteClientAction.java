package com.project.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.project.bean.ClientsBean;

/*@Controller*/
public class DeleteClientAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;

	public String delete(){
		System.out.println(id);
		String i[] = id.split(",");
		System.out.println("delete  ");
		for(int j=0;j<i.length;j++){
			System.out.print(i[j]);
		}
		return null;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}	
}
