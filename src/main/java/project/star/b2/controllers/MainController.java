package project.star.b2.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	
	/********************************************************************
	 *  							메인
	 *******************************************************************/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView main() {
		
		return new ModelAndView("index");
	}
	
	/********************************************************************
	 *  							자주묻는질문
	 *******************************************************************/
	@RequestMapping(value = "/main/faq.do", method = RequestMethod.GET)
	public ModelAndView faq() {
		
		return new ModelAndView("main/faq");
	}
	
	/********************************************************************
	 *  							마이페이지
	 *******************************************************************/
	@RequestMapping(value = "/main/mypage.do", method = RequestMethod.GET)
	public ModelAndView mypage() {
		
		return new ModelAndView("main/mypage");
	}
	
	/********************************************************************
	 *  							공지사항
	 *******************************************************************/
	@RequestMapping(value = "/main/notice.do", method = RequestMethod.GET)
	public ModelAndView notice() {
		
		return new ModelAndView("main/notice");
	}
	
	/********************************************************************
	 *  							인기매물
	 *******************************************************************/
	@RequestMapping(value = "/main/pprm.do", method = RequestMethod.GET)
	public ModelAndView pprm() {
		
		return new ModelAndView("main/pprm");
	}
	
	/********************************************************************
	 *  							상세페이지
	 *******************************************************************/
	@RequestMapping(value = "/main/rmdt.do", method = RequestMethod.GET)
	public ModelAndView rmdt() {
		
		return new ModelAndView("main/rmdt");
	}
	
	/********************************************************************
	 *  							최근 본 방
	 *******************************************************************/
	@RequestMapping(value = "/main/rtrm.do", method = RequestMethod.GET)
	public ModelAndView rtrm() {
		
		return new ModelAndView("main/rtrm");
	}
	
	/********************************************************************
	 *  							방찾기
	 *******************************************************************/
	@RequestMapping(value = "/main/search.do", method = RequestMethod.GET)
	public ModelAndView search() {
		
		return new ModelAndView("main/search");
	}
	
	/********************************************************************
	 *  							찜한방
	 *******************************************************************/
	@RequestMapping(value = "/main/wish.do", method = RequestMethod.GET)
	public ModelAndView wish() {
		
		return new ModelAndView("main/wish");
	}
}