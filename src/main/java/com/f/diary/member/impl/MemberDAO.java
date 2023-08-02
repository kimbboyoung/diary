package com.f.diary.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.f.diary.member.MemberVO;


@Repository("memberDAO")
public class MemberDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	// 회원정보 가져오기
		public MemberVO getUser(MemberVO vo) {
			return mybatis.selectOne("MemberDAO.getUser", vo);
		}

		public MemberVO joinUser(MemberVO vo) {
			mybatis.insert("MemberDAO.joinUser",vo);
			return vo;
		}
		public MemberVO myPageSelect(MemberVO vo) {
			return mybatis.selectOne("MemberDAO.myPageSelect",vo);
			
		}
	
}
