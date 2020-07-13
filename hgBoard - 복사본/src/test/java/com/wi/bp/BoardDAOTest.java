package com.wi.bp;

import static org.junit.jupiter.api.Assertions.*;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/java/application-Context.xml" })

public class BoardDAOTest {
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);

	@Inject
	private BoardDAO boardDAO;

	// 작성테스트
	@Test
	public void testCreate() throws Exception {
		PostV post = new PostV();
		post.setP_TITLE("javaTest1");
		post.setP_CON("javaTest1_Contents...");
		post.setM_NAME("javaTest1_Creater");
		boardDAO.create(post);

		fail("Not yet implemented");
	}

	// 조회 테스트
	@Test
	public void testRead() throws Exception {
		logger.info(boardDAO.read(1).toString());
	}

	// 수정테스트
	@Test
	public void testUpdate() throws Exception {
		PostV post = new PostV();
		post.setP_TITLE("이건 제목이야 ");
		post.setP_CON("이건 내용이고 ...");
		post.setM_NAME("난작성자야 ");
		boardDAO.update(post);

		fail("Not yet implemented");
	}

	// 삭제 테스트
	@Test
	public void testDel() throws Exception {
		boardDAO.delete(1);
	}

}
