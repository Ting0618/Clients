package com.project.serviseImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.bean.SalesBean;
import com.project.servise.SaleService;
import com.project.user.daoimpl.SalesDaoImpl;

@Service("salesServiceImpl")
public class SalesServiceImpl implements SaleService{

	@Autowired
	SalesDaoImpl saledao = new SalesDaoImpl();
	
	public List<SalesBean> showSale(){
		return saledao.showSales();
	}
	
}
