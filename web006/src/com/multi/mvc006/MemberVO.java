package com.multi.mvc006;

public class MemberVO {
	// 가방 역할 -> 데이터 저장 목적 -> RAM에 공간을 만들어줘야 함
	
	private String id;
	private String pw;
	private String name;
	private String tel;
	
	// 가방에 데이터를 넣었다 뺐다 하는 역할이므로 get, set

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Override
	public String toString() {
		return "MemberVO_DTO [id=" + id + ", pw=" + pw + ", name=" + name + ", tel=" + tel + "]";
	}
	
	
}
