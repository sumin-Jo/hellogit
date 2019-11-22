package project.star.b2.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import project.star.b2.helper.PageData;
import project.star.b2.helper.WebHelper;
import project.star.b2.model.Room;
import project.star.b2.service.RoomService;

@Controller
public class MainController {
	/** WebHelper 주입 */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import study.spring.springhelper.helper.WebHelper;
	@Autowired WebHelper webHelper;
	
	/** Service 패턴 구현체 주입 */
	// --> import project.star.b2.service.RoomService;
	@Autowired RoomService roomService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// --> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
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
	public ModelAndView search(Model model) {
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", "");// 검색어
		int nowPage = webHelper.getInt("page", 1); 			// 페이지번호 (기본값 1)
		int totalCount = 0;									// 전체 게시글 수 
		int listCount = 24;									// 한 페이지당 표시할 목록 수
		int pageCount = 7;									// 한 그룹당 표시할 페이지 번호 수
		
		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Room input = new Room();
		input.setRegion_2depth_name(keyword);
		
		List<Room> output = null;
		PageData pageData = null;
		
		try {
			// 전체 게시글 수 조회
			totalCount = roomService.getRoomCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			
			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Room.setOffset(pageData.getOffset());
			Room.setListCount(pageData.getListCount());
						
			output = roomService.getRoomGalleryList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		model.addAttribute("totalCount", totalCount);
		
		return new ModelAndView("main/search");
	}
	
	/********************************************************************
	 *  							찜한방
	 *******************************************************************/
	@RequestMapping(value = "/main/wish.do", method = RequestMethod.GET)
	public ModelAndView wish() {
		
		return new ModelAndView("main/wish");
	}
	/********************************************************************
	 *  							쉬운방찾기
	 *******************************************************************/
	@RequestMapping(value = "/main/search2.do", method = RequestMethod.GET)
	public ModelAndView search2(Model model) {
		/** 1) 필요한 변수값 생성 */
		int keyword = webHelper.getInt("roomno");// 검색어
		String keyword2 = webHelper.getString("roomtype");// 검색어
		int nowPage = webHelper.getInt("page", 1); 			// 페이지번호 (기본값 1)
		int totalCount = 0;									// 전체 게시글 수 
		int listCount = 24;									// 한 페이지당 표시할 목록 수
		int pageCount = 7;									// 한 그룹당 표시할 페이지 번호 수
		
		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Room input = new Room();
		input.setRoomno(keyword);
		input.setRoomtype(keyword2);
		
		List<Room> output = null;
		PageData pageData = null;
		
		try {
			// 전체 게시글 수 조회
			totalCount = roomService.getRoomCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			
			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Room.setOffset(pageData.getOffset());
			Room.setListCount(pageData.getListCount());
						
			output = roomService.getRoomGalleryList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		model.addAttribute("totalCount", totalCount);
		
		return new ModelAndView("main/search");
	}
}