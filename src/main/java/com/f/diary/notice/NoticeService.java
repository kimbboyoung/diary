package com.f.diary.notice;

import java.util.List;

public interface NoticeService {
	//글쓰기
	void insertNotice(NoticeVO vo);
	
	//일기 목록 보기
	List<NoticeVO> selectNoticeList(NoticeVO vo);
	
	//글 삭제
	void deleteNotice(NoticeVO vo);
	
}
