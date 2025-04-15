/*=======================================================
	EmgConfirmedDTO.java
	- 긴급 돌봄 확정 데이터 자료형 클래스
	  (긴급 돌봄 예약 확정, 긴급 시터 메모 저장
	 , 긴급 부모 메모 저장, 긴급 돌봄 임금 지급 내역)
=======================================================*/

package com.team1.dto;

public class EmgConfirmedDTO
{
	// 주요 속성 구성
	String emg_confirmed_id, emg_req_id, sit_backup_id;				// 긴급 돌봄 예약 확정 코드, 긴급 돌봄 요청 코드, 
	String confirmed_date, par_read_date;							// 시터 백업 코드, 예약 확정일, 부모가 읽은 날짜
	
	String emg_memo_sit_id, emg_memos_par_id;						// 긴급 돌봄 시터 기록 코드, 긴급 돌봄 부모 기록 코드
	String sit_rec_datge, par_rec_date, par_content, sit_contnet;	// 시터 기록 날짜, 부모 기록 날짜, 시터 기록 내용, 부모 기록 내용

	
	String emg_wage_id;										// 긴급 돌봄 임금 지급 내역 코드
	String wage, paid_date;									// 임금 지급액(송금액), 임금 지급일
	String acct_number, bank_name;							// 시터 계좌 번호, 시터 계좌 은행명
	String par_name, sit_name;								// 부모 이름, 시터 이름
	
	
	
	// getter / setter 구성
	public String getEmg_confirmed_id()
	{
		return emg_confirmed_id;
	}
	public void setEmg_confirmed_id(String emg_confirmed_id)
	{
		this.emg_confirmed_id = emg_confirmed_id;
	}
	public String getEmg_req_id()
	{
		return emg_req_id;
	}
	public void setEmg_req_id(String emg_req_id)
	{
		this.emg_req_id = emg_req_id;
	}
	public String getSit_backup_id()
	{
		return sit_backup_id;
	}
	public void setSit_backup_id(String sit_backup_id)
	{
		this.sit_backup_id = sit_backup_id;
	}
	public String getConfirmed_date()
	{
		return confirmed_date;
	}
	public void setConfirmed_date(String confirmed_date)
	{
		this.confirmed_date = confirmed_date;
	}
	public String getPar_read_date()
	{
		return par_read_date;
	}
	public void setPar_read_date(String par_read_date)
	{
		this.par_read_date = par_read_date;
	}
	public String getEmg_memo_sit_id()
	{
		return emg_memo_sit_id;
	}
	public void setEmg_memo_sit_id(String emg_memo_sit_id)
	{
		this.emg_memo_sit_id = emg_memo_sit_id;
	}
	public String getEmg_memos_par_id()
	{
		return emg_memos_par_id;
	}
	public void setEmg_memos_par_id(String emg_memos_par_id)
	{
		this.emg_memos_par_id = emg_memos_par_id;
	}
	
	public String getEmg_wage_id()
	{
		return emg_wage_id;
	}
	public void setEmg_wage_id(String emg_wage_id)
	{
		this.emg_wage_id = emg_wage_id;
	}
	public String getWage()
	{
		return wage;
	}
	public void setWage(String wage)
	{
		this.wage = wage;
	}
	public String getPaid_date()
	{
		return paid_date;
	}
	public void setPaid_date(String paid_date)
	{
		this.paid_date = paid_date;
	}
	public String getAcct_number()
	{
		return acct_number;
	}
	public void setAcct_number(String acct_number)
	{
		this.acct_number = acct_number;
	}
	public String getBank_name()
	{
		return bank_name;
	}
	public void setBank_name(String bank_name)
	{
		this.bank_name = bank_name;
	}
	public String getPar_name()
	{
		return par_name;
	}
	public void setPar_name(String par_name)
	{
		this.par_name = par_name;
	}
	public String getPar_content()
	{
		return par_content;
	}
	public void setPar_content(String par_content)
	{
		this.par_content = par_content;
	}
	public String getSit_contnet()
	{
		return sit_contnet;
	}
	public void setSit_contnet(String sit_contnet)
	{
		this.sit_contnet = sit_contnet;
	}
	public String getSit_name()
	{
		return sit_name;
	}
	public void setSit_name(String sit_name)
	{
		this.sit_name = sit_name;
	}
	public String getSit_rec_datge()
	{
		return sit_rec_datge;
	}
	public void setSit_rec_datge(String sit_rec_datge)
	{
		this.sit_rec_datge = sit_rec_datge;
	}
	public String getPar_rec_date()
	{
		return par_rec_date;
	}
	public void setPar_rec_date(String par_rec_date)
	{
		this.par_rec_date = par_rec_date;
	}
	
	
}
