package com.carry.mp.member.domain;

import org.springframework.web.multipart.MultipartFile;

public class MemberRegRequest {

	private MultipartFile memphoto;
	private String memname;
	private String mememail;
	private String mempw;
	private String memnick;
	private String memphone;
	private int membirth; 
	private String memgender;
	public MultipartFile getMemphoto() {
		return memphoto;
	}
	public void setMemphoto(MultipartFile memphoto) {
		this.memphoto = memphoto;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public String getMememail() {
		return mememail;
	}
	public void setMememail(String mememail) {
		this.mememail = mememail;
	}
	public String getMempw() {
		return mempw;
	}
	public void setMempw(String mempw) {
		this.mempw = mempw;
	}
	public String getMemnick() {
		return memnick;
	}
	public void setMemnick(String memnick) {
		this.memnick = memnick;
	}
	public String getMemphone() {
		return memphone;
	}
	public void setMemphone(String memphone) {
		this.memphone = memphone;
	}
	public int getMembirth() {
		return membirth;
	}
	public void setMembirth(int membirth) {
		this.membirth = membirth;
	}
	public String getMemgender() {
		return memgender;
	}
	public void setMemgender(String memgender) {
		this.memgender = memgender;
	}
	@Override
	public String toString() {
		return "MemberRegRequest [memphoto=" + memphoto.getOriginalFilename() + ", memname=" + memname + ", mememail=" + mememail + ", mempw="
				+ mempw + ", memnick=" + memnick + ", memphone=" + memphone + ", membirth=" + membirth + ", memgender="
				+ memgender + "]";
	}

	// MemberRegRequest -> Member
	public Member toMember() {
		return new Member(0, mememail, mempw, memname, memphoto.getOriginalFilename());
	}
	
	
	
}
