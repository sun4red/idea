package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
private static MemberDAO instance = new MemberDAO();

public static MemberDAO getInstance(){
	return instance;
}
private Connection getConnect() throws Exception {

	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysqlDB");
	return ds.getConnection();
	
}

// 사용자 등록
public int insert(MemberDTO member) {
	int result = 0;
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	String sql = "";
	
	try {

	con = getConnect();
	
	sql = "insert into member values(?, ?)";
	
	pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, member.getName());
	pstmt.setString(2, member.getPw());
	
	result = pstmt.executeUpdate();
	
	}catch(Exception e){
	e.printStackTrace();
	}finally {
		try {
		if(con != null) con.close();
		if(pstmt != null) pstmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	return result;
}

// 사용자 확인 ( 로그인 )

public int pwCheck(MemberDTO member) {
	int result = 0;
	
	String name = "", pw = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		
		con = getConnect();
		
		String sql = "select * from member where name = ?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, member.getName());
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			name = rs.getString("name");
			pw = rs.getString("pw");
		}
		
		if(name == "") {
			result = -1;
		}else if(name != ""&& !pw.equals(member.getPw())) {
			result = -2;
		}else if(name != ""&& pw.equals(member.getPw())) {
			result = 1;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(rs != null)	rs.close();
			if(pstmt != null)	pstmt.close();
			if(con != null)	con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	return result;
}

// 중복 아이디 확인


public int nameCheck(String name) {
	int result = 0;
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		
		String exist_Name = "";

		con = getConnect();
		
		String sql = "select * from member where name = ?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			exist_Name = rs.getString("name");
		}
		
		if(name.equals(exist_Name)) {
			result = 1;
		}else if(exist_Name == "") {
			result = -1;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(rs != null)	rs.close();
			if(pstmt != null)	pstmt.close();
			if(con != null)	con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	return result;
}

}

