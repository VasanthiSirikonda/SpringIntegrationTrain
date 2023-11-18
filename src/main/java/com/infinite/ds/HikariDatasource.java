package com.infinite.ds;

import javax.sql.DataSource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class HikariDatasource {
	private static DataSource datasource = null;
	public static DataSource getDataSource()
	{
		if (datasource == null)
		{
			HikariConfig config = new HikariConfig();
			config.setDriverClassName("com.mysql.cj.jdbc.Driver");
			config.setJdbcUrl("jdbc:mysql://localhost:3306/mvc");
			config.setUsername("root");
			config.setPassword("mysql123@");
			config.setMaximumPoolSize(10);
			config.setAutoCommit(false);
			config.addDataSourceProperty("cachePrepStmts", "true");
			config.addDataSourceProperty("prepStmtCacheSize", "250");
			config.addDataSourceProperty("prepStmtXacheSqlLimit", "2048");
			datasource = new HikariDataSource(config);
		}
		return datasource;
	}
}
