package com.mycompany.web.service;

import org.springframework.stereotype.Service;

import com.mycompany.web.dto.LoginMember;

@Service
public class Login1Service01 {

	public LoginResult login(String mid, String mpassword) {
		
		LoginMember loginMember = login1Dao01.selectloginMember(mid);
		
		
		return null;
	}

	
	
	
	
	
	
}
