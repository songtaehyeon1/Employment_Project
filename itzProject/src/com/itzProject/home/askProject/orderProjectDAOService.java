package com.itzProject.home.askProject;

import java.util.List;

public interface orderProjectDAOService {
	//글 목록
	public List<orderProjectVO> orderProjectList(PagingVO pageVO);
	//프로젝트 오더 등록
	public int orderProjectWrite(orderProjectVO vo);
	//글 선택
	public void orderProjectSelect(orderProjectVO vo);
	//글 수정
	public int orderProjectUpdate(orderProjectVO vo);
	//글 삭제
	public int orderProjectDelete(int no);
	//조회수
	public void orderProjectHit(int no);
}
