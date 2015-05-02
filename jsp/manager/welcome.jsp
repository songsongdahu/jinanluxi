<%@ page language="java" pageEncoding="utf-8"%>

<jsp:include page="header.jsp" flush="true"/>
    <div class="main">
        <div class="left">
            <table width="186" height="370" border="0" cellspacing="0" cellpadding="0">
                <tr height="30">
                    <td>用户管理</td>
                </tr>
                <tr height="30">
                    <td>产品管理</td>
                </tr>
                <tr height="30">
                    <td>文章管理</td>
                </tr>
                <tr height="280"></tr>
            </table>
        </div>
        <div class="right">
            <table width="570" height="370" border="0" cellspacing="5" cellpadding="0">
                <tr height="30">
                	<td>欢迎，<%= request.getAttribute("user_name") %></td>
                </tr>
                <tr height="340"></tr>
            </table>
        </div>
    </div>

<jsp:include page="footer.jsp" flush="true"/>
