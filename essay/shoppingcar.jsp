<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.data.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="mybean.data.Login"%>
<jsp:useBean id="login" class="mybean.data.Login" scope="session"/>
<%! int a=0; %>
<% a++;
if(login.getLogname()==null){ %>
<jsp:forward page="login.jsp"/>
<% } 
else{ %>
<HTML><BODY BGCOLOR=ivory>
<HEAD><%@ include file="title.txt" %></HEAD>
<A href="selfinformation.jsp">�ҵ���Ϣ</A>
<A href="shoppingcar.jsp">���ﳵ</A>
<A href="goodtraderecord.jsp">������Ʒ��¼</A>

<FORM action="allgoodtrade" method=post>
<CENTER>
<table>
<br><tr><td>�����ţ�</td><td><input type="text" name=dingdanhao value="<%=a%>"></td></tr>
<br><tr><td>��Ʒ���ƣ�</td><td><input type="text" name=goodname value="<%=request.getParameter("goodname")%>"></td></tr>
<br><tr><td>��Ʒ�۸�</td><td><input type="text" name=goodprice value="<%=request.getParameter("goodprice")%>"></td></tr>
<br><tr><td>��Ʒ������</td><td><input type="text" name=goodnumber value="<%=request.getParameter("goodnumber")%>"></td></tr>
<br><tr><td>��Ʒ�ţ�</td><td><input type="text" name=ghaoma value="<%=request.getParameter("ghaoma")%>"></td></tr>
<br><tr><td>����������</td><td><input type="text" name=buynumber value="1"></td></tr>
<br><tr><td>�û����䣺</td><td><input type="text" name=useremail value="<jsp:getProperty name="login" property="logname" />"></td></tr>
</table>
<BR>
<BR>

<table border=1>
<tr><th>--ѡ��--</th><th>�ռ���</th><th>��ϵ�绰</th><th>�ռ���ַ</th><tr>
<% Connection con;
Statement sql;
ResultSet rs;
try {Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e)
{out.print(e);
}
try{ 
String uri="jdbc:mysql://localhost/shopping?useUincode=true&characterEncoding=GBK";
con=DriverManager.getConnection(uri,"root","123");
sql=con.createStatement();
rs=sql.executeQuery(" SELECT username,userphone,useradress FROM userinformation WHERE useremail='"+login.getLogname()+" '");
while(rs.next())
{
out.print("<tr>");
out.print("<th>"); %>
<Input type="radio" name="rad" value="true">
<% 
out.print("</th>");
out.print("<th>"); %>
<Input type="text" name="uname" value="<%=rs.getString(1)%>">
<% 
out.print("</th>");
out.print("<th>"); %> 
<Input type="text" name="uphone" value="<%=rs.getString(2)%>">
<% 
out.print("</th>");
out.print("<th>"); %> 
<Input type="text" name="uadress" value="<%=rs.getString(3)%>">
<% 
out.print("</th>");
out.print("<tr>");
}
}
catch(Exception e)
{out.print(e+"������Ӵ!");
}
%>
<BR>
</table>
<BR>
<Input type=submit name="g" value="����">
</CENTER>
</FORM>
</BODY></HTML>
<% } %>