<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 작성</title>
</head>
<body>
	<div class="col-lg-12">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">글 제목 :</h3>
			</div>
			<div class="box-body" style="height: 700px">${Post.P_CON }</div>
			<div class="box-footer">
				<div class="user-block">
					<label for="P_TITLE">제목</label> <input class="form-control"
						id="P_TITLE" name="P_TITLE" placeholder="제목을 입력하세요">
				</div>
				<div class="form-group">
					<label for="P_CON">내용</label>
					<textarea class="form-control" id="P_CON" name="P_CON" rows="30"
						style="resize: none;" placeholder="내용을 입력하세요"></textarea>
				</div>
				<div class="form-group">
					<label for="M_NAME">작성자</label> <input class="form-control"
						id="M_NAME" name="M_NAME">
				</div>
			</div>
			<div class="box-footer">
				<form role="form" method="post">
					<input type="hidden" name="P_NO" value="${post.P_NO} ">
				</form>
				<button type="button" class="btn btn-primary listBtn">
					<i class="fa fa-list">목록</i>
				</button>
				<div calss="pull-right">
					<button type="reset" class="btn btn-warning cancelBtn">
						<i class="fa fa-trash">수정</i>
					</button>
					<button type="button" class="btn btn-success modBtn">
						<i class="fa fa-save">삭제</i>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>