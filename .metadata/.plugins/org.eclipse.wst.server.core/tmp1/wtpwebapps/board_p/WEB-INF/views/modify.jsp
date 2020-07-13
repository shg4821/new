<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.sql.ResultSet"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<div class="col-lg-12">
	<form name="updateform" action="${path}/modify.do" method="post"
		accept-charset="utf-8" role="form">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">글 수정</h3>
			</div>
			<div>글번호</div>
			<div>
				<input name="p_NO" value="${post.p_NO}" type="text"
					readonly="readonly" />
			</div>
			<div>작성자</div>
			<div>
				<input name="m_NAME" value="${post.m_NAME}" type="text"
					readonly="readonly" />
			</div>
			<div>게시글제목 :</div>
			<div>
				<input name="p_TITLE" value="${post.p_TITLE}" type="text" />
			</div>
			<div>게시글내용 :</div>
			<div>
				<textarea class="form-control" id="P_CON" name="p_CON" rows="15"
					style="resize: none;">${post.p_CON}</textarea>
			</div>
			<div>작성일자</div>
			<div>
				<fmt:formatDate value="${post.p_DATE}" pattern="yyyy-MM-dd HH:mm:ss" />
			</div>
			<div>
				<button type="submit" class="btn btn-warning modBtn">
					<i class="fa fa-save">수정</i>
				</button>

				<button type="reset" class="btn btn-warning">
					<i class="fa fa-reply">초기화</i>
				</button>
			</div>
		</div>
	</form>
</div>