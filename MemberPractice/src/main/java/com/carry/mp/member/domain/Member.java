package com.carry.mp.member.domain;

public class Member {

	private int idx;
	private String mememail;
	private String mempw;
	private String memname;
	private String memphoto;

	public Member(int idx, String mememail, String mempw, String memname, String memphoto) {
		this.idx = idx;
		this.mememail = mememail;
		this.mempw = mempw;
		this.memname = memname;
		this.memphoto = memphoto;
	}

	public Member() {
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
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

	public String getMemname() {
		return memname;
	}

	public void setMemname(String memname) {
		this.memname = memname;
	}

	public String getMemphoto() {
		return memphoto;
	}

	public void setMemphoto(String memphoto) {
		this.memphoto = memphoto;
	}

	@Override
	public String toString() {
		return "Member [idx=" + idx + ", mememail=" + mememail + ", mempw=" + mempw + ", memname=" + memname
				+ ", memphoto=" + memphoto + "]";
	
	}

	// Member -> LoginInfo
	public LoginInfo toLoginInfo() {
		return new LoginInfo(this.idx, this.mememail, this.memname, this.memphoto);
	}
	
	
	
	
	
	

}