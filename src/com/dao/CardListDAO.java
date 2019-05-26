package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.dto.CardListDTO;

public class CardListDAO {

	private DataSource dataFactory;
	
	// 싱글톤 패턴(lazy holder) https://jeong-pro.tistory.com/86 참고
	private CardListDAO() {
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
			
		}catch(NamingException e) {
			e.printStackTrace();
		}
	}
	
	private static class LazyHolder {
		public static final CardListDAO INSTANCE = new CardListDAO();
	}
	
	public static CardListDAO getInstance() {
		return LazyHolder.INSTANCE;
	}
	// 싱글톤 여기까지!
	
	// Decode string card numbers to int array
	public int[] decodeCardNum(String sCardNum)
	{
		String[] sCardNumArray = sCardNum.split(";");
		int[] cardNumArray = new int[sCardNumArray.length-1];
		
		for(int i = 0; i < cardNumArray.length; i++)
		{
			cardNumArray[i] = Integer.parseInt(sCardNumArray[i+1]);
		}
		
		return cardNumArray;
	}
	
	public String encodeCardNum(int[] cardNumArray)
	{
		String[] sCardNumArray = new String[cardNumArray.length+1];
		String sCardNum = ";";
		
		sCardNumArray[0] = "";
		for(int i = 0; i < sCardNumArray.length; i++)
		{
			sCardNumArray[i+1] = ""+cardNumArray[i];
		}
		
		sCardNum = String.join(";", sCardNumArray);
		
		return sCardNum;
	}
	// Decode string card no in int array end
	
	// 카드 리스트 추가
	public void insert(String title, int boardnum) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sCardNum = "";
		
		try {
			// 커넥션을 가져온다.
			con = dataFactory.getConnection();
			
			// 쿼리문
			String query = "insert into CardList (title, boardnum cardnums) values(?, ?, '')";
			
			pstmt = con.prepareStatement(query);
			
			// 쿼리문에 값 입력
			pstmt.setString(1, title);
			pstmt.setInt(2, boardnum);
			
			// 쿼리문 실행
			// pstmt.executeUpdate()는
			// Insert, update, delete, create, drop할때 사용 
			int n = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)pstmt.close();
				if(con != null)con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void insert(String title, int boardnum, int[] cardNumArray) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sCardNum = encodeCardNum(cardNumArray);
		
		try {
			// 커넥션을 가져온다.
			con = dataFactory.getConnection();
			
			// 쿼리문
			String query = "insert into CardList (title, boardnum, cardnums) values(?, ?, ?)";
			
			pstmt = con.prepareStatement(query);
			
			// 쿼리문에 값 입력
			pstmt.setString(1, title);
			pstmt.setInt(2, boardnum);
			pstmt.setString(3, sCardNum);
			
			// 쿼리문 실행
			// pstmt.executeUpdate()는
			// Insert, update, delete, create, drop할때 사용 
			int n = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)pstmt.close();
				if(con != null)con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 카드리스트에 카드 추가
	public void addCard(int cardNum){
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			// 커넥션을 가져온다.
			con = dataFactory.getConnection();
			
			// 쿼리문
			String query = "update CardList set cardnums = concat(cardnums,?)";
			
			pstmt = con.prepareStatement(query);
			
			// 쿼리문에 값 입력
			pstmt.setString(1, ";"+cardNum );
			
			// 쿼리문 실행
			// pstmt.executeUpdate()는
			// Insert, update, delete, create, drop할때 사용 
			int n = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)pstmt.close();
				if(con != null)con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 카드리스트에 카드 삭제
	public void deleteCard(int cardNum){
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			// 커넥션을 가져온다.
			con = dataFactory.getConnection();
			
			// 쿼리문
			String query = "update CardList set cardnums = replace(cardnums,?,'')";
			
			pstmt = con.prepareStatement(query);
			
			// 쿼리문에 값 입력
			pstmt.setString(1, ";"+cardNum );
			
			// 쿼리문 실행
			int n = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)pstmt.close();
				if(con != null)con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 카드 리스트 불러오기
	public CardListDTO retrieve(int cardListNum) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		CardListDTO dto = null;
		
		try {
			// 커넥션을 가져온다.
			con = dataFactory.getConnection();
			
			String query = "select * from CardList where num=?";
			
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, cardListNum);
			
			// pstmt.executeQuery()는
			// select 할때 사용
			rs = pstmt.executeQuery();
			
			if(rs.next()) { // 해당하는 카드리스트가 있는 경우
				
				String title = rs.getString("title");
				int boardnum = rs.getInt("boardnum");
				String sCardNum = rs.getString("cardnums");
				
				int[] cardNumArray = decodeCardNum(sCardNum);
				
				dto = new CardListDTO(cardListNum, title, boardnum, cardNumArray);
				
			}else { // 해당하는 카드리스트가 없음.
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)pstmt.close();
				if(con != null)con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return dto;
	}
}
