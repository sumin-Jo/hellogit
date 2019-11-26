package project.star.b2.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.star.b2.model.Room;
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


	@Override
	public List<Room> getRoomInfoList(Room input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public RoomInfo getRoomInfoItem(RoomInfo input) throws Exception {
		
		RoomInfo result1 = null;
		RoomInfo result2 = null;

        try {
        	result1 = sqlSession.selectOne("RoomMapper.selectItem", input);
            result2 = sqlSession.selectOne("InfoMapper.selectItem", input);

            if (result1 == null || result2 == null) {
                throw new NullPointerException("result=null");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("조회된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }

        return result1;
	}

	/**
     * 데이터 등록하기
     * @param Room 저장할 정보를 담고 있는 Beans
     * @throws Exception
     */
    @Override
    public int addRoomInfo(RoomInfo input) throws Exception {
        int result1 = 0;
        int result2 = 0;

        try {
            result1 = sqlSession.insert("RoomMapper.insertItem", input);
            // room 데이터가 들어가고나서 info PRI키가 되는 Room_no를 넣어준다.
            input.setRoomno(input.getRoomno());
            
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
    
    
    
    
    
    
    @Override
	public int getRoomInfoCount(Room input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int editRoomInfo(Room input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRoomInfo(Room input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
}