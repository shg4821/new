package com.wip.bp.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.wip.bp.PostV;
import com.wip.bp.DAO.BoardDAO;

@Service
public class BoardServiceImp implements BoardService {
	
	private final BoardDAO boardDAO;
	
	@Inject
	public BoardServiceImp (BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}

	@Override
	public void create(PostV postV) throws Exception {
		boardDAO.create(postV);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public PostV read(Integer p_NO) throws Exception {

		return boardDAO.read(p_NO);
	}

	@Override
	public void update(PostV postV) throws Exception {
		boardDAO.update(postV);
	}

	@Override
	public void delete(Integer p_NO) throws Exception {
		boardDAO.delete(p_NO);
	}

	@Override
	public List<PostV> listAll() throws Exception {
		return boardDAO.listAll();
	}

	@Override
	public void updateView(Integer p_NO) throws Exception {
		boardDAO.updateView(p_NO);
	}

}
