package com.wip.bp.Service;

import java.util.List;


import com.wip.bp.PostV;

public interface BoardService {
	
	void create(PostV postV) throws Exception;

	PostV read(Integer p_NO) throws Exception;

	void update(PostV postV) throws Exception;

	void delete(Integer p_NO) throws Exception;

	List<PostV> listAll() throws Exception;
	
	void updateView(Integer p_NO) throws Exception;

}
