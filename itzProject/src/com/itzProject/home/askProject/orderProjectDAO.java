package com.itzProject.home.askProject;

import java.util.ArrayList;
import java.util.List;

import com.itzProject.home.DBConn;

public class orderProjectDAO extends DBConn implements orderProjectDAOService {

	public orderProjectDAO() {
	}

	public int orderProjectWrite(orderProjectVO vo) {
		int result =0;
		try {
			dbConn();
			sql = "insert into askProject(projectnumber,regdate,workfield,WORKPERIOD,"
					+ "minPrice,maxPrice,meeting,meetingplace,neededexp,projectdeadline,WORKMEMBER,"
					+ "workplace,workform,projectdescription,referenceurl,addedfile,projectname,"
					+ "workplacedetail,meetingplacedetail) "
					+ " values(c_seq.nextval, sysdate, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getWorkField());
			pstmt.setString(2, vo.getWorkPeriod());/////////////////////////////////
			pstmt.setString(3, vo.getMinPrice());
			pstmt.setString(4, vo.getMaxPrice());
			pstmt.setString(5, vo.getMeeting());
			pstmt.setString(6, vo.getMeetingPlace());
			pstmt.setString(7, vo.getNeededEXP());//////////////////////////////////
			pstmt.setString(8, vo.getProjectDeadline());
			pstmt.setString(9, vo.getNeededMember());
			pstmt.setString(10, vo.getWorkPlace());
			pstmt.setString(11, vo.getWorkForm());
			pstmt.setString(12, vo.getProjectDetail());
			pstmt.setString(13, vo.getUrlAddress());
			pstmt.setString(14, vo.getFileName());
			pstmt.setString(15, vo.getProjectName());
			pstmt.setString(16, vo.getWorkPlaceDetail());
			pstmt.setString(17, vo.getMeetingPlaceDetail());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("글 작성 오류"+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	public List<orderProjectVO> orderProjectList(PagingVO pageVO) {
		List<orderProjectVO> list = new ArrayList<orderProjectVO>();
		try {
			dbConn();
		    sql = "select * from "
				+ " (select * from "
				+ " (select projectNumber, corpname, projectname, workperiod,to_char(projectdeadline,'mm-dd') deadline, "
				+ "  to_char(regdate,'mm-dd'),hit,to_char(projectdeadline,'mm-dd'),workplace,neededexp,workform,workfield "
				+ " from askProject ";
		    	//검색어가 있을 때
		    	if(pageVO.getSearchKey()!=null&&pageVO.getSearchWord()!=null) {
		    		sql +=" where "+pageVO.getSearchKey()+" like '%"+pageVO.getSearchWord()+"%' ";
		    	}
			sql+= " order by projectnumber desc) "
				+ " where rownum<=? order by projectnumber asc) "
				+ " where rownum<=? order by projectnumber desc";
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pageVO.getPageNum()*pageVO.getOnePageRecord());//현재페이지 * 한페이지 출력할 레코드수 (pageNum*onePageRecord)
			if(pageVO.getPageNum()==pageVO.getTotalPage()) {
				pstmt.setInt(2, pageVO.getLastPageRecord());//마지막 페이지일때
			}else {
				pstmt.setInt(2, pageVO.getOnePageCount());//마지막 페이지가 아닐 때
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				orderProjectVO vo = new orderProjectVO();
				vo.setProjectNumber(rs.getInt(1));
				vo.setCorpName(rs.getString(2));
				vo.setProjectName(rs.getString(3));
				vo.setWorkPeriod(rs.getString(4));
				vo.setProjectDeadline(rs.getString(5));
				vo.setRegDate(rs.getString(6));
				vo.setHit(rs.getInt(7));
				vo.setDeadline(rs.getString(8));
				vo.setWorkPlace(rs.getString(9));
				vo.setNeededEXP(rs.getString(10));
				vo.setWorkForm(rs.getString(11));
				vo.setWorkField(rs.getString(12));
				list.add(vo);
			}
		}catch(Exception e) {
			System.out.println("게시판 리스트 선택 오류"+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}

	public void orderProjectSelect(orderProjectVO vo) {
		try {
			dbConn();
			sql = "select projectNumber, corpName, projectName,projectDescription, "
					+ " projectDeadline,workfield,workmember,neededexp,minprice,maxprice,"
					+ " workform,workplace,to_char(projectdeadline,'yyyy-mm-dd'),meeting,meetingplace,referenceurl,addedfile,workperiod "
					+ " ,meetingplacedetail,workplacedetail,hit from askProject where projectnumber=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getProjectNumber());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo.setProjectNumber(rs.getInt(1));
				vo.setCorpName(rs.getString(2));
				vo.setProjectName(rs.getString(3));
				vo.setProjectDetail(rs.getString(4));
				vo.setProjectDeadline(rs.getString(5));
				vo.setWorkField(rs.getString(6));
				vo.setNeededMember(rs.getString(7));
				vo.setNeededEXP(rs.getString(8));
				vo.setMinPrice(rs.getString(9));
				vo.setMaxPrice(rs.getString(10));
				vo.setWorkForm(rs.getString(11));
				vo.setWorkPlace(rs.getString(12));
				vo.setProjectDeadline(rs.getString(13));
				vo.setMeeting(rs.getString(14));
				vo.setMeetingPlace(rs.getString(15));
				vo.setUrlAddress(rs.getString(16));
				vo.setFileName(rs.getString(17));
				vo.setWorkPeriod(rs.getString(18));
				vo.setMeetingPlaceDetail(rs.getString(19));
				vo.setWorkPlaceDetail(rs.getString(20));
				vo.setHit(rs.getInt(21));
			}
		} catch (Exception e) {
			System.out.println("데이터 선택 실패" + e.getMessage());
			e.printStackTrace();
		} finally {
			dbClose();
		}
		System.out.println("hithithithit========>>>"+vo.getHit());
	}
	public int orderProjectUpdate(orderProjectVO vo) {
		int result = 0;
		try {
			dbConn();
			sql = "update askProject set projectname=?, projectdescription=? where projectnumber=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getProjectName());
			pstmt.setString(2, vo.getProjectDetail());
			pstmt.setInt(3, vo.getProjectNumber());
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("수정실패.."+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	public int orderProjectDelete(int no) {
		int result = 0;
		try {
			dbConn();
			sql = "delete from askproject where projectnumber=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("게시물 삭제 실패"+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	public void orderProjectHit(int no) {
		try {
			dbConn();
			sql = "update askproject set hit = hit+1 where projectnumber=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("조회수 읽어오기 에러"+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}	
		System.out.println(no);
	}
	
	//총 레코드 수!
	public int getTotalRecord(PagingVO pageVO) {
		int totalRecord = 0 ;
		try {
			dbConn();
			sql = "select count(projectnumber) from askProject ";
			if(pageVO.getSearchKey()!=null&&pageVO.getSearchWord()!=null) {
				sql += " where " +pageVO.getSearchKey()+" like '%"+pageVO.getSearchWord()+"%'";
			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalRecord= rs.getInt(1);
			}
			System.out.println("게시판 검색에 query문==>"+sql+"==>총 레코드수"+totalRecord);
		}catch(Exception e) {
			System.out.println("총 레코드 수 구하기 오류"+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return totalRecord;
	}
	
	//이전글, 다음글
	public LeadLagVO getLeadLagSelect(int no,PagingVO pVO) {
		LeadLagVO vo = new LeadLagVO();
		try {
			dbConn();
			sql = "select * from( "
					+ " select projectnumber, lead(projectnumber,1) over(order by projectnumber desc) leadNo,"
					+ " lead(projectname,1,'이전글') over(order by projectnumber desc) leadSubject,"
					+ " lag(projectnumber,1) over(order by projectnumber desc) lagNo,"
					+ " lag(projectname,1,'다음글') over(order by projectnumber desc) lagSubject from askProject";
					
				if(pVO.getSearchKey()!=null&&pVO.getSearchWord()!=null) {
					sql+=" where "+ pVO.getSearchKey() + " like ? ";
				}
					sql+= " ) where projectnumber=? ";
			
			pstmt = conn.prepareStatement(sql);
			//검색어가 있을때 없을때에 따라 ? 갯수가 달라지기때문에 조건문을 써줘야한다.
			if(pVO.getSearchKey()!=null&&pVO.getSearchWord()!=null) {
				pstmt.setString(1, "%"+pVO.getSearchWord()+"%");
				pstmt.setInt(2, no);
			}else {
				pstmt.setInt(1, no);
			}
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setLeadNo(rs.getInt(2));
				vo.setLeadSubject(rs.getString(3));
				vo.setLagNo(rs.getInt(4));
				vo.setLagSubject(rs.getString(5));
			}
		}catch(Exception e) {
			System.out.println("이전글, 다음글 에러 "+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return vo;
	}

	
}















