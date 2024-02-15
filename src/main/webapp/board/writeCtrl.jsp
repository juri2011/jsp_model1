<%@page import="srv.BoardService"%>
<%@page import="ioc.Factory"%>
<%@page import="model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	
	BoardDTO dto = new BoardDTO();
	dto.setTitle(title);
	dto.setContent(content);
	dto.setUserid(userid);
	dto.setName(name);
	
	BoardService boardSrv = Factory.INSTANCE.getBoardSrv();
	boardSrv.save(dto);
	
	response.sendRedirect("./list.jsp");
	
%>