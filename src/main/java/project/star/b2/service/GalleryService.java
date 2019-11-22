package project.star.b2.service;

import java.util.List;

import project.star.b2.model.Gallery;


/** 갤러리 데이터 관리 기능을 제공하기 위한 Service 계층. */
public interface GalleryService {
    /**
     * 갤러리 데이터 목록 조회
     * @return 조회 결과에 대한 컬렉션
     * @throws Exception
     */
    public List<Gallery> getGalleryList(Gallery input) throws Exception;
    
    /**
     * 갤러리 데이터가 저장되어 있는 갯수 조회
     * @return int
     * @throws Exception
     */
    public int getGalleryCount(Gallery input) throws Exception;
    
}