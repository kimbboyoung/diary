package com.f.diary.notice.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.f.diary.notice.NoticeService;
import com.f.diary.notice.NoticeVO;

@Service("noticeServiceImpl")
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDAO noticeDAO;
	
	
	//글쓰기
	public void insertNotice(NoticeVO vo) {
		noticeDAO.insertNotice(vo);
	}
	
	//일기 목록 보기
	public List<NoticeVO> selectNoticeList(NoticeVO vo) {
		return noticeDAO.selectNoticeList(vo);
	}
	
	//일기 삭제
	public void deleteNotice(NoticeVO vo) {
		 noticeDAO.deleteNotice(vo);
	}
}
