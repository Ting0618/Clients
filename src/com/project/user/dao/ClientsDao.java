package com.project.user.dao;

import java.util.List;

import com.project.bean.ClientsBean;

public interface ClientsDao {
	public List<ClientsBean> show();
	public boolean saveClient(ClientsBean client);
	public List<ClientsBean> qianding(int status);
	public List<ClientsBean> select(String select);
}
