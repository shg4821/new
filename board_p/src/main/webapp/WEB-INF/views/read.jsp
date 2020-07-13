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
	<div class="box box-primary">
		<div class="box-body">
			<table class="pInfo">
				<tr>
					<th>작성일자</th>
					<td colspan="2"><fmt:formatDate value="${post.p_DATE}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<th>수정일자</th>
					<td colspan="2"><fmt:formatDate value="${post.p_CDATE}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<th>조회수</th>
					<td>${post.p_VIEW}</td>
				</tr>
				<tr>
					<th>글제목</th>
					<td colspan="5">${post.p_TITLE}</td>
					<th>글쓴이</th>
					<td>${post.m_NAME}</td>
				</tr>
				<tr>
					<th height="400px;">글내용</th>
					<td colspan="5">${post.p_CON}</td>
				</tr>
			</table>
		</div>
		<div class="box-footer" style="margin: 10px;">
			<form role="form" method="post">
				<input type="hidden" name="p_NO" value="${post.p_NO}">
			</form>
			<button type="submit" class="btn btn-primary listBtn">
				<a href="${path}/posts" class="btnLink"><i class="fa fa-list">목록</i></a>
			</button>
			<div class="pull-right">
				<button type="button" class="btn btn-warning modBtn">
					<a href="${path}/modify?p_NO=${post.p_NO}" class="btnLink"><i
						class="fa fa-save">수정</i></a>
				</button>
				<button type="submit" class="btn btn-success delBtn">
					<a href="${path}/delete?p_NO=${post.p_NO}" class="btnLink"><i
						class="fa fa-trash">삭제</i></a>
				</button>
			</div>
		</div>
	</div>
</div>