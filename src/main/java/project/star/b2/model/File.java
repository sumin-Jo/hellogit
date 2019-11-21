package project.star.b2.model;

import lombok.Data;

@Data
public class File {
	private int fileno;				// 첨부파일의 일련번호
	private String origin_name;		// 파일이름 원본
	private String file_dir;		// 업로드 된 폴더 경로
	private String file_name;		// 저장된 파일 이름
	private String content_type;	// 파일형식
	private int file_size;			// 파일크기
	private String regdate;			// 등록일시
	private String editdate;		// 변경일시
	private int room_no;			// room 참조키
}
