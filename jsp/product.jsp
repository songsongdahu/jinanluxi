<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>

<jsp:include page="header.jsp" flush="true"/>

<table width="868" border="0" cellspacing="0" cellpadding="0">
    <tr class="main">
        <td class="left">
            <table align="center" width="186" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="/jinanluxi/image/title4.gif"></td>
                </tr>
                <tr height="25"></tr>
                <%
                    ArrayList<String> product_genre_ids = (ArrayList)request.getAttribute("product_genre_ids");
                    ArrayList<String> product_genre_names = (ArrayList)request.getAttribute("product_genre_names");
                    for(int i=0;i<product_genre_ids.size();i++){
                %>
                <tr class="WebMenu">
                    <td>
                        &nbsp;&nbsp;
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13">
                        <a href="/jinanluxi/jsp/productlist?product_genre_id=<%= product_genre_ids.get(i) %>"><%= product_genre_names.get(i) %></a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
        </td>
            

        <td class="right">
            <table width="570" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <table width="90%" border="0" cellspacing="10" cellpadding="10">
                        <tr>
                            <td width="70%"><%= request.getAttribute("description") %></td>
                            <td><img src="/jinanluxi/image/product_image/<%= request.getAttribute("image") %>" height="180" width="129"></td>
                        </tr>

                    </table>
                </tr>
            </table>
        </td>
    </tr>
</table>

<jsp:include page="footer.jsp" flush="true"/>
