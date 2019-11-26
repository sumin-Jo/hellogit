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
import project.star.b2.model.Info;
import project.star.b2.model.Room;
import project.star.b2.model.RoomInfo;
import project.star.b2.service.InfoService;
import project.star.b2.service.RoomInfoService;
import project.star.b2.service.RoomService;





@Controller
public class RoomInfoController {

	/** WebHelper 주입 */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import study.spring.springhelper.helper.WebHelper;
	@Autowired WebHelper webHelper;
	
	/** RegexHelper 주입 */
	// --> import study.spring.springhelper.helper.RegexHelper;
	@Autowired RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	// --> import study.spring.springhelper.helper.RoomInfoService;
	@Autowired RoomInfoService roomInfoService;
	
	/** Service 패턴 구현체 주입 */
	// --> import study.spring.springhelper.helper.RoomInfoService;
	@Autowired RoomService roomService;
	
	/** Service 패턴 구현체 주입 */
	// --> import study.spring.springhelper.helper.RoomInfoService;
	@Autowired InfoService infoService;
	
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// --> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	
	/** 
	 * 목록페이지
	 */
	@RequestMapping(value = "/roominfo/list.do", method = RequestMethod.GET)
	public ModelAndView list(Model model) {
		
		/** 1) 필요한 변수값 생성 */
		String keyword = webHelper.getString("keyword", ""); 	// 검색어
		int nowPage = webHelper.getInt("page", 1); 			// 페이지번호 (기본값 1)
		int totalCount = 0;										// 전체 게시글 수 
		int listCount = 10;										// 한 페이지당 표시할 목록 수
		int pageCount = 10;										// 한 그룹당 표시할 페이지 번호 수
		
		
		/** 2) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Room input = new Room();

		List<Room> room_output = null; // 조회결과가 저장될 객체
		List<Info> info_output = null;
		PageData pageData = null;
		
		try {
			// 전체 게시글 수 조회
			totalCount = roomService.getRoomCount(input);
			// 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			
			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			Room.setOffset(pageData.getOffset());
			Room.setListCount(pageData.getListCount());
			
			// 데이터 조회하기
			room_output = roomService.getRoomList(null);
			info_output = infoService.getInfoList(null);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) View 처리 */
		model.addAttribute("keyword", keyword);
		model.addAttribute("room", room_output);
		model.addAttribute("info", info_output);
		model.addAttribute("pageData", pageData);
		
		String viewPath = "roominfo/list";
		return new ModelAndView(viewPath);
	}
	
	
	/**
	 * 상세 페이지 
	 */
	@RequestMapping(value = "/roominfo/view.do", method = RequestMethod.GET)
	public ModelAndView view(Model model) { 
		/** 1) 필요한 변수값 생성 */
		// 조회할 대상에 대한 PK값
		int roomno = webHelper.getInt("roomno");
		
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (roomno == 0) {
			return webHelper.redirect(null, "방번호가 없습니다.");
		}
		
		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Room input1 = new Room();
		Info input2 = new Info();
		input1.setRoomno(roomno);
		input2.setRoomno(roomno);
		
		// 조회결과를 저장할 객체 선언
		Room output1 = null;
		Info output2 = null;
		
		try {
			//데이터 조회
			output1 = roomService.getRoomItem(input1);
			output2 = infoService.getInfoItem(input2);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) View 처리 */
		model.addAttribute("output1", output1);
		model.addAttribute("output2", output2);
		
		return new ModelAndView("roominfo/view"); 
	}
	
	
	
	
	/** 
	 * 작성 폼 페이지 
	 */
	@RequestMapping(value = "/roominfo/add.do", method = RequestMethod.GET)
	public ModelAndView super_add(Model model) { 
		
		return new ModelAndView("roominfo/add"); 
	}
	
	/** 
	 * 작성 폼에 대한 action 페이지 
	 */
	@RequestMapping(value = "/roominfo/add_ok.do", method = RequestMethod.POST)
	public ModelAndView super_add_ok(Model model) { 
		
		/** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
		
		/** room 정보 받아오기 */
		String roomtype = webHelper.getString("roomtype");
		String title = webHelper.getString("title");
		String floor = webHelper.getString("floor");
		int area = webHelper.getInt("area");
		int fee = webHelper.getInt("fee");
		String confirmdate = webHelper.getString("confirmdate");
		String address = webHelper.getString("address");
		String dong = webHelper.getString("dong");
		String ho = webHelper.getString("ho");
		int latitude = webHelper.getInt("latitude");
		int longitude = webHelper.getInt("longitude");
		String region_2depth_name = webHelper.getString("region_2depth_name");
		String region_3depth_name = webHelper.getString("region_3depth_name");
		int userno = webHelper.getInt("userno");
		
		/** info 정보 받아오기 */
		int feeitem = webHelper.getInt("feeitem");
		String parking = webHelper.getString("parking");
		String pet = webHelper.getString("pet");
		String elevator = webHelper.getString("elevator");
		String veranda = webHelper.getString("veranda");
		String builtin = webHelper.getString("builtin");
		int optionitem = webHelper.getInt("optionitem");
		String loan = webHelper.getString("loan");
		int supplyarea = webHelper.getInt("supplyarea");
		int maxfloor = webHelper.getInt("maxfloor");
		String heater = webHelper.getString("heater");
		String commingday = webHelper.getString("commingday");
		String buildtype = webHelper.getString("buildtype");
		String content = webHelper.getString("content");
		
		
		// 학과 이름은 필수 항목이므로 입력여부를 검사
		// 위치는 미필수(null허용)이므로 입력 여부를 검사하지 않는다.
		if (title == null) {
			return webHelper.redirect(null, "회원이름을 입력하세요.");
		}
		
		
		/** 2) 데이터 저장하기 */
		
		RoomInfo input = new RoomInfo();
		// room 정보 받아오기 
		input.setRoomtype(roomtype);
		input.setTitle(title);
		input.setFloor(floor);
		input.setArea(area);
		input.setFee(fee);
		input.setConfirmdate(confirmdate);
		input.setAddress(address);
		input.setDong(dong);
		input.setHo(ho);
		input.setLatitude(latitude);
		input.setLongitude(longitude);
		input.setRegion_2depth_name(region_2depth_name);
		input.setRegion_3depth_name(region_3depth_name);
		input.setUserno(userno);
		
		// info 정보 받아오기 
		input.setFeeitem(feeitem);
		input.setParking(parking);
		input.setPet(pet);
		input.setElevator(elevator);
		input.setVeranda(veranda);
		input.setBuiltin(builtin);
		input.setOptionitem(optionitem);
		input.setLoan(loan);
		input.setSupplyarea(supplyarea);
		input.setMaxfloor(maxfloor);
		input.setHeater(heater);
		input.setCommingday(commingday);
		input.setBuildtype(buildtype);
		input.setContent(content);

		
		
		try {
			
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			roomInfoService.addRoomInfo(input);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) 결과를 확인하기 위한 페이지 이동 */
		// 저장 결과를 확인하기 위해서 데이터 저장시 생성된 PK값을 상세 페이지로 전달해야 한다.
		String redirectUrl = contextPath + "/roominfo/view.do?roomno="+ input.getRoomno();
		
		return webHelper.redirect(redirectUrl, "저장되었습니다."); 
	}
	
	
}
