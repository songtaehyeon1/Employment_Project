package com.itzProject.home.askProject;

public class PagingVO {
	private int pageNum=1;//����������
	private int onePageRecord=5;//���������� ����� ���ڵ� ��
	private int totalRecord;//�ѷ��ڵ��
	private int totalPage;//�� ��������
	private int startPage=1;//���������� ��ȣ
	private int onePageCount=5;//�ѹ��� ����� ��������
	private int lastPageRecord=onePageRecord;//�������������� �����ִ� �Խù� ��
	//�˻���, �˻�Ű�� ����
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
		System.out.println("�ʱ� ������ �ѹ�"+pageNum);
		startPage = (((pageNum)-1)/onePageCount)*onePageCount+1;
		System.out.println("��ŸƮ�������ѹ�"+startPage);
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
		//�������� ��
		totalPage = (int)Math.ceil(totalRecord/(double)onePageRecord);
		System.out.println("���������� ="+totalPage);
		//�������������� ���ڵ� ��
		
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
