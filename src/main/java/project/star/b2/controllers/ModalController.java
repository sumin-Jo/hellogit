package project.star.b2.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ModalController {
	
	/********************************************************************
	 *  							동의하기
	 *******************************************************************/
	@RequestMapping(value = "/modal/agree.do", method = RequestMethod.GET)
	public ModelAndView agree() {
		
		return new ModelAndView("modal/agree");
	}
	
	/********************************************************************
	 *  							회원가입
	 *******************************************************************/
	@RequestMapping(value = "/modal/join.do", method = RequestMethod.GET)
	public ModelAndView join() {
		
		return new ModelAndView("modal/join");
	}
	
	/********************************************************************
	 *  							로그인
	 *******************************************************************/
	@RequestMapping(value = "/modal/login.do", method = RequestMethod.GET)
	public ModelAndView login() {
		
		return new ModelAndView("modal/login");
	}
	
	/********************************************************************
	 *  							비밀번호 찾기
	 *******************************************************************/
	@RequestMapping(value = "/modal/pwd.do", method = RequestMethod.GET)
	public ModelAndView pwd() {
		
		return new ModelAndView("modal/pwd");
	}
	
	/********************************************************************
	 *  							찜한방 - 비교하기
	 *******************************************************************/
	@RequestMapping(value = "/modal/compare.do", method = RequestMethod.GET)
	public ModelAndView compare() {
		
		return new ModelAndView("modal/compare");
	}
}