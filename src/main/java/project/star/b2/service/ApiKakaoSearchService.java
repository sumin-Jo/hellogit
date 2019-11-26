package project.star.b2.service;

import project.star.b2.model.Book;
import project.star.b2.model.Address;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Query;

public interface ApiKakaoSearchService {
	public static final String BASE_URL = "https://dapi.kakao.com";
	
	/**
	 *	curl -v -X GET "https://dapi.kakao.com/v2/local/search/address.json" \ 
	 *	--data-urlencode "query=전북 삼성동 100" \ 
	 * 	-H "Authorization: KakaoAK kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
	 */
	
	@Headers("Authorization: KakaoAK c2af26a361b5d6ffd94b478877c3ee14")
	@GET("v2/local/search/address.json")
	Call<Address> getAddress(@Query("query") String query);

    /*
     * curl -v -X GET
     * "https://dapi.kakao.com/v3/search/book?query=책제목&page=1&size=50" \
     * --data-urlencode "query=미움받을 용기" \ -H
     * "Authorization: KakaoAK kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
     */
    @Headers("Authorization: KakaoAK c2af26a361b5d6ffd94b478877c3ee14")
    @GET("/v3/search/book")
    Call<Book> getBook(@Query("query") String query);
	

	
}
