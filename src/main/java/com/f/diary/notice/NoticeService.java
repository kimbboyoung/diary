package com.f.diary.notice;

import java.util.List;

public interface NoticeService {
	//글쓰기
	void insertNotice(NoticeVO vo);
	
	//일기 목록 보기
	List<NoticeVO> selectNoticeList(NoticeVO vo);
	
	//글 삭제
	void deleteNotice(NoticeVO vo);
	
	//일기 보기
	NoticeVO selectNotice(NoticeVO vo);
	
	//삭제된 일기 보기
	List<NoticeVO> selectDelNoticeList(NoticeVO vo);
	
	//일기 복원
	void resNotice(NoticeVO vo);
	
//	//일기 리스트
//	List<NoticeVO> getNoticeList(NoticeVO vo);
}
