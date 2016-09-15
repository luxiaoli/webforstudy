<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="mybean.data.Login"%>
<jsp:useBean id="login" class="mybean.data.Login" scope="session"/>
<HTML><BODY BGCOLOR=ivory>
<HEAD><%@ include file="title.txt" %></HEAD>
<br>
<A href="a1.jsp">首页</A>
<A href="purchaselist.jsp">购买商品记录</A>
<A href="selfinformation.jsp">收件信息</A>
<td><A href="helpexit"><font size=3>退出登录</font></A><td>
<A href="xiaoxi.jsp">消息</A>
<br>
<br>
<br>
<% Connection bb;
Statement cc;
ResultSet aa;
try {Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e)
{out.print(e);
}
try{ String uri="jdbc:mysql://localhost/shopping?useUincode=true&characterEncoding=GBK";
bb=DriverManager.getConnection(uri,"root","123");
cc=bb.createStatement();
aa=cc.executeQuery("SELECT * FROM shopper WHERE email='"+login.getLogname()+"'");
while(aa.next())
{
out.print("<tr>");
out.print("<td>"+"邮箱:"+"</td>");
out.print("<td>"+aa.getString(1)+"</td>");
out.print("</tr>");
out.print("<br>");
out.print("<tr>");
out.print("<td>"+"用户名:"+"</td>");
out.print("<td>"+aa.getString(2)+"</td>");
out.print("</tr>");
out.print("<br>");
out.print("<tr>");
out.print("<td>"+"密码:"+"</td>");
out.print("<td>"+"************"+"</td>");
out.print("</tr>");
out.print("<br>");
}
bb.close();
}
catch(Exception e1)
{out.print(e1);
}
%>
<FORM action="helpinformation" Method="post" >
<table>
<BR>
<BR>
<tr><td>用户的真实姓名：</td><td><Input type=text name="username" size=20></td><tr>
<tr><td>用户的可联系电话：</td><td><Input type=number name="userphone" size=20></td><tr>
<tr><td>用户的收货地址：</td><td><Input type=text name="useradress" size=60></td><tr>
<tr><td>用户：</td><td><Input type=text name="useremail" value="<jsp:getProperty name="login" property="logname"/>"></td><tr>
</table>
<Input type=submit name="a" value="提交">
</FORM>
已添加过的信息：
<br>
<br>
<% Connection con;
Statement sql;
ResultSet rs;
try {Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e)
{out.print(e);
}
try{ String uri="jdbc:mysql://localhost/shopping?useUincode=true&characterEncoding=GBK";
con=DriverManager.getConnection(uri,"root","123");
sql=con.createStatement();
rs=sql.executeQuery("SELECT * FROM userinformation WHERE useremail='"+login.getLogname()+"'");
while(rs.next())
{
out.print("<tr>");
out.print("<td>"+"收件人名字:"+"</td>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("</tr>");
out.print("<br>");
out.print("<tr>");
out.print("<td>"+"收件人电话:"+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("</tr>");
out.print("<br>");
out.print("<tr>");
out.print("<td>"+"收件人地址:"+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<br>");
out.print("<br>");
}
out.print("<br>");
out.print("<td>"+"此用户没有其它可用地址！"+"</td>");
con.close();
}
catch(Exception e1)
{out.print(e1);
}
%>

</BODY></HTML>