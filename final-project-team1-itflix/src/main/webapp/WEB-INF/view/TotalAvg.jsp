<%@page import="com.itflix.dto.Movie"%>
<%@page
	import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%
	request.getAttribute("movieGrade");
%>
<!--single값 설정  -->
<c:set var="grades" value="${movieGrade.review.r_grade}" />
<!--MovieSingle 페이지 별점 계산 -->
<!--평점이 없는경우  -->
<c:if test="${grades==null }">
	<a style="font-size: 10pt; color: #0DEEC9">x</a>
</c:if>
<!--평점 0점 이상 20점 미만일 경우  -->
<c:if test="${grades ge 0 && grades lt 1}">
	<a style="font-size: 15pt; color: #0DEEC9">0</a>
</c:if>
<!--평점 20점 이상 40점 미만일 경우  -->
<c:if test="${grades ge 1 && grades lt 2}">
	<a style="font-size: 15pt; color: #0DEEC9">1</a>
</c:if>
<!--평점 40점 이상 60점 미만일 경우  -->
<c:if test="${grades ge 2 && grades lt 3}">
	<a style="font-size: 15pt; color: #0DEEC9">2</a>
</c:if>
<!--평점 60점 이상 80점 미만일 경우  -->
<c:if test="${grades ge 3 && grades lt 4}">
	<a style="font-size: 15pt; color: #0DEEC9">3</a>
</c:if>
<!--평점 80점 이상 90점 미만일 경우  -->
<c:if test="${grades ge 4 && grades lt 5}">
	<a style="font-size: 15pt; color: #0DEEC9">4</a>
</c:if>
<!-- 평점 100점 이상인 경우 -->
<c:if test="${grades eq 5}">
	<a style="font-size: 12pt; color: #0DEEC9">5</a>
</c:if>

