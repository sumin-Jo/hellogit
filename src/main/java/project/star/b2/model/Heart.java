package project.star.b2.model;

import lombok.Data;

@Data
public class Heart {
	private int heartno;		// 좋아요의 일련번호
	private String regdate;		// 좋아요 클릭 일자
	private String editdate;	// 좋아요 변경 일자
	private int roomno;			// room 참조키
	private int userno;			// user 참조키
}
