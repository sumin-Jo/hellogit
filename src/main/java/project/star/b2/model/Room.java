package project.star.b2.model;

import lombok.Data;

/** 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Room {
	private int roomno;					// 방번호
	private String roomtype;			// 매물 종류 > 종류 선택 - 원룸 , 투룸 , 쓰리룸 , 오피스텔
	private String title;				// 상세설명 > 제목
	private String floor;				// 기본정보 > 건물층수 > 해당층수 : 반지층 / 옥탑 / 1층~20층
	private int area;					// 기본정보 > 건물크기 > 전용면적 제곱미터
	private int fee;					// 추가정보 > 관리비
	private String confirmdate;			// 확인매물 일자
	private String address;				// 도로명주소                                                    
	private String dong;				// 동
	private String ho;					// 호
	private double latitude;			// 위도
	private double longitude;			// 경도
	private String region_2depth_name;	// kakao api 를 위한 구 정보 저장
	private String region_3depth_name;	// kakao api 를 위한 동 정보 저장
	private int userno;					// user 참조키
    
    
    /** 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static)  */
    private static int offset;      // LIMIT 절에서 사용할 검색 시작 위치
    private static int listCount;   // LIMIT 절에서 사용할 검색할 데이터 수
    
    public static int getOffset() {
        return offset;
    }
    
    public static void setOffset(int offset) {
        Room.offset = offset;
    }
    
    public static int getListCount() {
        return listCount;
    }
    
    public static void setListCount(int listCount) {
        Room.listCount = listCount;
    }
}
