package project.star.b2.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import project.star.b2.helper.RegexHelper;
import project.star.b2.helper.WebHelper;
import project.star.b2.model.RoomInfo;
import project.star.b2.service.InfoService;
import project.star.b2.service.RoomInfoService;
import project.star.b2.service.RoomService;

@Controller
public class HostController {
	
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
	 *  							공실 등록하기_ok
	 *******************************************************************/
	@RequestMapping(value = "/host/rm_add_ok.do", method = RequestMethod.POST)
	public ModelAndView rm_add_ok() {
		
		/** 1) 사용자가 입력한 파라미터 수신 및 유효성 검사 */
		
		// room 정보 받아오기*
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
		int userno = 1;
		
		// info 정보 받아오기*
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
		
		
		// 이름은 필수 항목이므로 입력여부를 검사
		// 위치는 미필수(null허용)이므로 입력 여부를 검사하지 않는다.
		if (title == null) {
			return webHelper.redirect(null, "설명을 입력하세요.");
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
