package project.star.b2.service;

import java.util.List;

import project.star.b2.model.Info;


/** 추가정보 데이터 관리 기능을 제공하기 위한 Service 계층. */
public interface InfoService {
    /**
     * 추가정보 데이터 상세 조회
     * @param Info 조회할 추가정보의 일련번호를 담고 있는 Beans
     * @return 조회된 데이터가 저장된 Beans
     * @throws Exception
     */
    public Info getInfoItem(Info input) throws Exception;
    
    /**
     * 추가정보 데이터 목록 조회
     * @return 조회 결과에 대한 컬렉션
     * @throws Exception
     */
    public List<Info> getInfoList(Info input) throws Exception;
    
    /**
     * 추가정보 데이터가 저장되어 있는 갯수 조회
     * @return int
     * @throws Exception
     */
    public int getInfoCount(Info input) throws Exception;
    
    /**
     * 추가정보 데이터 등록하기
     * @param Info 저장할 정보를 담고 있는 Beans
     * @throws Exception
     */
    public int addInfo(Info input) throws Exception;
    
    /**
     * 추가정보 데이터 수정하기
     * @param Info 수정할 정보를 담고 있는 Beans
     * @throws Exception
     */
    public int editInfo(Info input) throws Exception;
    
    /**
     * 추가정보 데이터 삭제하기
     * @param Info 삭제할 추가정보의 일련번호를 담고 있는 Beans
     * @throws Exception
     */
    public int deleteInfo(Info input) throws Exception;
    
}