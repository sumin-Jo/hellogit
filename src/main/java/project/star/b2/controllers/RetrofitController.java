package project.star.b2.controllers;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import project.star.b2.helper.RetrofitHelper;
import project.star.b2.helper.WebHelper;
import project.star.b2.model.AddDB;
import project.star.b2.model.Address;
import project.star.b2.model.Address.Documents;
import project.star.b2.model.Address.Documents.RoadAddress;
import project.star.b2.model.Book;
import project.star.b2.model.SearchDailyBoxOfficeList;
import project.star.b2.model.SearchDailyBoxOfficeList.BoxOfficeResult.DailyBoxOfficeList;
import project.star.b2.service.AddressService;
import project.star.b2.service.ApiKakaoSearchService;
import project.star.b2.service.ApiKobisService;
import retrofit2.Call;
import retrofit2.Retrofit;

@Controller
public class RetrofitController {
	
	@Autowired
	WebHelper webHelper;
	
	@Autowired
	RetrofitHelper retrofitHelper;
	
	@Autowired
	AddressService addressService;
	
	/**
	 * 영화진흥원 연동 결과를 그래프로 표시하는 페이지
	 */
	@RequestMapping(value = "/retrofit/kakao.do", method = RequestMethod.GET)
	public ModelAndView KakaoSearchApi (Model model) {
		
		/** 1) API 연동 객체 생성 */
		// Retrofit 객체 생성
		Retrofit retrofit = retrofitHelper.getRetrofit(ApiKakaoSearchService.BASE_URL);
		
		// Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
		ApiKakaoSearchService apiKakaoSearchService = retrofit.create(ApiKakaoSearchService.class);
		
		/** 2) 파라미터 처리 */
		String query = webHelper.getString("query", "");
		

		/** 3) 영화진흥원에 API 요청 */
		// 검색결과를 저장할 Beans 객체 선언		
		Address address = null;
		
		// 검색어가 존재할 경우 KakaoOpenAPI를 통해 검색 결과 받아옴 
		if (!query.equals("")) {
		Call<Address> call = apiKakaoSearchService.getAddress(query);
		try {
			address = call.execute().body();
		} catch (Exception e) {
			e.printStackTrace();
		}

			
/**
			try {
				addressService.addAddress(input);
			} catch (Exception e) {
				e.printStackTrace();
			}*/
		
		} // if
		 
		
		model.addAttribute("address", address);
		
		String viewPath = "retrofit/kakao";
		return new ModelAndView(viewPath);
		
	
	}
	
	@RequestMapping(value = "/retrofit/kakao_book_search.do", method = RequestMethod.GET)
	public ModelAndView KakaoBookSearchApi (Model model) {
	
	/** 1) 필요한 객체 생성 부분 */

    // Retrofit 객체 생성
    // -> import retrofit2.Retrofit;
    // -> import study.jsp.model1.service.ApiKakaoSearchService;
    Retrofit retrofit = retrofitHelper.getRetrofit(ApiKakaoSearchService.BASE_URL);

    // Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
    ApiKakaoSearchService apiKakaoSearchService = retrofit.create(ApiKakaoSearchService.class);

    /** 2) 검색일 파라마터 처리 */
    // 검색어 키워드 받기
    String query = webHelper.getString("query", "");

    /** 3) API 연동 */
    // 검색 결과를 저장할 Beans 객체 선언
    Book book = null;

    // 검색어가 존재할 경우 KakaoOpenAPI를 통해 검색 결과 받아옴.
    if (!query.equals("")) {
    	Call<Book> call = apiKakaoSearchService.getBook(query);
        try {
            book = call.execute().body();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    model.addAttribute("book", book);
    
    String viewPath = "retrofit/kakao_book_search";
	return new ModelAndView(viewPath);
    
	}
	
	@RequestMapping(value = "/retrofit/daily_box_office.do", method = RequestMethod.GET)
	public ModelAndView movieApi (Model model) {

    /** 1) 필요한 객체 생성 부분 */
    // Retrofit 객체 생성
    // -> import retrofit2.Retrofit;
    // -> import study.jsp.model1.service.ApiKobisService;
    Retrofit retrofit = retrofitHelper.getRetrofit(ApiKobisService.BASE_URL);

    // Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
    ApiKobisService apiKobisService = retrofit.create(ApiKobisService.class);

    /** 2) 검색일 파라마터 처리 */
    // 검색일 파라미터 (yyyy-mm-dd 형식)
    String date = webHelper.getString("date");

    // 검색어가 없다면 Calendar 클래스를 사용하여 하루 전 날짜 값을 yyyy-mm-dd 형식으로 생성한다.
    if (date == null) {
        // -> java.util.Calendar
        Calendar c = Calendar.getInstance();
        c.add(Calendar.DAY_OF_MONTH, -1);

        // yyyy-mm-dd 형식의 날짜 문자열 생성
        // 월의 경우 0부터 시작하므로 1 더한 값을 만들어야 한다.
        date = String.format("%04d-%02d-%02d", c.get(Calendar.YEAR),
                             c.get(Calendar.MONTH) + 1, c.get(Calendar.DAY_OF_MONTH));
    }

    // 영화진흥원 API에 전달할 날짜 형식은 yyyymmdd 이므로 준비된 날짜 문자열에서 "-"를 제거한다.
    String targetDt = date.replace("-", "");
    
    /** 3) API 연동 */
    // 영화진흥원 OpenAPI를 통해 검색결과 받아오기
    // -> study.jsp.model1.model.SearchDailyBoxOfficeList
    Call<SearchDailyBoxOfficeList> call = apiKobisService.getSearchDailyBoxOfficeList(targetDt);

    // API 키를 잘못 설정한 경우등의 이유로 연동에 실패 할 수 있기 때문에 예외처리를 준비한다.
    SearchDailyBoxOfficeList searchDailyBoxOfficeList = null;
    try {
        searchDailyBoxOfficeList = call.execute().body();
    } catch (Exception e) {
        e.printStackTrace();
    }

    // 변수명이 너무 길어서 별도로 참조변수를 만들었다.
    // -> import study.jsp.model1.model.SearchDailyBoxOfficeList.BoxOfficeResult.DailyBoxOfficeList
    List<DailyBoxOfficeList> list = null;

    // 검색 결과가 있다면 list만 추출한다.
    if (searchDailyBoxOfficeList != null) {
        list = searchDailyBoxOfficeList.getBoxOfficeResult().getDailyBoxOfficeList();
    }
    
    model.addAttribute("list", list);
    
    String viewPath = "retrofit/daily_box_office";
	return new ModelAndView(viewPath);
    
	}

}
