package com.wip.bp.DAO;

import java.util.List;

import com.wip.bp.PostV;

public interface BoardDAO {
	void create(PostV postV) throws Exception;

	PostV read(Integer p_NO) throws Exception;

	public void update(PostV postV) throws Exception;

	public void delete(Integer p_NO) throws Exception;
	
	List<PostV> listAll() throws Exception;
	
	void updateView(Integer p_NO) throws Exception;
}
