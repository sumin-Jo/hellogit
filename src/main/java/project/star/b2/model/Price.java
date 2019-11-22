package project.star.b2.model;

import lombok.Data;

@Data
public class Price {
	private String priceno;		// 거래정보 일련번호 (전월세 가격)
	private int deposit; 		// 거래정보 > 거래종류 > 보증금
	private String dealingtype;	// 거래정보 > 거래종류 > 전세,월세,매매
	private int price;			// 거래정보 > 거래종류 > 거래금액(월세,매매,전세)
	private String short_room;	// 거래정보 > 거래종류 > 단기가능
	private int roomno;			// room 참조키
}
