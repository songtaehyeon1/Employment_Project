package com.itzProject.home.askProject;

import java.util.List;

public interface orderProjectDAOService {
	//�� ���
	public List<orderProjectVO> orderProjectList(PagingVO pageVO);
	//������Ʈ ���� ���
	public int orderProjectWrite(orderProjectVO vo);
	//�� ����
	public void orderProjectSelect(orderProjectVO vo);
	//�� ����
	public int orderProjectUpdate(orderProjectVO vo);
	//�� ����
	public int orderProjectDelete(int no);
	//��ȸ��
	public void orderProjectHit(int no);
}
