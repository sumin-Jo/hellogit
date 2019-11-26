package project.star.b2.model;

import lombok.Data;

@Data
public class Price {

	private int priceno;
	private String dealingtype;
	private int deposit;
	private int price;
	private String short_room;
	private int roomno;

	/** 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static)  */
    private static int offset;      // LIMIT 절에서 사용할 검색 시작 위치
    private static int listCount;   // LIMIT 절에서 사용할 검색할 데이터 수
    
    public static int getOffset() {
        return offset;
    }
    
    public static void setOffset(int offset) {
        Price.offset = offset;
    }
    
    public static int getListCount() {
        return listCount;
    }
    
    public static void setListCount(int listCount) {
        Price.listCount = listCount;
    }


}