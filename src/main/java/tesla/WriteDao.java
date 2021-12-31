package tesla;

import java.sql.*;
import java.util.*;

public class WriteDao {

	
	Connection con = null;
	ResultSet rs = null;
	
	
	int listNum = 10;
	
	int pageCount;
	
	
	public WriteDao() {
		try {
			String url ="jdbc:mysql://localhost:3306/tesla";
			String id ="root";
			String pw ="1234";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pw);
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	
	//날자를 sql에서 가져오는 메소드 
		public String getDate() {
			String sql = "select now()";
			try {
				PreparedStatement stmt = con.prepareStatement(sql);
				rs = stmt.executeQuery();
				if(rs.next()) {
					return rs.getString(1);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return "";
		}
		//count 다음의 숫자를 가져온다 
		public int getNext(){
			String sql = "select number from tesladata order by number desc";
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
		
		
		
		
	//게시글을 업로드 한다 
	public int upload(String userID , String title, String content) {
		try {
		String sql= "insert into tesladata values(?,?,?,?,?,?)";
		
		
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, getNext());
		stmt.setString(2,title);
		stmt.setString(3,content);
		stmt.setString(4, userID);
		stmt.setString(5, getDate());
		stmt.setInt(6, 1);
		
		int result = stmt.executeUpdate();
		
		return result;
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	
	//게시글의 리스트를 보여준다 
	public ArrayList<Write> show(int pageNum) {
		ArrayList<Write> arr = new ArrayList<Write>();
		
		
		try {
			String sql = "select number, title, userID, date from tesladata where ok = 1 order by number desc";
			PreparedStatement stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				Write write = new Write();
				write.setNumber(rs.getInt(1));
				write.setTitle(rs.getString(2));
				write.setUserID(rs.getString(3));
				write.setDate(rs.getString(4));
				arr.add(write);
				
				
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return arr;
	}
	
	
	public Write getWrite(int number) {
		Write write = new Write();
		try {
			String sql = "select userID, title, date, content from tesladata where number = ?";
			PreparedStatement stmt =con.prepareStatement(sql);
			stmt.setInt(1, number);
			
			
			int sum =0;
			
			rs =stmt.executeQuery();
			while(rs.next()) {
			if(sum <9) {
			write.setUserID(rs.getString(1));
			write.setTitle(rs.getString(2));
			write.setDate(rs.getString(3));
			write.setContent(rs.getString(4));
			sum++;
			}
			}
		return write;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	return null;
	}
	
	
	
	public ArrayList<Write> showContent(int number){
		ArrayList<Write> arr = new ArrayList<Write>();
		try {
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return arr;
		
	}

	//수정하기 눌러서 원본보여주기 
	public Write update(int number){
		Write write = new Write();
		
		try {
			String sql = "select title, content from tesladata where number =?";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, number);
			rs =stmt.executeQuery();
			
			while(rs.next()) {
			write.setTitle(rs.getString(1));
			write.setContent(rs.getString(2));
		
			}return write;
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	//수정해서 업데이트 
	public int correction(String title, String content, int number) {
		try {
			String sql = "update tesladata set title= ?, content = ? where number = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			System.out.println(title);
			System.out.println(content);
			System.out.println(number);
			stmt.setString(1,title);
			stmt.setString(2, content);
			stmt.setInt(3, number);
			
			int result = stmt.executeUpdate();
			
			return result;
		}catch(Exception e) {
		e.printStackTrace();
	}
		return 0;
	}
	
	
	
	public String confirm(int number) {
		try {
			String sql = "select userID from tesladata where number =? ";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, number);
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				String result = rs.getString(1);
				
				return result;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	
	//삭제 하는 메소드 
	public int delete(int number) {
		try {
			String sql = "update tesladata set ok = 0 where number = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, number);
			
			
			return stmt.executeUpdate();	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return -1;
	}
	
	
	
	
	int pageNum =0;
	
	//페이징 처리 메소드 
	public int page() {
		
		WriteDao writeDao = new WriteDao();
		
		 pageCount= writeDao.count();
		pageNum = pageCount%10 +1;
		
		return pageNum;
		
	}
	/*
	컬럼의 수/보여줄 게시글 수 나누기 +1
	for문으로 만들기(count++)
	
	2번을 누르면 컬럼 위에서 11번째부터 20번째까지 출력 
	3번을 누르면 컬럼 위에서 21번째부터 30번
	마지막while rs.next()
	*/
	
	
	
	
	
	/*
	 * 
	 * int listNum = 10;
	int firstPage =1;
	int lastPage;
	int count;
	*/
	
	
	//로우카운트
	public int count() {
		try {
		String sql = "select count(*) from tesladata where ok = 1";
		
		PreparedStatement stmt = con.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		while(rs.next()) {
			pageCount = rs.getInt(1);
		}
		
		
		return pageCount;
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	
}
