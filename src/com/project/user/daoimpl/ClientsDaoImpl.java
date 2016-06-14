package com.project.user.daoimpl;


import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.project.bean.ClientsBean;
import com.project.user.dao.ClientsDao;
import com.project.util.Jdbc;

@Repository("clientsDaoImpl")
public class ClientsDaoImpl implements ClientsDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	//查找出所有客户信息
	public List<ClientsBean> show(){
	//	System.out.println("ClientsDaoImpl show"); 
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<ClientsBean> allClient=new ArrayList<ClientsBean>();
	try {
		con = (Connection) Jdbc.getInstance().getCon();
		String sql ="select * from client";
		pst = (PreparedStatement) con.prepareStatement(sql);
		rs = pst.executeQuery();
		while (rs.next()) {
			ClientsBean cli = new ClientsBean();	//注意 要在这里new ClientsBean对象而不是在外面
			cli.setId(rs.getInt("id"));
			cli.setAdress(rs.getString("adress"));
			cli.setAttachment(rs.getString("attachment"));
			cli.setContact(rs.getString("contact"));
			cli.setName(rs.getString("name"));
			cli.setPremoney(rs.getDouble("premoney"));
			cli.setPretime(rs.getDate("pretime"));
			cli.setRemark(rs.getString("remark"));
			cli.setSales(rs.getInt("sales"));
			cli.setSource(rs.getInt("source"));
			cli.setStatime(rs.getDate("statime"));
			cli.setStatus(rs.getInt("status"));
			allClient.add(cli);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	Jdbc.getInstance().closeAll(con, pst, rs);
	 return allClient;
	}  
	
	//保存用户
	public boolean saveClient(ClientsBean client){
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		boolean b=false;
		try {
			System.out.println("save ");
			System.out.println("client.getSales() "+client.getSales());
			con = (Connection) Jdbc.getInstance().getCon();
			String sql ="insert into client(name,source,status,sales,statime,pretime,premoney,adress,contact,remark,attachment) values(?,?,?,?,?,?,?,?,?,?,?)";
			pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setString(1, client.getName());
			pst.setInt(2, client.getSource());
			pst.setInt(3, client.getStatus());
			pst.setInt(4, client.getSales());
			
			pst.setDate(5,new java.sql.Date(client.getStatime().getTime()));
			pst.setDate(6,new java.sql.Date(client.getPretime().getTime()));
			
			pst.setDouble(7, client.getPremoney());
			pst.setString(8, client.getAdress());
			pst.setString(9, client.getContact());
			pst.setString(10, client.getRemark());
			pst.setString(11, client.getAttachment());
			pst.executeUpdate();
			b=true;
			System.out.println("sava ok");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Jdbc.getInstance().closeAll(con, pst, rs); //关闭流
		return b;
	}
	//查询已经付款和 签订了的
	public List<ClientsBean> qianding(int status){

		//	System.out.println("ClientsDaoImpl  qianding"); 
			Connection con = null;
			PreparedStatement pst = null;
			ResultSet rs = null;
			List<ClientsBean> allClient=new ArrayList<ClientsBean>();
		try {
			con = (Connection) Jdbc.getInstance().getCon();
			String sql ="select * from client where status=?";
			pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setInt(1, status);
			rs = pst.executeQuery();
			while (rs.next()) {
				ClientsBean cli = new ClientsBean();	//注意 要在这里new ClientsBean对象而不是在外面
				cli.setId(rs.getInt("id"));
				cli.setAdress(rs.getString("adress"));
				cli.setAttachment(rs.getString("attachment"));
				cli.setContact(rs.getString("contact"));
				cli.setName(rs.getString("name"));
				cli.setPremoney(rs.getDouble("premoney"));
				cli.setPretime(rs.getDate("pretime"));
				cli.setRemark(rs.getString("remark"));
				cli.setSales(rs.getInt("sales"));
				cli.setSource(rs.getInt("source"));
				cli.setStatime(rs.getDate("statime"));
				cli.setStatus(rs.getInt("status"));
			//	System.out.println("cli "+cli);
				allClient.add(cli);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Jdbc.getInstance().closeAll(con, pst, rs);
		 return allClient;
		
		
	}
	
	
	//放大镜模糊查询那儿的
	public List<ClientsBean> select(String select) {


		//	System.out.println("ClientsDaoImpl  qianding"); 
			Connection con = null;
			PreparedStatement pst = null;
			ResultSet rs = null;
			List<ClientsBean> allClient=new ArrayList<ClientsBean>();
		try {
			con = (Connection) Jdbc.getInstance().getCon();
			String sql ="select * from client where name like %'+select+'%";
			pst = (PreparedStatement) con.prepareStatement(sql);
		//	pst.setString(1, select);
			rs = pst.executeQuery();
			while (rs.next()) {
				ClientsBean cli = new ClientsBean();	//注意 要在这里new ClientsBean对象而不是在外面
				cli.setId(rs.getInt("id"));
				cli.setAdress(rs.getString("adress"));
				cli.setAttachment(rs.getString("attachment"));
				cli.setContact(rs.getString("contact"));
				cli.setName(rs.getString("name"));
				cli.setPremoney(rs.getDouble("premoney"));
				cli.setPretime(rs.getDate("pretime"));
				cli.setRemark(rs.getString("remark"));
				cli.setSales(rs.getInt("sales"));
				cli.setSource(rs.getInt("source"));
				cli.setStatime(rs.getDate("statime"));
				cli.setStatus(rs.getInt("status"));
			//	System.out.println("cli "+cli);
				allClient.add(cli);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Jdbc.getInstance().closeAll(con, pst, rs);
		 return allClient;
		
		
	
	}

}
