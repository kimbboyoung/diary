package com.f.diary.notice.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.f.diary.notice.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//글쓰기
	public void insertNotice(NoticeVO vo) {
		System.out.println("NoticeDAO insertNotice 탔다.");
		mybatis.insert("NoticeDAO.insertNotice",vo);
		
	}
	
	//일기 목록 보기
	public List<NoticeVO> selectNoticeList(NoticeVO vo) {
		System.out.println("NoticeDAO selectNoticeList 탔다");
		return mybatis.selectList("NoticeDAO.selectNoticeList",vo);
		 
	}
	
	//일기 삭제
	public void deleteNotice(NoticeVO vo) {
		System.out.println("NoticeDAO deleteNotice 탔다");
		mybatis.update("NoticeDAO.deleteNotice",vo);
		
	}
	
	//일기 보기
	public NoticeVO selectNotice(NoticeVO vo) {
		return mybatis.selectOne("NoticeDAO.selectNotice",vo);
	}
	
	//삭제된 일기 보기
	public List<NoticeVO> selectDelNoticeList(NoticeVO vo) {
		return mybatis.selectList("NoticeDAO.selectDelNoticeList",vo);
	}
	
	//일기 복원하기
	public void resNotice(NoticeVO vo) {
		mybatis.update("NoticeDAO.resNotice",vo);
	}
}
