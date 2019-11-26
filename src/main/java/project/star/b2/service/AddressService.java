package project.star.b2.service;


import java.util.List;

import project.star.b2.model.AddDB;


/** Address 데이터 관리 기능을 제공하기 위한 Service 계층. */
public interface AddressService {
	
	/**
	 * Address 데이터 목록 조회
	 * @param   input   검색 조건을 담고 있는 Beans
	 * @return  조회 결과에 대한 컬렉션
	 * @throws  Exception
	 */
	public List<AddDB> getAddressList(AddDB input) throws Exception;
	
	/**
	 * Address 데이터 등록하기
	 * @param   input   저장할 데이터들을 담고 있는 Beans
	 * @return  저장된 데이터 수
	 * @throws  Exception
	 */
	public int addAddress(AddDB input) throws Exception;
	
}