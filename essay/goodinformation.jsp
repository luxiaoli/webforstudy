<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<HEAD><%@ include file="titlea.txt" %></HEAD>
<BODY BGCOLOR=ivory>
<td><A href="management.jsp"><font size=4>������ҳ</font></A>
<br>
<CENTER>
<%! int a=5; %>
<% a++; %>
<FORM action="helpgoodlist" name=form >
<table>
<tr><td>��Ʒ�ţ�</td><td><Input type=number name="haoma" value="<%=a%>"/></td></tr>
<tr><td>��Ʒ���ƣ�</td><td><Input type=text name="gname" size="60"/></td></tr>
<tr><td>��Ʒ�۸�</td><td><Input type=number name="price" size="10"/></td></tr>
<tr><td>��Ʒ��棺</td><td><Input type=number name="gnumber" size="10"/></td></tr>
<tr><td>��ƷƷ�ƣ�</td><td><Input type=text name="brand" size="30"/></td></tr>
</table>
<table>
<tr><td>��Ʒ������</td></tr>
<tr><td><TextArea type=text name="word" Rows="10" Cols="60"/></TextArea></td></tr>
</table>
<table>
<tr><td>��ƷͼƬurl��</td></tr>
<tr><td><TextArea type=text name="url" Rows="10" Cols="60"/></TextArea></td></tr>
</table>
<INPUT type="submit" name="g" value="�ύ">
</FORM>
</CENTER>
</BODY><HTML>