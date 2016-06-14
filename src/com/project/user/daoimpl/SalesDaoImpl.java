package com.project.user.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.project.bean.SalesBean;
import com.project.user.dao.SalesDao;
import com.project.util.Jdbc;

@Repository("salesDaoImpl")
public class SalesDaoImpl implements SalesDao{

	public List<SalesBean> showSales(){
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<SalesBean> allSales=new ArrayList<SalesBean>();
		try {
			con = (Connection) Jdbc.getInstance().getCon();
			String sql ="select * from sales";
			pst = (PreparedStatement) con.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				SalesBean sale = new SalesBean();
				sale.setId(rs.getInt("id"));
				sale.setName(rs.getString("name"));
				allSales.add(sale);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Jdbc.getInstance().closeAll(con, pst, rs);
		return allSales;
	}
}
