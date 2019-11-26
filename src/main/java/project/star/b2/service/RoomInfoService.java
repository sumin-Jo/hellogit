package project.star.b2.service;

import java.util.List;

import project.star.b2.model.Room;
import project.star.b2.model.RoomInfo;

public interface RoomInfoService {
	
    
	/** 조회 */
    public List<Room> getRoomInfoList(Room input) throws Exception;
    
    public RoomInfo getRoomInfoItem(RoomInfo input) throws Exception;

    public int getRoomInfoCount(Room input) throws Exception;
    
    
    /** 추가, 수정, 삭제 */
    	
    public int addRoomInfo(RoomInfo input) throws Exception;
    
    public int editRoomInfo(Room input) throws Exception;
    
    public int deleteRoomInfo(Room input) throws Exception;
	
    
	
	

	
}
