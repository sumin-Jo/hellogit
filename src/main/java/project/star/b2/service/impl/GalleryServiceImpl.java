package project.star.b2.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.star.b2.model.Gallery;
import project.star.b2.service.GalleryService;

/** 매물 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
@Service
public class GalleryServiceImpl implements GalleryService {

    /** MyBatis */
    // --> import org.apache.ibatis.session.SqlSession
	@Autowired
    SqlSession sqlSession;

    /**
     * 매물 데이터 목록 조회
     * @return 조회 결과에 대한 컬렉션
     * @throws Exception
     */
    @Override
    public List<Gallery> getGalleryList(Gallery input) throws Exception {
        List<Gallery> result = null;

        try {
            result = sqlSession.selectList("GalleryMapper.selectList", input);

            if (result == null) {
                throw new NullPointerException("result=null");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("조회된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }

        return result;
    }

    /**
     * 매물 데이터가 저장되어 있는 갯수 조회
     * @return int
     * @throws Exception
     */
    @Override
    public int getGalleryCount(Gallery input) throws Exception {
        int result = 0;
        
        try {
            result = sqlSession.selectOne("GalleryMapper.selectCountAll", null);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }
        
        return result;
    }
}