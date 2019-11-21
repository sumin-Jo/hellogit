package project.star.b2.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import project.star.b2.helper.PageData;
import project.star.b2.helper.RegexHelper;
import project.star.b2.helper.WebHelper;
import project.star.b2.model.User;
import project.star.b2.service.UserService;

@Controller
public class AdminController {
	/** WebHelper 주입 */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import study.spring.springhelper.helper.WebHelper;
	@Autowired WebHelper webHelper;
	
	/** RegexHelper 주입 */
	// --> import study.spring.springhelper.helper.RegexHelper;
	@Autowired RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	// --> import study.spring.springhelper.helper.UserService;
	@Autowired UserService userService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// --> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
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
	public ModelAndView userli(Model model) {
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); //검색어
		int nowPage = webHelper.getInt("page",1); //페이지 번호(기본값 1)
		int totalCount = 0; //전체 게시글 수
		int listCount = 10;	//한 페이지당 표시할 목록 수
		int pageCount= 5;	// 한 그룹당 표시할 페이지 번호 수
		
		/** 2) 데이터 조회하기 */
		//조회에 필요한 조건값(검색어)를 Beans에 담는다.
		User input = new User();
		input.setName(keyword);
		input.setEmail(keyword);
		input.setPasswd(keyword);
		input.setTel(keyword);
		input.setRegdate(keyword);
		input.setEditdate(keyword);
		
		List<User>output = null; //조회결과가 저장될 객체
		PageData pageData = null; //페이지 번호를 계산할 결과가 저장될 객체
		
		try {
			//전체 게시글 수 조회
			totalCount = userService.getUserCount(input);
			//페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			
			//SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			User.setOffset(pageData.getOffset());
			User.setListCount(pageData.getListCount());
			//데이터 조회하기
			output = userService.getUserList(input);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3)View 처리*/
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		
		String viewPath = "admin/userli";
		return new ModelAndView(viewPath);
			}
	
	/********************************************************************
	 *  							글쓰기
	 *******************************************************************/
	@RequestMapping(value = "/admin/write.do", method = RequestMethod.GET)
	public ModelAndView write() {
		
		return new ModelAndView("admin/write");
	}	
}