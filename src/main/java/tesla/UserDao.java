package tesla;

import java.sql.*;

public class UserDao {

	Connection con = null;
	ResultSet rs = null;
	
	PreparedStatement pstmt =null;
	
	public UserDao(){
		try {
		String url ="jdbc:mysql://localhost:3306/tesla";
		String id ="root";
		String pw ="";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url,id,pw);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int join(User user) {
		
		String sql = "insert into teslauser(userID,userPassword,userEmail) VALUES(?,?,?)";
		try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getUserID());
		pstmt.setString(2, user.getUserPassword());
		pstmt.setString(3,user.getUserEmail());
		
		return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return 0;
		
	}
	
	
	public int login(String userID, String userPassword) { //로그인하는 내용을 디비로 보냄 
		String sql = "select userPassword from teslauser where userID = ?";
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword))
					return 1;
				else
					return 0;
		 	}
			return -1;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}

	
	
	
	
	
	
}
