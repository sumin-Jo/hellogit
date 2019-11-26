package project.star.b2.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	/********************************************************************
	 *  						글쓰기 수정
	 *******************************************************************/
	@RequestMapping(value = "/admin/edit.do", method = RequestMethod.GET)
	public ModelAndView edit() {
		
		return new ModelAndView("admin/edit");
	}
	
	/********************************************************************
	 *  					   관리자 자주묻는질문
	 *******************************************************************/
	@RequestMapping(value = "/admin/faq.do", method = RequestMethod.GET)
	public ModelAndView faq() {
		
		return new ModelAndView("admin/faq");
	}
	
	/********************************************************************
	 *  						관리자 로그인
	 *******************************************************************/
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.GET)
	public ModelAndView login() {
		
		return new ModelAndView("admin/login");
	}
	
	/********************************************************************
	 *  						관리자 메인
	 *******************************************************************/
	@RequestMapping(value = "/admin/main.do", method = RequestMethod.GET)
	public ModelAndView main() {
		
		return new ModelAndView("admin/main");
	}
	
	/********************************************************************
	 *  						관리자 공지사항
	 *******************************************************************/
	@RequestMapping(value = "/admin/notice.do", method = RequestMethod.GET)
	public ModelAndView notice() {
		
		return new ModelAndView("admin/notice");
	}
	
	/********************************************************************
	 *  							방 관리
	 *******************************************************************/
	@RequestMapping(value = "/admin/rmli.do", method = RequestMethod.GET)
	public ModelAndView rmli() {
		
		return new ModelAndView("admin/rmli");
	}
	
	/********************************************************************
	 *  							회원 관리
	 *******************************************************************/
	@RequestMapping(value = "/admin/userli.do", method = RequestMethod.GET)
	public ModelAndView userli() {
		
		return new ModelAndView("admin/userli");
	}
	
	/********************************************************************
	 *  							글쓰기
	 *******************************************************************/
	@RequestMapping(value = "/admin/write.do", method = RequestMethod.GET)
	public ModelAndView write() {
		
		return new ModelAndView("admin/write");
	}	
}