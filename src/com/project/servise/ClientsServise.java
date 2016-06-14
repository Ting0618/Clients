package com.project.servise;

import java.util.List;

import com.project.bean.ClientsBean;

public interface ClientsServise {

	public List<ClientsBean> show();
	public boolean saveClient(ClientsBean client);
	public List<ClientsBean> qianding(int status);
	public List<ClientsBean> select(String select);
}
