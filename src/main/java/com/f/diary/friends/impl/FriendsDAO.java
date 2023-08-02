package com.f.diary.friends.impl;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.f.diary.friends.FriendsVO;


@Repository("friendsDAO")
public class FriendsDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//친구목록조회
	public List<FriendsVO> friendsList(FriendsVO vo) {
		return mybatis.selectList("FriendsDAO.friendsList",vo);
	}
	
	//친구삭제
	public void delFriends(FriendsVO vo) {
		mybatis.delete("FriendsDAO.delFriends", vo);
	}
	
	
	//친구추가
	public void addFriends(FriendsVO vo) {
		mybatis.insert("FriendsDAO.addFriends", vo);
	}
}
