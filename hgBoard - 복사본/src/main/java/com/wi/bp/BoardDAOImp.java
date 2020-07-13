package com.wi.bp;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImp implements BoardDAO {
	
	private static final String NAMESPACE = "com.wi.bp.mapper.board.BoardMapper";
	
	@Autowired
	private final SqlSession sqlSession;
	
	@Inject
	public BoardDAOImp(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void create(PostV postV) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(NAMESPACE + ".create", postV);
	}

	@Override
	public PostV read(Integer postNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".read", postNo);
	}

	@Override
	public void update(PostV postV) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE + ".update", postV);
	}

	@Override
	public void delete(Integer postNo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(NAMESPACE + ".delete", postNo);
	}

	@Override
	public List<PostV> listAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}
	

}
