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
<!-- body -->
<title>Board Test</title>
<div>
	<div class="col-lg-12" style="max-height: 600px; height: 500px;">
		<div class="box box-primary">
			<h3 class="text-center">글 목록</h3>
			<div class="pTable">
				<table id="postList">
					<thead>
						<tr>
							<th style="width: 50px;">No</th>
							<th style="width: 400px;">제목</th>
							<th style="width: 400px;">내용</th>
							<th style="width: 100px;">작성자</th>
							<th style="width: 180px;">작성일자</th>
							<th style="width: 180px;">수정일자</th>
							<th style="width: 80px;">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="posts" items="${listAll}">
							<tr style="max-height: 35px;">
								<td style="width: 50px;">${posts.p_NO}</td>
								<td style="width: 400px;"><a
									href="${path}/read?p_NO=${posts.p_NO}" class="postTitle">
										${posts.p_TITLE}</a></td>
								<td class="postCon" style="width: 400px;">${posts.p_CON}</td>
								<td style="width: 100px;">${posts.m_NAME}</td>
								<td style="width: 180px;"><fmt:formatDate
										value="${posts.p_DATE}" pattern="yyyy-MM-dd a HH:mm" /></td>
								<td style="width: 180px;"><fmt:formatDate
										value="${posts.p_CDATE}" pattern="yyyy-MM-dd a HH:mm" /></td>
								<td style="width: 80px;">${posts.p_VIEW}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<br>
	<ul class="pagination">
	</ul>
	<div class="box-footer" style="height: 20px">
		<div class="pull-right">
			<button type="submit" class="btn btn-success btn-flat" id="writeBtn">
				<a href="${path}/write" class="btnLink"> <i class="fa fa-pencil"></i>글쓰기
				</a>
			</button>
		</div>
	</div>
	<br> <br>
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
