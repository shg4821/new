<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 작성</title>
</head>
<body>
	<div class="col-lg-12">
		<form role="form" id="writeform" action="/write" method="post">
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">글 작성</h3>
				</div>
				<div class="box-body">
					<div class="form-group">
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
					<button type="button" class="btn btn-primary">
						<i class="fa fa-list">목록</i>
					</button>
					<div calss="pull-right">
						<button type="reset" class="btn btn-warning">
							<i class="fa fa-reply">초기화</i>
						</button>
						<button type="button" class="btn btn-success">
							<i class="fa fa-save">저장</i>
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>