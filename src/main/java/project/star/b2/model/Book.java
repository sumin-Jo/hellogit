package project.star.b2.model;

import java.util.List;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class Book {
    @SerializedName("documents")    private List<Documents> documents;

    @Data
    public class Documents {
        @SerializedName("authors")      private String[] authors;
        @SerializedName("contents")     private String contents;
        @SerializedName("datetime")     private String datetime;
        @SerializedName("isbn")         private String isbn;
        @SerializedName("price")        private int price;
        @SerializedName("publisher")    private String publisher;
        @SerializedName("sale_price")   private int saleprice;
        @SerializedName("status")       private String status;
        @SerializedName("thumbnail")    private String thumbnail;
        @SerializedName("title")        private String title;
        @SerializedName("translators")  private String[] translators;
        @SerializedName("url")          private String url;
    }
}
