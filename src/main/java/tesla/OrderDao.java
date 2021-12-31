package tesla;

import java.sql.*;
import java.util.*;

public class OrderDao {

	

	Connection con = null;
	ResultSet rs = null;
	
	
	
	public OrderDao(){
		try {
		String url ="jdbc:mysql://localhost:3306/tesla?serverTimezone=Asia/Seoul&useSSL=false";
		String id ="root";
		String pw ="1234";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url,id,pw);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getNext(){
		String sql = "select number from teslaorder order by number desc";
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	
	public int orderUpdate(String model,String moter,String color,String wheel,String sheet,
			String sheetNum , String userID) {
		
		try {
		String sql = "insert into teslaorder values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, getNext());
		stmt.setString(2, model);
		stmt.setString(3, moter);
		stmt.setString(4, color);
		stmt.setString(5, wheel);
		stmt.setString(6, sheet);
		stmt.setString(7, sheetNum);
		
		stmt.setString(8, userID);
		
		int result = stmt.executeUpdate();
		
		return result;
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return -1;
		
	}
	public ArrayList<Order> show(){
		try {
			String sql = "select * from teslaorder";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			
			rs= stmt.executeQuery();
			
		}catch(Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	
	
}
