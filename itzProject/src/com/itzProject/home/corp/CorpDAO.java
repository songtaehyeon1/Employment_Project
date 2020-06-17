package com.itzProject.home.corp;

import com.itzProject.home.DBConn;
import com.itzProject.home.person.PersonVO;

public class CorpDAO extends DBConn {

	public CorpDAO() {
	}
	
	//아이디 중복검사
	public int getIdCheck(String corp_email) {
		int result = 0;
		try {
			dbConn();
			sql = "select count(corp_email) from corp where corp_email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, corp_email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
			if(result==0) {
				sql = "select count(person_email) from person where person_email=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, corp_email);
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
	
	//회원등록
		public int corpInsert(CorpVO vo) {
			int cnt = 0;
			try {
				dbConn();
				sql = "insert into corp(corp_no, corpcode, company_name, ceo_name, company_zipcode, company_addr1, company_addr2, job_category, choice_company, corp_charge, tel, corp_email, corp_pwd, agree) values(a_sq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getCorpcode());
				pstmt.setString(2, vo.getCompany_name());
				pstmt.setString(3, vo.getCeo_name());
				pstmt.setString(4, vo.getCompany_zipcode());
				pstmt.setString(5, vo.getCompany_addr1());
				pstmt.setString(6, vo.getCompany_addr2());
				pstmt.setString(7, vo.getJob_category());
				pstmt.setString(8, vo.getChoice_company());
				pstmt.setString(9, vo.getCorp_charge());
				pstmt.setString(10, vo.getTel());
				pstmt.setString(11, vo.getCorp_email());
				pstmt.setString(12, vo.getCorp_pwd());
				pstmt.setString(13, vo.getAgree());
	
				cnt = pstmt.executeUpdate();
				
			}catch(Exception e) {
				System.out.println("기업회원등록 에러 발생..." +e.getMessage());
			}finally {
				dbClose();
			}
			return cnt;
		}
		
		//로그인                          
		public void CorpLogin(CorpVO vo) {
			try {
				dbConn();
				sql =  "select company_name from corp where corp_email=? and corp_pwd=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getCorp_email());
				pstmt.setString(2, vo.getCorp_pwd());
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					vo.setCompany_name(rs.getString(1));
					vo.setLogStatus("2");
				}else {
					vo.setLogStatus("0");
				}
				
			}catch(Exception e) {
				System.out.println("로그인 에러 발생..." +e.getMessage());
			}finally {
				dbClose();
			}
		}
		
		//로그인 id에 해당하는 레코드 선택
		public void getCorp(CorpVO vo) {
			try {
				dbConn();
				sql = "select corp_email, corpcode, company_name, ceo_name, company_zipcode, company_addr1, company_addr2, job_category, choice_company, corp_charge, tel from corp where corp_email=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getCorp_email());
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					vo.setCorp_email(rs.getString(1));
					vo.setCorpcode(rs.getString(2));
					vo.setCompany_name(rs.getString(3));
					vo.setCeo_name(rs.getString(4));
					vo.setCompany_zipcode(rs.getString(5));
					vo.setCompany_addr1(rs.getString(6));
					vo.setCompany_addr2(rs.getString(7));
					vo.setJob_category(rs.getString(8));
					vo.setChoice_company(rs.getString(9));
					vo.setCorp_charge(rs.getString(10));
					vo.setTel(rs.getString(11));
				}
			}catch(Exception e) {
				System.out.println("회원선택 에러 발생..." +e.getMessage());
				e.printStackTrace();
			}finally {
				dbClose();
			}
		}
		
		//회원정보 수정
		public int CorpUpdate(CorpVO vo) {
			int result = 0;
			try {
				dbConn();
				sql = "update corp set corp_pwd=?, ceo_name=?, company_zipcode=?, company_addr1=?, company_addr2=?, job_category=?, choice_company=?, corp_charge=?, tel=? where corp_email=? and corp_pwd=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getCorp_pwd());
				pstmt.setString(2, vo.getCeo_name());
				pstmt.setString(3, vo.getCompany_zipcode());
				pstmt.setString(4, vo.getCompany_addr1());
				pstmt.setString(5, vo.getCompany_addr2());
				pstmt.setString(6, vo.getJob_category());
				pstmt.setString(7, vo.getChoice_company());
				pstmt.setString(8, vo.getCorp_charge());
				pstmt.setString(9, vo.getTel());
				
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
