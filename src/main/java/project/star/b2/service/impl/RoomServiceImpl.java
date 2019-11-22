package project.star.b2.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.star.b2.model.Room;
import project.star.b2.service.RoomService;



/** 학과 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
@Slf4j
@Service
public class RoomServiceImpl implements RoomService {

    /** MyBatis */
    // --> import org.apache.ibatis.session.SqlSession
	@Autowired
    SqlSession sqlSession;

    /**
     * 학과 데이터 상세 조회
     * @param Room 조회할 학과의 일련번호를 담고 있는 Beans
     * @return 조회된 데이터가 저장된 Beans
     * @throws Exception
     */
    @Override
    public Room getRoomItem(Room input) throws Exception {
        Room result = null;

        try {
            result = sqlSession.selectOne("RoomMapper.selectItem", input);

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
     * 학과 데이터 목록 조회
     * @return 조회 결과에 대한 컬렉션
     * @throws Exception
     */
    @Override
    public List<Room> getRoomList(Room input) throws Exception {
        List<Room> result = null;

        try {
            result = sqlSession.selectList("RoomMapper.selectList", input);

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
     * 학과 데이터가 저장되어 있는 갯수 조회
     * @return int
     * @throws Exception
     */
    @Override
    public int getRoomCount(Room input) throws Exception {
        int result = 0;
        
        try {
            result = sqlSession.selectOne("RoomMapper.selectCountAll", input);
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 조회에 실패했습니다.");
        }
        
        return result;
    }

    /**
     * 학과 데이터 등록하기
     * @param Room 저장할 정보를 담고 있는 Beans
     * @throws Exception
     */
    @Override
    public int addRoom(Room input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.insert("RoomMapper.insertItem", input);

            if (result == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("저장된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 저장에 실패했습니다.");
        }

        return result;
    }

    /**
     * 학과 데이터 수정하기
     * @param Room 수정할 정보를 담고 있는 Beans
     * @throws Exception
     */
    @Override
    public int editRoom(Room input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.update("RoomMapper.updateItem", input);

            if (result == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("수정된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 수정에 실패했습니다.");
        }

        return result;
    }

    /**
     * 학과 데이터 삭제하기
     * @param Room 삭제할 학과의 일련번호를 담고 있는 Beans
     * @throws Exception
     */
    @Override
    public int deleteRoom(Room input) throws Exception {
        int result = 0;

        try {
            result = sqlSession.delete("RoomMapper.deleteItem", input);

            if (result == 0) {
                throw new NullPointerException("result=0");
            }
        } catch (NullPointerException e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("삭제된 데이터가 없습니다.");
        } catch (Exception e) {
            log.error(e.getLocalizedMessage());
            throw new Exception("데이터 삭제에 실패했습니다.");
        }

        return result;
    }
    @Override
    public List<Room> getRoomGalleryList(Room input) throws Exception {
        List<Room> result = null;

        try {
            result = sqlSession.selectList("RoomMapper.selectGalleryList", input);

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
    
}