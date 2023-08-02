package com.f.diary.friends.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.diary.friends.FriendsService;
import com.f.diary.friends.FriendsVO;

@Service("friendsService")
public class FriendsServiceImpl implements FriendsService{

	@Autowired
	private FriendsDAO mybatis;
	
	@Override
	public List<FriendsVO> allFriends(FriendsVO vo) {
		return mybatis.friendsList(vo);
	}

	@Override
	public void delFriends(FriendsVO vo) {
		mybatis.delFriends(vo);
	}

	@Override
	public void addFriends(FriendsVO vo) {
		mybatis.addFriends(vo);
	}

	
}
