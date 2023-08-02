package com.f.diary.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.f.diary.member.MemberService;
import com.f.diary.member.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	
	
	//로그인으로이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	//로그인실행->인덱스로이동
	@RequestMapping("/logingo")
	public String login(MemberVO vo, HttpSession session) {
		
		if(memberService.getUser(vo)!=null) {
			session.setAttribute("m_id", vo.getM_id());
			System.out.println(vo.getM_id()+"로그인성공");
			return "redirect:index.jsp";
		}else {
				return "redirect:login?error=1";
		}
	}
	//로그아웃실행
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
	    session.invalidate(); // 세션 무효화
	    return "redirect:index.jsp"; // 인덱스 페이지로 이동
	}
	
	//회원가입으로이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "member/join";
	}
	
	//회원가입실행
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joingo(MemberVO vo) {
		memberService.joinUser(vo);
		System.out.println(vo+"회원가입성공");
		return "redirect:login";
	}
	//마이페이지로 이동, 회원정보 가져오기
			@RequestMapping("/mypage")
			public String mypageGo(MemberVO vo, HttpSession session, Model model) {
				vo.setM_id((String)session.getAttribute("m_id"));
			    model.addAttribute("selectmy",memberService.myPageSelect(vo));
			    System.out.println(memberService.myPageSelect(vo));
				return "member/mypage";
			}
}

