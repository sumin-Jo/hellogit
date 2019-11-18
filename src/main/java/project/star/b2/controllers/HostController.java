package project.star.b2.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HostController {
	
	/********************************************************************
	 *  						방주인 메인페이지
	 *******************************************************************/
	@RequestMapping(value = "/host/main.do", method = RequestMethod.GET)
	public ModelAndView main() {
		
		return new ModelAndView("host/main");
	}
	
	/********************************************************************
	 *  							공실 등록하기
	 *******************************************************************/
	@RequestMapping(value = "/host/rm_add.do", method = RequestMethod.GET)
	public ModelAndView rm_add() {
		
		return new ModelAndView("host/rm_add");
	}
	
	/********************************************************************
	 *  							공실 수정하기
	 *******************************************************************/
	@RequestMapping(value = "/host/rm_edit.do", method = RequestMethod.GET)
	public ModelAndView rm_edit() {
		
		return new ModelAndView("jsp/host/rm_edit");
	}
	
	/********************************************************************
	 *  							공실관리
	 *******************************************************************/
	@RequestMapping(value = "/host/rmli.do", method = RequestMethod.GET)
	public ModelAndView rmli() {
		
		return new ModelAndView("host/rmli");
	}
}
