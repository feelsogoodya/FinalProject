package com.itwillbs.domain;

import java.sql.Timestamp;

public class MemberDTO {
	// 회원가입 한 내용을 담아서 전달해주는 바구니
	// 멤버변수 => 접근 제한 => 데이터 은닉, 캡슐화
	

	private String memberId;
	private String memberPass;
	private String memNicNname;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPass() {
		return memberPass;
	}
	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}
	public String getMemNicNname() {
		return memNicNname;
	}
	public void setMemNicNname(String memNicNname) {
		this.memNicNname = memNicNname;
	}
	
	
	
	
}
