package com.f.diary.friends;

import java.util.List;

public interface FriendsService {
	
	
	//친구리스트
	List<FriendsVO> allFriends(FriendsVO vo);
	
	//친구삭제
	void delFriends(FriendsVO vo);
	
	//친구추가
	void addFriends(FriendsVO vo);
}
