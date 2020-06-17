package com.itzProject.home.person;

import com.itzProject.home.DBConn;

public class PersonDAO extends DBConn {

	public PersonDAO() {
	}

	//이메일 주소(아이디) 중복검사	
	public int getIdCheck(String person_email) {
		int result = 0;
		try {
			dbConn();
			sql = "select count(person_email) from person where person_email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, person_email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
			if(result==0) {
				sql = "select count(corp_email) from corp where corp_email=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, person_email);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					result = rs.getInt(1);
				}
			}
		}catch(Exception e) {
			System.out.println("아이디 중복검사 에러 발생..." +e.getMessage());
		}finally {
			dbClose();
		}
		return result;
	}
	
	//개인회원 등록
	public int personInsert(PersonVO vo) {
		int cnt = 0;
		try {
			dbConn();
			sql = "insert into person(personno, person_email, pwd, name, to_char(birth, 'YYYY/mm/DD'), gender, tel, agree, joindate) values(member_sq.nextval, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPerson_email());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getBirth());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getTel());
			pstmt.setString(7, vo.getAgree());

			cnt = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	
	//개인회원 로그인
	public void personLogin(PersonVO vo) {
		try {
			dbConn();
			sql = "select name from person where person_email=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPerson_email());
			pstmt.setString(2, vo.getPwd());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setName(rs.getString(1));
				vo.setLogStatus("1");
			}else {
				vo.setLogStatus("0");
			}
		}catch(Exception e) {
			System.out.println("개인회원 로그인 에러 발생..." +e.getMessage());
		}finally {
			dbClose();
		}
	}
	
	//로그인 id에 해당하는 레코드 선택
	public void getPerson(PersonVO vo) {
		try {
			dbConn();
			sql = "select person_email, name, to_char(birth, 'YYYY/mm/DD'), gender, tel from person where person_email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPerson_email());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setPerson_email(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setBirth(rs.getString(3));
				vo.setGender(rs.getString(4));
				vo.setTel(rs.getString(5));	
			}
		}catch(Exception e) {
			System.out.println("회원선택 에러 발생..." +e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	
	//아이디 찾기
	public void personId(PersonVO vo) {
		try {
			dbConn();
			sql = "select person_email from person where name=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPwd());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setPerson_email(rs.getString(1));
			}
		}catch(Exception e) {
			System.out.println("아이디 찾기 에러 발생..." +e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	
	
	//회원정보 수정
	public int personUpdate(PersonVO vo) {
		int result = 0;
		try {
			dbConn();
			sql = "update person set pwd=?, birth=?, gender=? where person_email=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPwd());
			pstmt.setString(2, vo.getBirth());
			pstmt.setString(3, vo.getGender());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("회원정보 수정 에러 발생..." +e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
		
}
