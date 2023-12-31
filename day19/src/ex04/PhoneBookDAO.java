package ex04;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class PhoneBookDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	private static PhoneBookDAO instance = new PhoneBookDAO();
	
	public static PhoneBookDAO getInstance() {
		return instance;
	}
	
	private PhoneBookDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		try {
			if(rs != null) 		rs.close();
			if(pstmt != null) 	pstmt.close();
			if(conn != null) 	conn.close();
		} catch (Exception e) {}
	}
	
	// 전체 전화번호 목록을 불러와서 리스트로 반환하는 함수
	public ArrayList<PhoneBookDTO> selectList() {
		ArrayList<PhoneBookDTO> list = new ArrayList<>();
		String sql = "select * from phonebook order by idx";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PhoneBookDTO dto = new PhoneBookDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setName(rs.getString("name"));
				dto.setPnum(rs.getString("pnum"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		return list;
	}

	public int insert(PhoneBookDTO dto) {
		int row = 0;
		String sql = "insert into phonebook (name, pnum) values (?, ?)";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPnum());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		return row;
	}

	public int delete(int i) {
		int row = 0;
		String sql = "delete phonebook where idx = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i);
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		return row;
	}
}










