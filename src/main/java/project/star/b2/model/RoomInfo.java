package project.star.b2.model;

import lombok.Data;

@Data
public class RoomInfo {
	
		/** room */
	    private int roomno;
	    private String roomtype;
	    private String title;
	    private String floor;
	    private int area;
	    private int fee;
	    private String confirmdate;
	    private String address;
	    private String dong;
	    private String ho;
	    private double latitude;
	    private double longitude;
	    private String region_2depth_name;
	    private String region_3depth_name;
	    private int userno;
	    
	   /** info */
	    private int feeitem;
		private int parking;
		private int pet;
		private int elevator;
		private int veranda;
		private int builtin;
		private int optionitem;
		private int loan;
		private int supplyarea;
		private int maxfloor;
		private int heater;
		private String commingday;
		private String buildtype;
		private String content;
	    
	    
	    /** 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static)  */
	    private static int offset;      // LIMIT 절에서 사용할 검색 시작 위치
	    private static int listCount;   // LIMIT 절에서 사용할 검색할 데이터 수
	    
	    public static int getOffset() {
	        return offset;
	    }
	    
	    public static void setOffset(int offset) {
	        RoomInfo.offset = offset;
	    }
	    
	    public static int getListCount() {
	        return listCount;
	    }
	    
	    public static void setListCount(int listCount) {
	        RoomInfo.listCount = listCount;
	    }

}
