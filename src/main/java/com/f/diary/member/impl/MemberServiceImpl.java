package com.f.diary.member.impl;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.f.diary.member.MemberService;
import com.f.diary.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO mybatis;

	@Override
	public MemberVO getUser(MemberVO vo) {
		return mybatis.getUser(vo);
	}

	@Override
	public MemberVO joinUser(MemberVO vo) {
		mybatis.joinUser(vo);
		return vo;
	}
	public MemberVO myPageSelect(MemberVO vo) {
		return mybatis.myPageSelect(vo);
		
	}
}
