package project.star.b2.model;

import lombok.Data;

@Data
public class FakeRoom {
	private int fakeno;		// 허위매물의 고유 일련번호
	private String hidden;	// 허위매물 숨김 처리 여부 / T - 숨김처리함 , F-숨김처리안함
	private String regdate;	// 허위매물 등록일자
	private String reason;	// 허위매물 신고사유
	private int roomno;		// room 참조키
	private int userno;		// user 참조키
}
