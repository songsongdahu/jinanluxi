<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>

<jsp:include page="header.jsp" flush="true"/>

<table width="868" border="0" cellspacing="0" cellpadding="0">
    <tr class="main">
        <td class="left">
            <table width="186" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="/jinanluxi/image/title3.gif"></td>
                </tr>
                <tr height="25"></tr>
                <tr class="WebMenu">
                    <td>
                        &nbsp;&nbsp;
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13">
                        <a href="/jinanluxi/jsp/news1">企业动态</a>
                    </td>
                </tr>
                <tr class="WebMenu">
                    <td>
                        &nbsp;&nbsp;
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/connect">公告栏</a>
                    </td>
                </tr>
            </table>
        </td>
            

        <td class="right">
            <table width="665" border="0" cellspacing="0" cellpadding="0">
                <tr height="20"></tr>
                <tr>
                    <td align="center">
                        <table width="90%" border="0" cellspacing="0" cellpadding="0">
                            <tr><td align="center">
                                <font style="font-size:16px;line-height:30px;font-weight:bold;color:#ff6600"><%= request.getAttribute("title") %></font>
                            </td></tr>
                            <tr><td>
                                <hr width="100%" size="1" noshade="noshade" color="#dddddd">
                            </td></tr>
                            <tr><td colspan="2" style="font-weight:normal;font-size:14px;color:#000000;line-height:25px">
                                <%= request.getAttribute("content") %>
                            </td></tr>
                        </table>
                    </td>
                </tr>
                <tr height="100"></tr>
            </table>
        </td>
    </tr>
</table>

<jsp:include page="footer.jsp" flush="true"/>
