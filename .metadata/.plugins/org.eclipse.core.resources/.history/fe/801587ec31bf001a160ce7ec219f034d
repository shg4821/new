package com.wi.bhg.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wi.bhg.PostV;

@Repository
public class BoardDAOImp implements BoardDAO {
	
	@Autowired
	private static final String NAMESPACE = "com.wi.bhg.mapper.BoardMapper";
	
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
