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
            <table width="665" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="Location" colspan="2" width="25" height="32" align="left" bgcolor="#F4F4F4">
                        <img src="/jinanluxi/image/arrow1.gif" width="14" height="11">
                        <a href="/jinanluxi/jsp/index.jsp">首页</a>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/productlist">产品展厅</a>
                        <%
                            String product_genre_id = (String)request.getAttribute("product_genre_id");
                            String product_genre_name = (String)request.getAttribute("product_genre_name");
                            if(product_genre_id==null){
                            } else {
                        %>
                        <img src="/jinanluxi/image/arrow2.gif">
                        <a href="/jinanluxi/jsp/productlist?product_genre_id=<%= product_genre_id %>"><%= product_genre_name %></a>
                        <%
                            }
                        %>
                    </td>
                </tr>

                <tr>
                    <td>
                        <% 
                            ArrayList<String> product_id = (ArrayList)request.getAttribute("product_id");
                            ArrayList<String> product_name = (ArrayList)request.getAttribute("product_name");
                            ArrayList<String> image = (ArrayList)request.getAttribute("image");
                        %>
                        <table width='100%' border='0' cellspacing='0' cellpadding='0'>
                            <tr height="25"></tr>
                            <%
                                for(int i=0;i<3;i++){
                            %>
                                <tr>
                                <%
                                    for(int j=0;j<4;j++){
                                        if(i*4+j<product_id.size()){
                                %>
                                    <td width="25%">
                                        <table width='100%' border='0' cellspacing='0' cellpadding='0'>
                                            <tr>
                                                <td align="center"><a href="/jinanluxi/jsp/product?product_id=<%= product_id.get(i) %>"><img width="100" height="125" src="/jinanluxi/image/product_image/<%= image.get(i*4+j) %>"></a></td>
                                            </tr>
                                            <tr>
                                                <td class="picabc1" align="center"><a href="/jinanluxi/jsp/product?product_id=<%= product_id.get(i) %>"><%= product_name.get(i*4+j) %></a></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <%
                                        } else {
                                    %>
                                       <td></td>
                                    <%
                                        }
                                    }
                                %>
                                </tr>
                            <%
                                }
                            %>
                        </table>
                    </td>
                </tr>
                <tr height="40"></tr>
            </table>
        </td>
    </tr>
</table>

<jsp:include page="footer.jsp" flush="true"/>
