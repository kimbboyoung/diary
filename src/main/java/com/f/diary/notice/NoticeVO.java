package com.f.diary.notice;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVO {
	private int n_num;
	private String n_m_id;
	private String n_date;
	private String n_title;
	private String n_contents;
	private int n_onoff;
	private String n_pic;
	private String n_friendnums;
	
	private MultipartFile uploadFile;
	

	public int getN_num() {
		return n_num;
	}


	public void setN_num(int n_num) {
		this.n_num = n_num;
	}


	public String getN_m_id() {
		return n_m_id;
	}


	public void setN_m_id(String n_m_id) {
		this.n_m_id = n_m_id;
	}


	public String getN_date() {
		return n_date;
	}


	public void setN_date(String n_date) {
		this.n_date = n_date;
	}


	public String getN_title() {
		return n_title;
	}


	public void setN_title(String n_title) {
		this.n_title = n_title;
	}


	public String getN_contents() {
		return n_contents;
	}


	public void setN_contents(String n_contents) {
		this.n_contents = n_contents;
	}


	public int getN_onoff() {
		return n_onoff;
	}


	public void setN_onoff(int n_onoff) {
		this.n_onoff = n_onoff;
	}


	public String getN_pic() {
		return n_pic;
	}


	public void setN_pic(String n_pic) {
		this.n_pic = n_pic;
	}


	public String getN_friendnums() {
		return n_friendnums;
	}


	public void setN_friendnums(String n_friendnums) {
		this.n_friendnums = n_friendnums;
	}


	public MultipartFile getUploadFile() {
		return uploadFile;
	}


	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}


	@Override
	public String toString() {
		return "NoticeVO [n_num=" + n_num + ", n_m_id=" + n_m_id + ", n_date=" + n_date + ", n_title=" + n_title
				+ ", n_contents=" + n_contents + ", n_onoff=" + n_onoff + ", n_pic=" + n_pic + ", n_friendnums="
				+ n_friendnums + ", uploadFile=" + uploadFile + "]";
	}

	
	



	

}
