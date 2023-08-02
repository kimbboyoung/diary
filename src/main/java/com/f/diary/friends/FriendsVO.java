package com.f.diary.friends;

public class FriendsVO {
	private int f_num;
	private int f_m_num;
	private String f_group;
	private int f_friendsnum;
	
	
	public int getF_num() {
		return f_num;
	}
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	public int getF_m_num() {
		return f_m_num;
	}
	public void setF_m_num(int f_m_num) {
		this.f_m_num = f_m_num;
	}
	public String getF_group() {
		return f_group;
	}
	public void setF_group(String f_group) {
		this.f_group = f_group;
	}
	public int getF_friendsnum() {
		return f_friendsnum;
	}
	public void setF_friendsnum(int f_friendsnum) {
		this.f_friendsnum = f_friendsnum;
	}
	
	@Override
	public String toString() {
		return "FriendsVO [f_num=" + f_num + ", f_m_num=" + f_m_num + ", f_group=" + f_group + ", f_friendsnum="
				+ f_friendsnum + "]";
	}
	
	
}
