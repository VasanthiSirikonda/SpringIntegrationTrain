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
public class HomeController {
	@RequestMapping("/home")
	public String display()
	{
		return "home";
	}
	@RequestMapping("/traindetails")
	public String login1()
	{
		return "traindetails";
	}
}
