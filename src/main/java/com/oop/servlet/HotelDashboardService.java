package com.oop.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Hotel;



public class HotelDashboardService {
	private String jdbcURL = "jdbc:mysql://localhost:3306/hotel";
	private String jdbcUsername = "root";
	private String jdbcPassword = "minindu@123";
	
	private static final String SELECT_ALL_CUSTOMER = "select * from hotel";
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
			//select order
			public List<Hotel> selectAllOrder() {
				List<Hotel> order = new ArrayList<>();
					
				try (Connection connection = getConnection();
						PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);){
					System.out.println(preparedStatement);
						
					ResultSet rs = preparedStatement.executeQuery();
						
					while (rs.next()) {
						int id = rs.getInt("HID");
						String item = rs.getString("Name");
						String qty = rs.getString("Address");
						String name = rs.getString("Phone");
						String address = rs.getString("OwnerName");
						String code = rs.getString("HType");
						String price = rs.getString("Price");
						order.add(new Hotel(id, item, qty, name, address, code, price));
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
				return order;
			}
			
}