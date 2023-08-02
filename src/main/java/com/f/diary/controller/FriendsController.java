package com.f.diary.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.f.diary.friends.FriendsService;
import com.f.diary.friends.FriendsVO;


@Controller
public class FriendsController {
	@Autowired
	private FriendsService friendsService;
	
	//친구 리스트
	@RequestMapping("/friendsList")
	public String listFaq(FriendsVO vo, Model model) {
		List<FriendsVO> a =  friendsService.allFriends(vo);
		model.addAttribute("friendsList",a);
		return "friends/f_list";
	}
	
	//친구 삭제
	@RequestMapping("/delFriends")
	public String delFriends(FriendsVO vo) {
		friendsService.delFriends(vo);
		return "redirect:friendsList";
	}
	
	@RequestMapping("/addFriends")
	public String addFriends(FriendsVO vo) {
		friendsService.addFriends(vo);
		return "redirect:friendsList";
	}
}
