package com.infinite.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infinite.ds.HikariDatasource;

@Controller
public class RegisterController {
	@RequestMapping("/register")
	public String display()
	{
		return "register";
	}
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String display(HttpServletRequest request,HttpServletResponse response){
		System.out.println("hgfhsfkjaf");
		String firstname  = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		int mobileno = Integer.parseInt(request.getParameter("mobileno"));
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		System.out.println(" this is register controller");
		Connection con = null;
		PreparedStatement ps =null;
		try{
			DataSource datasource= HikariDatasource.getDataSource();
			con=datasource.getConnection();
			System.out.println(" this is register controllerjnfoehfoajoakld");
			ps = con.prepareStatement("insert into trainregister values(?,?,?,?,?,?);");
			//statement to insert values
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
			ps.setInt(4, mobileno);
			ps.setString(5, password);
			ps.setString(6, gender);
			int x = ps.executeUpdate();
			System.out.println(" this is register controllerjnfoehfoajoaklhbfiauhfiau6879431287d");
			//condition for inserting values into table or not
			return "index1";//redirecting to success page
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally{
			try{
				con.rollback();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return "register";
	}
}
