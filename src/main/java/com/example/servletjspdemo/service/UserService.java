package com.example.servletjspdemo.service;

import com.example.servletjspdemo.domain.User;

public class UserService {

	public boolean authenticate(User user)
	{
		return user.getLogin().equals("Moldiar")
				&&user.getPassword().equals("Morre");
	}
	
}
