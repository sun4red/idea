package member;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
private static MemberDAO instance = new MemberDAO();

public static MemberDAO getInstance(){
	return instance;
}
private Connection getConnection() throws Exception {

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

	con = getConnection();
	
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



}

