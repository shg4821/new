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
	<form role="form" id="writeform" action="${path}/write.do"
		method="post" accept-charset="utf-8">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">글 작성</h3>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label for="P_TITLE">제목</label> <input class="form-control"
						id="P_TITLE" name="p_TITLE" placeholder="제목을 입력하세요">
				</div>
				<div class="form-group">
					<label for="P_CON">내용</label>
					<textarea class="form-control" id="P_CON" name="p_CON" rows="15"
						style="resize: none;" placeholder="내용을 입력하세요"></textarea>
				</div>
				<div class="form-group">
					<label for="M_NAME">작성자</label> <input class="form-control"
						id="M_NAME" name="m_NAME">
				</div>
			</div>
			<div class="box-footer">
				<button type="button" class="btn btn-primary">
					<a href="${path}/posts" class="btnLink"><i class="fa fa-list">목록</i></a>
				</button>
				<div class="pull-right">
					<button type="reset" class="btn btn-warning">
						<i class="fa fa-reply">초기화</i>
					</button>
					<button type="submit" class="btn btn-success">
						<i class="fa fa-save"></i>저장
					</button>
				</div>
			</div>
		</div>
	</form>
</div>