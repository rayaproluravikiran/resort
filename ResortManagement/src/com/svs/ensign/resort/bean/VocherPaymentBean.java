package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_vocherpayment")
public class VocherPaymentBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="reciptno")
	private String reciptno;
	@Column(name="date")
	private String date;
	@Column(name="under")
	private String under;
	@Column(name="currentbalance")
	private String currentbalance;
	@Column(name="particulars")
	private String particulars;
	@Column(name="currentbalance1")
	private String currentbalance1;
	@Column(name="vouchertype")
	private String vouchertype;
	@Column(name="amount")
	private String amount;
	@Column(name="narration")
	private String narration;
	@Column(name="getdate")
	private String getdate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getReciptno() {
		return reciptno;
	}
	public void setReciptno(String reciptno) {
		this.reciptno = reciptno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getUnder() {
		return under;
	}
	public void setUnder(String under) {
		this.under = under;
	}
		public String getParticulars() {
		return particulars;
	}
	public void setParticulars(String particulars) {
		this.particulars = particulars;
	}
	public String getCurrentbalance() {
		return currentbalance;
	}
	public void setCurrentbalance(String currentbalance) {
		this.currentbalance = currentbalance;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getNarration() {
		return narration;
	}
	public void setNarration(String narration) {
		this.narration = narration;
	}
	public String getGetdate() {
		return getdate;
	}
	public void setGetdate(String getdate) {
		this.getdate = getdate;
	}
	public String getVouchertype() {
		return vouchertype;
	}
	public void setVouchertype(String vouchertype) {
		this.vouchertype = vouchertype;
	}
	public String getCurrentbalance1() {
		return currentbalance1;
	}
	public void setCurrentbalance1(String currentbalance1) {
		this.currentbalance1 = currentbalance1;
	}
	
}
