package com.itzProject.home.askProject;

public class PagingVO {
	private int pageNum=1;//현재페이지
	private int onePageRecord=5;//한페이지에 출력할 레코드 수
	private int totalRecord;//총레코드수
	private int totalPage;//총 페이지수
	private int startPage=1;//시작페이지 번호
	private int onePageCount=5;//한번에 출력할 페이지수
	private int lastPageRecord=onePageRecord;//마지막페이지에 남아있는 게시물 수
	//검색어, 검색키를 저장
	private String searchKey;
	private String searchWord;
	public PagingVO() {
		// TODO Auto-generated constructor stub
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		System.out.println("초기 페이지 넘버"+pageNum);
		startPage = (((pageNum)-1)/onePageCount)*onePageCount+1;
		System.out.println("스타트페이지넘버"+startPage);
	}
	public int getOnePageRecord() {
		return onePageRecord;
	}
	public void setOnePageRecord(int onePageRecord) {
		this.onePageRecord = onePageRecord;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		//총페이지 수
		totalPage = (int)Math.ceil(totalRecord/(double)onePageRecord);
		System.out.println("총페이지수 ="+totalPage);
		//마지막페이지의 레코드 수
		
		if(totalRecord%onePageRecord==0) {
			lastPageRecord = onePageRecord;
		}else {
			lastPageRecord = totalRecord%onePageRecord;
		}
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getOnePageCount() {
		return onePageCount;
	}
	public void setOnePageCount(int onePageCount) {
		this.onePageCount = onePageCount;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public int getLastPageRecord() {
		return lastPageRecord;
	}
	public void setLastPageRecord(int lastPageRecord) {
		this.lastPageRecord = lastPageRecord;
	}
}
