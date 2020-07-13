package com.wi.bp;

import java.util.List;

public interface BoardDAO {
	void create(PostV postV) throws Exception;

	PostV read(Integer postNo) throws Exception;

	public void update(PostV postV) throws Exception;

	public void delete(Integer postNo) throws Exception;
	
	List<PostV> listAll() throws Exception;
}
