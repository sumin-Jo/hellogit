package project.star.b2.model;

import lombok.Data;

@Data
public class BlackList {
	private int blackno;		// 강제로 탈퇴시킨 회원의 일련번호
	private String banname;		// 강제로 탈퇴시킨 회원의 이름
	private String banemail;	// 탈퇴시킨 회원의 이메일
	private String bantel;		// 탈퇴시킨 회원의 전화번호
}
