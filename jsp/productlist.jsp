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
                        <a href="/jinanluxi/jsp/productlist?product_genre_id=01">保肝护肾药物</a>
                    </td>
                </tr>
                <tr height="30">
                    <td>
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/productlist?product_genre_id=02">球虫肠炎</a>
                    </td>
                </tr>
                <tr height="30">
                    <td>
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/productlist?product_genre_id=03">腺肌胃炎</a>
                    </td>
                </tr>
                <tr height="30">
                    <td>
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/productlist?product_genre_id=04">大肠杆菌药物</a>
                    </td>
                </tr>
                <tr height="30">
                    <td>
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/productlist?product_genre_id=05">呼吸道药物</a>
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
                        <a href="/jinanluxi/jsp/productlist">产品展厅</a>
                    </td>
                </tr>

                <% 
                    ArrayList<String> product_id = (ArrayList)request.getAttribute("product_id");
                    ArrayList<String> product_name = (ArrayList)request.getAttribute("product_name");
                    for(int i=0;i<product_id.size();i++){
                %>
                <tr>
                    <td><a href="/jinanluxi/jsp/product?product_id=<%= product_id.get(i) %>"><%= product_name.get(i) %></a></td>
                </tr>
                <%
                    }
                %>
                
            </table>
        </td>
    </tr>
</table>

<jsp:include page="footer.jsp" flush="true"/>
