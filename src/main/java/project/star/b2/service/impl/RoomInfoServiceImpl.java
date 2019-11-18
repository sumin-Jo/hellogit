package project.star.b2.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.star.b2.model.RoomInfo;
import project.star.b2.service.RoomInfoService;



/** 학과 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
@Service
public class RoomInfoServiceImpl implements RoomInfoService {

	/** MyBatis */
    // --> import org.apache.ibatis.session.SqlSession
	@Autowired
    SqlSession sqlSession;
	
    /**
     * 학과 데이터 등록하기
     * @param Room 저장할 정보를 담고 있는 Beans
     * @throws Exception
     */
    @Override
    public int addRoomInfo(RoomInfo input) throws Exception {
        int result1 = 0;
        int result2 = 0;

        try {
            result1 = sqlSession.insert("RoomMapper.insertItem", input);
            
            input.setRoom_no(input.getNo());
            
            result2 = sqlSession.insert("InfoMapper.insertItem", input);
            

            if (result1 == 0 || result2 == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("저장된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 저장에 실패했습니다.");
        }

        return (result1+result2)/2;
    }
}