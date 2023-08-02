package com.f.diary.member;

public class MemberVO {

	
	
	private String m_id;
	private String m_pass;
	private String m_email;
	private String m_name;
	private String m_nic;
	private int m_onoff;
	private String m_pic;
	private String m_phone;
	
	

	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pass() {
		return m_pass;
	}
	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_nic() {
		return m_nic;
	}
	public void setM_nic(String m_nic) {
		this.m_nic = m_nic;
	}
	public int getM_onoff() {
		return m_onoff;
	}
	public void setM_onoff(int m_onoff) {
		this.m_onoff = m_onoff;
	}
	public String getM_pic() {
		return m_pic;
	}
	public void setM_pic(String m_pic) {
		this.m_pic = m_pic;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	@Override
	public String toString() {
		return "MemberVO [m_id=" + m_id + ", m_pass=" + m_pass + ", m_email=" + m_email
				+ ", m_name=" + m_name + ", m_nic=" + m_nic + ", m_onoff=" + m_onoff + ", m_pic=" + m_pic + ", m_phone="
				+ m_phone + "]";
	}
}
