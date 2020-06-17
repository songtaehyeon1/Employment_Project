package com.itzProject.home.myhome;

import com.itzProject.home.DBConn;
import com.itzProject.home.corp.CorpVO;
import com.itzProject.home.person.PersonVO;

public class JobOfferDAO extends DBConn {
	public int recruiInsert(int corpno) {
		int result=0;
		try {
			dbConn();
			sql="insert into recrui(rno,corpno) values(RECRUI_SQ.nextval,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, corpno);
			pstmt.executeUpdate();
			sql="select RECRUI_SQ.currval from dual";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				result = rs.getInt(1);
			}
		
		} catch (Exception e) {
			System.out.println("recrui등록실패");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
	public int recruiDataInsert(int sq, RecruiVO vo) {
		int result = 0;
		try {
			dbConn();
			sql ="insert into qualifi_con(rno,qcacademicbackground,qcacdemicdetail,qcbeforegraduation,qcsalarytype,qcsalary,qcdescription,qcservicetype,qcworkdate,qcworktime,qcgender,qcage,qcage_start,qcage_end) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setString(2, vo.getQcacademicbackground());
			pstmt.setString(3, vo.getQcacdemicdetail());
			pstmt.setString(4, vo.getQcbeforegraduation());
			pstmt.setString(5, vo.getQcsalarytype());
			pstmt.setString(6, vo.getQcsalary());
			pstmt.setString(7, vo.getQcdescription());
			pstmt.setString(8, vo.getQcservicetype());
			pstmt.setString(9, vo.getQcworkdate());
			pstmt.setString(10, vo.getQcworktime());
			pstmt.setString(11, vo.getQcgender());
			pstmt.setString(12, vo.getQcage());
			pstmt.setInt(13, vo.getQcage_start());
			pstmt.setInt(14, vo.getQcage_end());
			result += pstmt.executeUpdate();
			
			sql="insert into recruit_pro(rno,rpjob,rptype,rpregisterdate_start,rpregisterdate_end,rpregisterway,rphomepage,rpfax,rpdocumentscreening,rpdocumentdate,rpprimaryinterview,rpprimaryinterviewdate,rpsecondaryinterview,rpsecondaryinterviewdate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setString(2, vo.getRpjob());
			pstmt.setString(3, vo.getRptype());
			pstmt.setString(4, vo.getRpregisterdate_start());
			pstmt.setString(5, vo.getRpregisterdate_end());
			pstmt.setString(6, vo.getRpregisterway());
			pstmt.setString(7, vo.getRphomepage());
			pstmt.setString(8, vo.getRpfax());
			pstmt.setString(9, vo.getRpdocumentscreening());
			pstmt.setString(10, vo.getRpdocumentdate());
			pstmt.setString(11, vo.getRpprimaryinterview());
			pstmt.setString(12, vo.getRpprimaryinterviewdate());
			pstmt.setString(13, vo.getRpsecondaryinterview());
			pstmt.setString(14, vo.getRpsecondaryinterviewdate());
			result += pstmt.executeUpdate();
			
			sql="insert into contact_infor(rno,cititle,ciname,citel,ciphone,ciemail,ciwa,cilogo,citelecommuting) values(?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setString(2, vo.getCititle());
			pstmt.setString(3, vo.getCiname());
			pstmt.setString(4, vo.getCitel());
			pstmt.setString(5, vo.getCiphone());
			pstmt.setString(6, vo.getCiemail());
			pstmt.setString(7, vo.getCiwa());
			pstmt.setString(8, vo.getCilogo());
			pstmt.setString(9, vo.getCitelecommuting());			
			result += pstmt.executeUpdate();
			
			sql="insert into recrui_field(rno,rfname,rfcount,rfcareerstatus,rfassignedtask,rfworkingdepartment,rfjobposition,rfpreferential) values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setString(2, vo.getRfname());
			pstmt.setInt(3, vo.getRfcount());
			pstmt.setString(4, vo.getRfcareerstatus());
			pstmt.setString(5, vo.getRfassignedtask());
			pstmt.setString(6, vo.getRfworkingdepartment());
			pstmt.setString(7, vo.getRfjobposition());
			pstmt.setString(8, vo.getRfpreferential());
			result += pstmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			System.out.println("채용 등록 실패");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		
		
		return result;
	}
	
	public void selectCorp(CorpVO vo) {
		try {
			dbConn();
			sql="select corpno,corp_email,corpcode,company_name,ceo_name,company_zipcode,company_addr1,company_addr2,job_category,choice_company,corp_charge,tel,corp_pwd,agree,joindate,corp_pic from corp where corpno =?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getCorp_no());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo.setCorp_no(rs.getInt(1));
				vo.setCorp_email(rs.getString(2));
				vo.setCorpcode(rs.getString(3));
				vo.setCompany_name(rs.getString(4));
				vo.setCeo_name(rs.getString(5));
				vo.setCompany_zipcode(rs.getString(6));
				vo.setCompany_addr1(rs.getString(7));
				vo.setCompany_addr2(rs.getString(8));
				vo.setJob_category(rs.getString(9));
				vo.setChoice_company(rs.getString(10));
				vo.setCorp_charge(rs.getString(11));
				vo.setTel(rs.getString(12));
				vo.setCorp_pwd(rs.getString(13));
				vo.setAgree(rs.getString(14));
				vo.setJoindate(rs.getString(15));
				vo.setCorp_pic(rs.getString(16));
			}
				
		} catch (Exception e) {
			System.out.println("기업선택 에러");
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	public int updatePic(int corpno,String filename) {
		int result = 0;
		try {
			dbConn();
			sql="update corp set corp_pic =? where corpno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, filename);
			pstmt.setInt(2, corpno);
			result= pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("사진명 저장 실패");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return result;
	}
	public String userPicChk(int corpno) {
		String result =null;
		try {
			dbConn();
			sql="select corp_pic from corp where corpno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, corpno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1) != null) {
				result = rs.getString(1);
				}
			}
			
		} catch (Exception e) {
			System.out.println("사진 체크 에러");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		
		return result;
	}
	
	public JobOfferDAO() {
		
	}

}
