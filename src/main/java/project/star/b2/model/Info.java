package project.star.b2.model;

import lombok.Data;

@Data
public class Info {
	private int feeitem;
	private String parking;
	private String pet;
	private String elevator;
	private String veranda;
	private String builtin;
	private int optionitem;
	private String loan;
	private int supplyarea;
	private int maxfloor;
	private String heater;
	private String commingday;
	private String buildtype;
	private String content;
	private int room_no;
	
	/** 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static)  */
    private static int offset;      // LIMIT 절에서 사용할 검색 시작 위치
    private static int listCount;   // LIMIT 절에서 사용할 검색할 데이터 수
    
    public static int getOffset() {
        return offset;
    }
    
    public static void setOffset(int offset) {
        Info.offset = offset;
    }
    
    public static int getListCount() {
        return listCount;
    }
    
    public static void setListCount(int listCount) {
        Info.listCount = listCount;
    }
}
