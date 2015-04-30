<%@ page language="java" pageEncoding="utf-8"%>

<jsp:include page="header.jsp" flush="true"/>
    <div class="main">
        <div class="left">
            <table width="186" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>用户登录</td>
                </tr>
                <tr height="273">
                </tr>
            </table>
        </div>
        <div class="right">
            <table width="570" border="0" cellspacing="5" cellpadding="0">
                <form action="loginAction" method="post">
                    <tr height="30">
                        <td align="right" width="70">用户名</td>
                        <td><input type="text" name="user_id"></td>
                    </tr>
                    <tr>
                        <td align="right" width="70">密码</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td width="70"></td>
                        <td><input type="submit" value="登录"></td>
                    </tr>
                    <tr height="200"></tr>
                </form>
            </table>
        </div>
    </div>
<jsp:include page="footer.jsp" flush="true"/>