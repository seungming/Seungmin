/*==============================
	IAgesPreferedDAO.java
	- 선호 연령대 IDAO

=================================*/

package com.team1.mybatis;

import java.util.ArrayList;

import com.team1.dto.AgesPreferedDTO;

public interface IAgesPreferedDAO
{
	// 시터 돌봄 선호 연령대 열람
	public ArrayList<AgesPreferedDTO> listAges();
	
	// 시터 돌봄 선호 연령대 추가
	public int addAges(AgesPreferedDTO ages);
	
	// 시터 돌봄 선호 연령대 수정
	public int modifyAges(AgesPreferedDTO ages);
	
	// 시터 돌봄 선호 연령대 삭제
	public int removeAges(String gen_reg_id);
}
