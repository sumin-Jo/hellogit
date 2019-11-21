package project.star.b2.model;

import lombok.Data;

@Data
public class Info {
	private int feeitem;		// 추가정보 > 관리비항목 : 인터넷,유선tv,청소비,수도세,도시가스,전기세,기타
	private int parking;		// 추가정보 > 주차여부 : 불가능,가능 00만원
	private int pet;			// 추가정보 > 반려동물 값 : T / F
	private int elevator;	// 추가정보 > 엘레베이터 : 없음, 있음
	private int veranda; 	// 추가정보 > 베란다/발코니 : 없음,있음
	private int builtin; 	// 추가정보 > 빌트인 : 없음 , 있음
	private int optionitem; 	// 추가정보 > 옵션항목 : 에어컨,세탁기,침대,책상,옷장,TV,신발장,냉장고,가스레인지,인덕션,전자레인지,전자도어락,비데
	private int loan; 		// 추가정보 > 전세자금대출 : 불가능 , 가능
	private int supplyarea; 	// 기본정보 > 건물크기 > 공급면적 제곱미터
	private int maxfloor; 		// 기본정보 > 건물층수 > 건물층수 : 1층 ~ 20층
	private int heater; 		// 기본정보 > 난방종류: 중앙 난방 , 개별난방 , 지역 난방
	private String commingday; 	// 기본정보 > 입주가능일 : 즉시 입주 , 날짜 협의 , 날짜 선택
	private String buildtype; 	// 매물종류 > 건물유형 - 단독주택 , 다가구주택 , 빌라/연립/다세대
	private String content; 	// 상세설명 > 상세설명 본문
	private int roomno;

	/** 페이지 구현이 필요한 경우 아래 속성들을 추가한다. (static) */
	private static int offset; 		// LIMIT 절에서 사용할 검색 시작 위치
	private static int listCount;	// LIMIT 절에서 사용할 검색할 데이터 수

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
