package project.star.b2;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class HomeController {
	
	
	@RequestMapping(value = {"/", "/home.do" } , method = { RequestMethod.GET, RequestMethod.POST} )
	public String home(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "home";
	}
	
	@RequestMapping(value ="/main/ma_faq.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String faq(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_faq";
	}
	
	@RequestMapping(value ="/main/ma_mypage.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String mypage(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_mypage";
	}
	
	@RequestMapping(value ="/main/ma_notice.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String notice(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_notice";
	}
	
	@RequestMapping(value ="/main/ma_pprm.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String pprm(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_pprm";
	}
	
	@RequestMapping(value ="/main/ma_rmdt.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String rmdt(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_rmdt";
	}
	
	@RequestMapping(value ="/main/ma_rtrm.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String rtrm(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_rtrm";
	}
	
	@RequestMapping(value ="/main/ma_search.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String search(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_search";
	}
	
	@RequestMapping(value ="/main/ma_wish.do" , method = { RequestMethod.GET, RequestMethod.POST} )
	public String wish(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "main/ma_wish";
	}
	
}
