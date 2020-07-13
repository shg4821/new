package com.wi.bp;

import java.util.List;

public interface BoardService {
	
	void create(PostV postV) throws Exception;

	PostV read(int postNo) throws Exception;

	void update(PostV postV) throws Exception;

	void delete(int postNo) throws Exception;

	List<PostV> listAll() throws Exception;

}
