package project.star.b2.service;

import java.util.List;

import project.star.b2.model.Price;


public interface PriceService {
	
	public Price getPriceItem(Price input) throws Exception;
	
	public List<Price> getPriceList(Price input) throws Exception;
	
	public int getPriceCount(Price input) throws Exception;

	public int addPrice(Price input) throws Exception;
	
	public int editPrice(Price input) throws Exception;

	public int deletePrice(Price input) throws Exception ;
}