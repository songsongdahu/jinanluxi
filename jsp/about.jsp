<%@ page language="java" pageEncoding="utf-8"%>

<jsp:include page="header.jsp" flush="true"/>
    <div class="main">
        <div class="left">
            <table width="186" border="0" cellspacing="0" cellpadding="0">
                <tr height="30">
                    <td width="24"><img src="/jinanluxi/image/arrow3.gif" width="13" height="13"></td>
                    <td><a href="/jinanluxi/jsp/about">公司简介</a></td>
                </tr>
                <tr height="30">
                    <td width="24"><img src="/jinanluxi/image/arrow3.gif" width="13" height="13"></td>
                    <td><a href="">联系我们</a></td>
                </tr>
            </table>
        </div>
        <div class="right">
            <table width="570" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="25" height="32" align="center" bgcolor="#F4F4F4"><img src="/jinanluxi/image/arrow1.gif" width="14" height="11"></td>
                    <td bgcolor="#F4F4F4" class="Location">
                        <a href="/jinanluxi/jsp/index.jsp">首页</a>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/about">关于鲁西</a>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/about">公司简介</a>
                    </td>
                </tr>
                <tr>
                    <td><%= request.getAttribute("text") %></td>
                </tr>
            </table>
        </div>
    </div>

<jsp:include page="footer.jsp" flush="true"/>
