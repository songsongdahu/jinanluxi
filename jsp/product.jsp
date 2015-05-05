<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>

<jsp:include page="header.jsp" flush="true"/>

<table width="868" border="0" cellspacing="0" cellpadding="0">
    <tr class="main">
        <td class="left">
            <table width="186" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="/jinanluxi/image/about_menu_title.gif"></td>
                </tr>

                <tr height="30">
                    <td>
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13">
                        <a href="/jinanluxi/jsp/news1">企业动态</a>
                    </td>
                </tr>
                <tr height="30">
                    <td>
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/connect">公告栏</a>
                    </td>
                </tr>
            </table>
        </td>
            

        <td class="right">
            <table width="570" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="2" width="25" height="32" align="center" bgcolor="#F4F4F4">
                        <img src="/jinanluxi/image/arrow1.gif" width="14" height="11">
                        <a href="/jinanluxi/jsp/index.jsp">首页</a>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/news">新闻动态</a>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/news1">企业动态</a>
                    </td>
                </tr>

                <tr>
                    <td><%= request.getAttribute("description") %></td>
                    <td><img src="/jinanluxi/image/product_image/<%= request.getAttribute("image") %>"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<jsp:include page="footer.jsp" flush="true"/>
