package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Character;

public class StorageService {
	
	private List<Character> db = new ArrayList<Character>();
	
	public void add(Character chara){
		Character newChar = new Character(chara.getName(), chara.getLastName(), chara.getBloodline(),chara.getBirthSign(),chara.getAlignment(),chara.getEpochOfBirth());
		db.add(newChar);
	}
	
	public List<Character> getAllCharacters(){
		return db;
	}

}
