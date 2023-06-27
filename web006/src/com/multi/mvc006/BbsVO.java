package com.multi.mvc006;

public class BbsVO {
	// 가방 역할 -> 데이터 저장 목적 -> RAM에 공간을 만들어줘야 함
	
	private String no;
	private String title;
	private String content;
	private String writer;
	
	// 가방에 데이터를 넣었다 뺐다 하는 역할이므로 get, set

	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "BbsVO [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + "]";
	}
	
}