package com.identity.project.service;

import java.util.List;

import com.identity.project.domain.Deliver;
import com.identity.project.domain.Joinlist;
import com.identity.project.domain.Member;
import com.identity.project.domain.Suborder;
import com.identity.project.domain.Subscribe;
import com.identity.project.domain.Warn;

public interface AdminService {

	List<String> getBookISBN(String m_id);
	void SubBook(Subscribe sub);
	List<Joinlist> getList();
	List<Suborder> getOrderList();
	void SubOrder(String isbn);
	List<Subscribe> distinctSub();
	int getOrderTotal();
	int getOrderPrice();
	int orderUpdate();
	int deliveryUpdate();
	List<Subscribe> getM_id();
	void deliveryInsert(String m_id);
	List<Deliver> getDList();
	List<Member> getMemberList();
	int memberCount();
	int warnCount();
	int commentCount();
	int subCount();
	List<Warn> warnList();
}
