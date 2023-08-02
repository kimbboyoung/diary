package com.f.diary.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.f.diary.notice.NoticeService;
import com.f.diary.notice.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/gonotice")
	public String goNotice() {
		return "/notice/notice";
	}
	@RequestMapping("/insNotice")
	public String insNotice(NoticeVO vo,MultipartHttpServletRequest request,HttpSession session)
			throws IllegalStateException, IOException {
		//0729 코드 추가
		String id = (String) session.getAttribute("m_id");
		vo.setN_m_id(id);
		System.out.println("n_m_id값은?"+vo.getN_m_id());
		
		
		MultipartFile uploadFile = vo.getUploadFile();
		System.out.println("파일이름 vo에서 가져옴"+uploadFile);
		SimpleDateFormat dateformat = new SimpleDateFormat("yy년MM월dd일 ");
		Date date = new Date();
		String result =dateformat.format(date);
		String realPath ="c:/vet/diary/main/webapp/resources/imgs\\\\";
//		0729 상대경로*

		String filename = uploadFile.getOriginalFilename();		
		String a = result+filename;
		
		if(!uploadFile.isEmpty()) {
			vo.setN_pic(a);
			uploadFile.transferTo(new File(realPath + filename));
//			0729 상대경로*
//			uploadFile.transferTo(new File( path + filename));
		}
		
		System.out.println("insertNotice 컨트롤러"); //0729 sysout 문구 변경
		noticeService.insertNotice(vo);
		return "redirect:/selectNoticeList";
	}
	
	//0729 selectNoticeList controller 생성
	@RequestMapping("/selectNoticeList")
	public String selectNoticeList(NoticeVO vo, Model model ,HttpSession session) {
		vo.setN_m_id((String) session.getAttribute("m_id"));
		List<NoticeVO> noticelist = noticeService.selectNoticeList(vo);
		model.addAttribute("noticelist",noticelist);
		return "notice/noticeList";
		
	}
	@ModelAttribute("어트리뷰트")
	//0731 deleteNotice controller 생성
	@RequestMapping("/deleteNotice")
	public String deleteNoticeList( NoticeVO vo , Model model ) {
		noticeService.deleteNotice(vo);
		
		return "notice/noticeList";
		//did
	}
}
