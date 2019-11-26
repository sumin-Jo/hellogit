package project.star.b2.service;

import project.star.b2.model.SearchDailyBoxOfficeList;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;


public interface ApiKobisService {
    public static final String BASE_URL = "http://www.kobis.or.kr";

    @GET("/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=59de3fd33ef508a7e7336ce9a03954ff")
    Call<SearchDailyBoxOfficeList> getSearchDailyBoxOfficeList(@Query("targetDt") String targetDt);
}