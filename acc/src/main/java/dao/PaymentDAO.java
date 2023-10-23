package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.PaymentDTO;

public class PaymentDAO {

	private static PaymentDAO instance = new PaymentDAO();

	public static PaymentDAO getInstance() {
		return instance;
	}

	private Connection getConnect() throws Exception {

		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysqlDB");
		return ds.getConnection();

	}

	public int recieptIn(PaymentDTO payment) {
		int result = 0;

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = getConnect();
			String sql = "insert into payment values(?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, payment.getMember());
			pstmt.setDouble(2, payment.getAmount());
			pstmt.setString(3, payment.getItem());
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
				if (pstmt != null)
					pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		return result;
	}

	public List<PaymentDTO> getPaymentList() {
		List<PaymentDTO> list = new ArrayList<PaymentDTO>();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			con = getConnect();
			String sql = "select * from payment";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				PaymentDTO po = new PaymentDTO();
				po.setMember(rs.getString("member"));
				po.setAmount(rs.getDouble("amount"));
				po.setItem(rs.getString("item"));

				list.add(po);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
				if (pstmt != null)
					pstmt.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return list;
	}

}
