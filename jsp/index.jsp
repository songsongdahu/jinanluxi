<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>

<jsp:include page="header.jsp" flush="true"/>

<table width="868" border="0" cellspacing="0" cellpadding="0">
    <tr class="main">
        <td class="left">
            <table width="186" border="0" cellspacing="0" cellpadding="0">
                <tr><td height="3"></td></tr>
                <tr><td><img src="/jinanluxi/image/title1.gif" width="186" height="45" /></td></tr>
                <tr><td><a href=""><img src="/jinanluxi/image/d2.gif" width="186" height="43" border="0" /></a></td></tr>
                <tr><td><a href=""><img src="/jinanluxi/image/d4.gif" width="186" height="43" border="0" /></a></td></tr>
                <tr><td><img src="/jinanluxi/image/title7.gif" width="186" height="45" /></td></tr>
                <tr>
                    <td class="lxwm"><b>济南鲁西兽药有限公司</b><br>
                        联系电话：<br>0531-87433757<br>0531-87433758<br>产品代理：<br>18660170656<br>技术咨询：<br>18653151983<br>地址：<br>济南长清崮云湖工业园
                    </td>
                </tr>
            </table>
        </td>
        <td class="right">
            <table width="650" border="0" align="center" cellpadding="6" cellspacing="0">
                <tr>
                    <td align="center"><img src="/jinanluxi/image/r1.gif" width="303" height="54" /></td>
                    <td align="center"><img src="/jinanluxi/image/r2.gif" width="303" height="54" /></td>
                </tr>

                <tr>
                    <td>
                        <img src="/jinanluxi/image/gspic.jpg" border=0 hspace="12" vspace="6" align="left">
                        <font style="font-weight: normal; font-size: 12px; line-height: 24px">济南鲁西兽药有限公司是一家从事兽药原料、兽药制剂、饲料添加剂的研发生产、销售、和技术服务为一体的多元化企业。公司成立于2004年，技术依托于中国药学院、山东农业大学等权威机构。公司整合国内外先进的技术，全力提升产品的科技含量，确保产品的安全高效。同时根据市场的需求，推出了一系列高质量、好销售的产品...[<a href="/jinanluxi/jsp/about">详细介绍</a>]</font>
                    </td>
                    <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <%
                            ArrayList<String> article_id = (ArrayList)request.getAttribute("article_id");
                            ArrayList<String> title = (ArrayList)request.getAttribute("title");
                            for(int i=0;i<article_id.size();i++){
                            %>
                            <tr><td class='ListTitle' height="30">
                                <a href="/jinanluxi/jsp/news?article_id=<%= article_id.get(i) %>"><%= title.get(i) %></a>
                            </td></tr>
                            <%
                            }
                            %>
                        </table>
                    </td>
                </tr>
                    
                <tr>
                    <td colspan="2" align="center">
                        <img src="/jinanluxi/image/r3.gif" width="654" height="33"/>
                        <div id="gundong" 
                    style="width:630;height:130px;overflow:hidden;" >
                            <table cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td id="gundong1">
                                    	<table width="630" cellspacing="0" cellpadding="0" border="0">
                                            <tr>
                                            <%
                                                ArrayList<String> product_id = (ArrayList)request.getAttribute("product_id");
                                                ArrayList<String> product_name = (ArrayList)request.getAttribute("product_name");
                                                ArrayList<String> image = (ArrayList)request.getAttribute("image");
                                                for(int i=0;i<product_id.size();i++){
                                            %>
                                                <td class="picl">
                                                    <a href=""><img src="/jinanluxi/image/product_image/<%= image.get(i) %>"></a>
                                                    <br>
                                                    <a href="/jinanluxi/jsp/product?product_id=<%= product_id.get(i) %>"><%= product_name.get(i) %></a>
                                                </td>
                                            <%
                                                }
                                            %>
                                            </tr>
                                        </table>
                                    </td>
                                    <td id="gundong2">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp" flush="true"/>

<script> 
    var speed=20;  
    gundong2.innerHTML=gundong1.innerHTML; 

    function Marquee(){ 
        if(gundong2.offsetWidth-gundong.scrollLeft<=0){ 
            gundong.scrollLeft-=gundong1.offsetWidth;
        } 
        else{ 
            gundong.scrollLeft++; 
        } 
    } 

    var Mygundong=setInterval(Marquee,speed); 
    //alert(Mygundong); 
    gundong.onmouseover=function()  
    {
    	clearInterval(Mygundong);
    } 
    gundong.onmouseout=function()  
    {
        Mygundong=setInterval(Marquee,speed);
    } 
</script>

