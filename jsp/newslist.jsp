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
                        <a href="/jinanluxi/jsp/newslist?genre_id=11">企业动态</a>
                    </td>
                </tr>
                <tr height="30">
                    <td>
                        <img src="/jinanluxi/image/arrow3.gif" width="13" height="13"> 
                        <a href="/jinanluxi/jsp/newslist?genre_id=12">公告栏</a>
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
                        <a href="/jinanluxi/jsp/newslist">新闻动态</a>
                        <% 
                            String genre_id = (String)request.getAttribute("genre_id");
                            if(genre_id==null){

                            } else if(genre_id.equals("11")){
                        %>
                            <img src="/jinanluxi/image/arrow2.gif">
                            <a href="/jinanluxi/jsp/newslist?genre_id=11">企业动态</a>
                        <%  
                            } else if(genre_id.equals("12")){
                        %>
                            <img src="/jinanluxi/image/arrow2.gif">
                            <a href="/jinanluxi/jsp/newslist?genre_id=12">公告板</a>
                        <%     
                            }
                        %>
                        
                    </td>
                </tr>

                <% 
                    ArrayList<String> article_id = (ArrayList)request.getAttribute("article_id");
                    ArrayList<String> title = (ArrayList)request.getAttribute("title");
                    ArrayList<String> creation_date = (ArrayList)request.getAttribute("creation_date");
                    for(int i=0;i<title.size();i++){
                %>
                <tr>
                    <td><a href="/jinanluxi/jsp/news?article_id=<%= article_id.get(i) %>"><%= title.get(i) %></a></td>
                    <td><%= creation_date.get(i).substring(0,10) %></td></tr>
                <%
                    }
                %>
                
            </table>
        </td>
    </tr>
</table>

<jsp:include page="footer.jsp" flush="true"/>
