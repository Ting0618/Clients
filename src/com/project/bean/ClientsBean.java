package com.project.bean;

import java.util.Date;

public class ClientsBean {

	private String name;
	private int id;
	private int source;
	private int status;
	private int sales;
	private Date statime;
	private Date pretime;
	private double premoney;
	private String adress;
	private String contact;
	private String remark;
	private String attachment;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSource() {
		return source;
	}
	public void setSource(int source) {
		this.source = source;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public Date getStatime() {
		return statime;
	}
	public void setStatime(Date statime) {
		this.statime = statime;
	}
	public Date getPretime() {
		return pretime;
	}
	public void setPretime(Date pretime) {
		this.pretime = pretime;
	}
	public double getPremoney() {
		return premoney;
	}
	public void setPremoney(double premoney) {
		this.premoney = premoney;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getAttachment() {
		return attachment;
	}
	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}
	
	
}
