package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect_File 
{
	
	public static Connection getConnection() throws Exception{
	
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/project","root","root");
		return con;
		
	}
	
}
