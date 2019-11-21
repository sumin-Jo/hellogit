package project.star.b2.model;

import lombok.Data;

@Data
public class Admin {
	private int adminno;	// 게시글의 일련번호
	private String title;	// 제목
	private String content;	// 내용
	private String regdate;	// 등록일자
	private String editdate;// 수정일자
	private String toggle;	// 공지사항인지 자주묻는질문인지 검사하기 위한 컬럼 / boolean 으로 검사
}
