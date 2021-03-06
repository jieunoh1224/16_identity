package com.identity.project.domain;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	private String m_id;
	private String m_name;
	private String m_nickname;
	private String m_original = "/default.png";
	private String m_file = "/default.png";
	private String m_password;
	private String m_mbti;
	private String m_phone;
	private int m_address_no;
	private String m_address;
	private String m_address_about;
	private String substate;
	private String subsdate;
	private int warn_count;
	private String subend;
	private int season;
	private MultipartFile uploadfile;
	
	
	public String getM_address_about() {
		return m_address_about;
	}
	public void setM_address_about(String m_address_about) {
		this.m_address_about = m_address_about;
	}
	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	public void setSubsdate(String subsdate) {
		this.subsdate = subsdate;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_nickname() {
		return m_nickname;
	}
	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}
	public String getM_original() {
		return m_original;
	}
	public void setM_original(String m_original) {
		this.m_original = m_original;
	}
	public String getM_file() {
		return m_file;
	}
	public void setM_file(String m_file) {
		this.m_file = m_file;
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getM_mbti() {
		return m_mbti;
	}
	public void setM_mbti(String m_mbti) {
		this.m_mbti = m_mbti;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public int getM_address_no() {
		return m_address_no;
	}
	public void setM_address_no(int m_address_no) {
		this.m_address_no = m_address_no;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
	public String getSubstate() {
		return substate;
	}
	public void setSubstate(String substate) {
		this.substate = substate;
	}
	public String getSubsdate() {
		return subsdate;
	}
	public int getWarn_count() {
		return warn_count;
	}
	public void setWarn_count(int warn_count) {
		this.warn_count = warn_count;
	}
	public String getSubend() {
		return subend;
	}
	public void setSubend(String subend) {
		this.subend = subend;
	}
	public int getSeason() {
		return season;
	}
	public void setSeason(int season) {
		this.season = season;
	}
	
}
