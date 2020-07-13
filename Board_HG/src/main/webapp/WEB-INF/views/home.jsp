<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.sql.ResultSet"%>


<!-- body -->
<style>
* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: left;
}

button[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.col-30 {
	float: left;
	width: 29%;
	margin-top: 6px;
	text-align: right;
}

.col-40 {
	float: left;
	width: 40%;
	margin-top: 6px;
}

.col-100 {
	float: left;
	width: 100%;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
/* 글목록 테이블  */
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: center;
	padding: 8px;
}

thead {
	border-top: black 3px solid;
	border-bottom: solid 2px #ED1C24;
	background-color: #131230;
	color: white;
	font-size: 14px;
	text-shadow: #ED1C24 0px 0px;
	padding: 10px 0px;
}

tr:nth-child(even) {
	background-color: #eaeaea;
}

.pTable {
	height: 400px;
}

/* 페이징 리스트  */
.pagination {
	text-align: center;
	align-items: center;
	align-content: center;
	justify-content: center;
}

.pagination ul {
	justify-content: center;
}

.pagination li {
	display: inline-block;
	margin-right: 5px !important;
	cursor: pointer;
	font-weight: bold;
}

.pagination a {
	display: inline-block;
	margin-right: 5px !important;
	cursor: pointer;
}

.pagination a:hover, .active {
	text-decoration: underline;
	color: #ED1C24;
}

.disabled a {
	visibility: hidden;
}
</style>

<title>Board Test</title>
<div>
	<div class="col-lg-12">
		<div class="box box-primary">
			<h3 class="text-center">글 목록</h3>
			<div class="pTable">
				<table id="postList">
					<thead>
						<tr>
							<th>No</th>
							<th>제목</th>
							<th>내용</th>
							<th>작성자</th>
							<th>작성일자</th>
							<th>수정일자</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${Post }">
							<tr>
								<td>${Post.P_NO }</td>
								<td>${Post.P_TITLE }</td>
								<td>${Post.P_CON }</td>
								<td>${Post.M_NAME }</td>
								<td>${Post.P_DATE }</td>
								<td>${Post.P_CDATE }</td>
								<td>${Post.P_VIEW }</td>
							</tr>
						</c:forEach>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
						<tr>
							<td>1</td>
							<td>ㅈㅁ</td>
							<td>ㄴㅇ</td>
							<td>ㅈㅅㅈ</td>
							<td>ㅈㅅㅇㅈ</td>
							<td>ㅅㅈㅇㅈ</td>
							<td>ㅈㅎㅅ</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<br>
	<ul class="pagination">
	</ul>
	<div class="box-footer" style="height: 20px">
		<div class="pull-left">
			<button type="button" class="btn btn-success btn-flat" id="writeBtn">
				<i class="fa fa-pencil"></i> 글쓰기
			</button>
		</div>
	</div>
	<br>
	<br>
	<script>
		function pagination() {
			var req_num_row = 10;
			var $tr = jQuery('tbody tr');
			var total_num_row = $tr.length;
			var num_pages = 0;
			if (total_num_row % req_num_row == 0) {
				num_pages = total_num_row / req_num_row;
			}
			if (total_num_row % req_num_row >= 1) {
				num_pages = total_num_row / req_num_row;
				num_pages++;
				num_pages = Math.floor(num_pages++);
			}

			jQuery('.pagination').append("<li><a class=\"prev\">◀</a></li>");

			for (var i = 1; i <= num_pages; i++) {
				jQuery('.pagination').append("<li><a>" + i + "</a></li>");
				jQuery('.pagination li:nth-child(2)').addClass("active");
				jQuery('.pagination a').addClass("pagination-link");
			}

			jQuery('.pagination').append("<li><a class=\"next\">▶</a></li>");

			$tr.each(function(i) {
				jQuery(this).hide();
				if (i + 1 <= req_num_row) {
					$tr.eq(i).show();
				}
			});

			jQuery('.pagination a').click(
					'.pagination-link',
					function(e) {
						e.preventDefault();
						$tr.hide();
						var page = jQuery(this).text();
						var temp = page - 1;
						var start = temp * req_num_row;
						var current_link = temp;

						jQuery('.pagination li').removeClass("active");
						jQuery(this).parent().addClass("active");

						for (var i = 0; i < req_num_row; i++) {
							$tr.eq(start + i).show();
						}

						if (temp >= 1) {
							jQuery('.pagination li:first-child').removeClass(
									"disabled");
						} else {
							jQuery('.pagination li:first-child').addClass(
									"disabled");
						}

					});

			jQuery('.prev').click(function(e) {
				e.preventDefault();
				jQuery('.pagination li:first-child').removeClass("active");
			});

			jQuery('.next').click(function(e) {
				e.preventDefault();
				jQuery('.pagination li:last-child').removeClass("active");
			});

		}

		jQuery('document').ready(function() {
			pagination();

			jQuery('.pagination li:first-child').addClass("disabled");

		});
	</script>
</div>
