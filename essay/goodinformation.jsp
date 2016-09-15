<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<HEAD><%@ include file="titlea.txt" %></HEAD>
<BODY BGCOLOR=ivory>
<td><A href="management.jsp"><font size=4>管理首页</font></A>
<br>
<CENTER>
<%! int a=5; %>
<% a++; %>
<FORM action="helpgoodlist" name=form >
<table>
<tr><td>商品号：</td><td><Input type=number name="haoma" value="<%=a%>"/></td></tr>
<tr><td>商品名称：</td><td><Input type=text name="gname" size="60"/></td></tr>
<tr><td>商品价格：</td><td><Input type=number name="price" size="10"/></td></tr>
<tr><td>商品库存：</td><td><Input type=number name="gnumber" size="10"/></td></tr>
<tr><td>商品品牌：</td><td><Input type=text name="brand" size="30"/></td></tr>
</table>
<table>
<tr><td>商品描述：</td></tr>
<tr><td><TextArea type=text name="word" Rows="10" Cols="60"/></TextArea></td></tr>
</table>
<table>
<tr><td>商品图片url：</td></tr>
<tr><td><TextArea type=text name="url" Rows="10" Cols="60"/></TextArea></td></tr>
</table>
<INPUT type="submit" name="g" value="提交">
</FORM>
</CENTER>
</BODY><HTML>