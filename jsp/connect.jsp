<%@ page language="java" pageEncoding="utf-8"%>

<jsp:include page="header.jsp" flush="true"/>
<table width="868" border="0" cellspacing="0" cellpadding="0">
    <tr class="main">
        <td class="left">
            <table align="center" width="186" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="/jinanluxi/image/title7.gif"></td>
                </tr>
                <tr height="25"></tr>
                <tr class="WebMenu">
                    <td>
                    &nbsp;&nbsp;
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13">
                        <a href="/jinanluxi/jsp/about">公司简介</a>
                    </td>
                </tr>
                <tr class="WebMenu">
                    <td>
                    &nbsp;&nbsp;
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/connect">联系我们</a>
                    </td>
                </tr>
            </table>
        </td>
            

        <td class="right">
            <table width="570" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="Location" width="25" height="32" align="left" bgcolor="#F4F4F4">
                        <img src="/jinanluxi/image/arrow1.gif" width="14" height="11">
                        <a href="/jinanluxi/jsp/index">首页</a>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/about">关于鲁西</a>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/connect">联系我们</a>
                    </td>
                </tr>
                <tr height="25"></tr>
                <tr>
                    <td><%= request.getAttribute("text") %></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp" flush="true"/>
