package project.star.b2.model;

import java.util.List;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class SearchDailyBoxOfficeList {

    @SerializedName("boxOfficeResult")		public BoxOfficeResult boxOfficeResult;

    @Data
    public class BoxOfficeResult {
        @SerializedName("boxofficeType")        public String boxOfficeType;
        @SerializedName("showRange")            public String showRange;
        @SerializedName("dailyBoxOfficeList")   public List<DailyBoxOfficeList> dailyBoxOfficeList;

        @Data
        public class DailyBoxOfficeList {
            @SerializedName("rank")             public int rank;
            @SerializedName("rankInten")        public int rankInten;
            @SerializedName("rankOldAndNew")    public String rankOldAndNew;
            @SerializedName("movieCd")          public String movieCd;
            @SerializedName("movieNm")          public String movieNm;
            @SerializedName("openDt")           public String openDt;
            @SerializedName("salesAmt")         public long salesAmt;
            @SerializedName("salesShare")       public double salesShare;
            @SerializedName("salesInten")       public long salesInten;
            @SerializedName("salesChange")      public double salesChange;
            @SerializedName("salesAcc")         public long salesAcc;
            @SerializedName("audiCnt")          public int audiCnt;
            @SerializedName("audiInten")        public long audiInten;
            @SerializedName("audiChange")       public double audiChange;
            @SerializedName("audiAcc")          public int audiAcc;
            @SerializedName("scrnCnt")          public int scrnCnt;
            @SerializedName("showCnt")          public int showCnt;
        }
    }
}
