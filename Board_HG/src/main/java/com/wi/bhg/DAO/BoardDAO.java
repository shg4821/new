package com.wi.bhg.DAO;

import java.util.List;

import com.wi.bhg.PostV;

public interface BoardDAO {
	void create(PostV postV) throws Exception;

	PostV read(Integer postNo) throws Exception;

	public void update(PostV postV) throws Exception;

	public void delete(Integer postNo) throws Exception;
	
	List<PostV> listAll() throws Exception;
}
