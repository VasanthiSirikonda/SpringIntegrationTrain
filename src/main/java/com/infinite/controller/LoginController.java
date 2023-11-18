package com.infinite.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infinite.ds.HikariDatasource;
@Controller
public class LoginController {
	@RequestMapping("/login")
	public String login1()
	{
		return "login";
	}
Connection con = null;
	
	@RequestMapping(value="/loginvalues", method=RequestMethod.POST)
	
	public String login(HttpServletRequest request,HttpServletResponse response)
	{
		System.out.println("this is login control");
		
		try
		{
			System.out.println("this is login control56489");
			System.out.println("login control56489");
			String email = request.getParameter("email");
			String password= request.getParameter("password");
			DataSource datasource= HikariDatasource.getDataSource();
			con=datasource.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from trainregister where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2,password);
			ResultSet rs = ps.executeQuery();
			System.out.print("y");
			while (rs.next()) 
			{
				if (rs.getString(3).equals(email)) 
				{
					System.out.print("e");
					if (rs.getString(5).equals(password)) 
					{
						return "home";
					}
					else 
					{
						return "index1";
					}
				} 
				else 
				{
					return "index1";
				}
			}
		} 
		catch (SQLException e)
		{
			System.out.println(e);
		}
		catch (Exception e1) 
		{
			System.out.println(e1);
		}
		return "index1";
	}

}
