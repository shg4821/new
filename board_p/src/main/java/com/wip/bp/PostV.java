package com.wip.bp;

import java.util.Date;

public class PostV {

	private Integer P_NO;
	private String P_TITLE;
	private String P_CON;
	private String M_NAME;
	private Date P_DATE;
	private Date P_CDATE;
	private Integer P_VIEW;
	
	
	// 생성자 	
	public PostV() {}

	public PostV(Integer p_NO, String p_TITLE, String p_CON, String m_NAME, Date p_DATE, Date p_CDATE, Integer p_VIEW) {
		super();
		P_NO = p_NO;
		P_TITLE = p_TITLE;
		P_CON = p_CON;
		M_NAME = m_NAME;
		P_DATE = p_DATE;
		P_CDATE = p_CDATE;
		P_VIEW = p_VIEW;
	}

	// toString()
	@Override
	public String toString() {
		return "PostV [P_NO=" + P_NO + ", P_TITLE=" + P_TITLE + ", P_CON=" + P_CON + ", M_NAME=" + M_NAME + ", P_DATE="
				+ P_DATE + ", P_CDATE=" + P_CDATE + ", P_VIEW=" + P_VIEW + "]";
	}

	// getter setter
	public Integer getP_NO() {
		return P_NO;
	}

	public void setP_NO(Integer p_NO) {
		P_NO = p_NO;
	}

	public String getP_TITLE() {
		return P_TITLE;
	}

	public void setP_TITLE(String p_TITLE) {
		P_TITLE = p_TITLE;
	}

	public String getP_CON() {
		return P_CON;
	}

	public void setP_CON(String p_CON) {
		P_CON = p_CON;
	}

	public String getM_NAME() {
		return M_NAME;
	}

	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}

	public Date getP_DATE() {
		return P_DATE;
	}

	public void setP_DATE(Date p_DATE) {
		P_DATE = p_DATE;
	}

	public Date getP_CDATE() {
		return P_CDATE;
	}

	public void setP_CDATE(Date p_CDATE) {
		P_CDATE = p_CDATE;
	}

	public Integer getP_VIEW() {
		return P_VIEW;
	}

	public void setP_VIEW(Integer p_VIEW) {
		P_VIEW = p_VIEW;
	}

}
