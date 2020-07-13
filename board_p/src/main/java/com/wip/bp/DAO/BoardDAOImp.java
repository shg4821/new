package com.wip.bp.DAO;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wip.bp.PostV;

@Repository
public class BoardDAOImp implements BoardDAO {
	
	
	private static final String NAMESPACE = "com.wip.bp.DAO.BoardDAO";
	
	@Autowired
	private final SqlSessionTemplate sqlSession;
	
	@Inject
	public BoardDAOImp(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void create(PostV postV) throws Exception {
		sqlSession.insert(NAMESPACE + ".create", postV);
	}
	
	@Override
	public PostV read(Integer p_NO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".read", p_NO);
	}

	@Override
	public void update(PostV postV) throws Exception {
		sqlSession.update(NAMESPACE + ".update", postV);
	}

	@Override
	public void delete(Integer p_NO) throws Exception {
		sqlSession.delete(NAMESPACE + ".delete", p_NO);
	}

	@Override
	public List<PostV> listAll() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}

	@Override
	public void updateView(Integer p_NO) throws Exception {
		sqlSession.update(NAMESPACE + ".updateView", p_NO);
	}
}
