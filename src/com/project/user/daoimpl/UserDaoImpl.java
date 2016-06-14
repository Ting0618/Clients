package com.project.user.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.bean.UserBean;
import com.project.user.dao.UserDao;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	//看能否登陆的
	public UserBean login(UserBean userb){
		UserBean user = check(userb);	 
		return  user;
	
	 
 }
 
 	//检查输入的账号是否存在   这种方法就当练习
	public UserBean check(UserBean userb){ 		
 		System.out.println("check getAccount "+userb.getAccount());
 		
        String sql="select * from user where account=? and password=? ";  
       List<UserBean> obj = new ArrayList<UserBean>();
       obj=jdbcTemplate.query(sql, new Object[]{userb.getAccount(),userb.getPassword()},new RowMapper<UserBean>(){
		
			public UserBean mapRow(ResultSet rs, int arg1) throws SQLException {
				UserBean u = new UserBean();
				u.setId(rs.getInt("id"));
				u.setPassword(rs.getString("password"));
				u.setName(rs.getString("name"));
				u.setAccount(rs.getString("account"));
				return u;
			}
		});
        System.out.println("check over");
        if(obj!=null && obj.size()>0){
        	return  obj.get(0);
        }else{
        	return null;
        }		
 	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
 	
 	
}
