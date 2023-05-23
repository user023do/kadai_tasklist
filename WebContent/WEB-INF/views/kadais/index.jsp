<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>メッセージ一覧</h2>
        <ul>
            <c:forEach var="kadai" items="${kadais}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${kadai.id}">
                        <c:out value="${kadai.id}" />
                    </a>
                    ：<c:out value="${kadai.title}"></c:out> &gt; <c:out value="${kadai.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規メッセージの投稿</a></p>

    </c:param>
</c:import>