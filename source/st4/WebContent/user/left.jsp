<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<html>
  <head>
    <title>��ͥ������ϵͳ</title>
    <meta content="text/html; charset=gb2312" http-equiv="Content-Type" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css">
	</head>
  <body>
<script language="JavaScript">
  function show_div(menu){
  if(document.all.item(menu).style.display=="none"){
      document.all.item(menu).style.display="block";
      }else{
        document.all.item(menu).style.display="none";
      }
    }
  
  function exit()
	{
			var url = "doset/userexit.jsp";	
			top.location.href=url;		
	}
</script>
<a href="#" onClick="show_div('menu1')" ><img src="images/left_top.GIF" width="186" height="36"></a>
<table width="186" height="100%" border="0" cellpadding="0" cellspacing="0" class="tableBorder_bold">
  <tr>
    <td height="323" align="center" valign="top">
	<a href="#" onClick="show_div('menu1')" ><img name="Imgmenu1" border="0"
     src="images/menu_1.jpg" align="ABSMIDDLE" width="165" height="26"></a>
	<Div id="menu1">
  <table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="dopic/edit.jsp" target="mainFrame">�༭���</a></td>
  </tr>
 </table>
</Div>



<a href="#" onClick="show_div('menu2')"><img name="Imgmenu2" align="ABSMIDDLE"
    src="images/menu_2.jpg" border="0" width="165" height="28"></a><br>
<Div id="menu2" style="display:none">
<table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
<tr>
<td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
<td><a href="dotell/shareshow.jsp" target="mainFrame">�ҵķ���</a></td>
</tr>
<tr>
<td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
<td><a href="dotell/showallmssage.jsp" target="mainFrame">��������</a></td>
</tr>
</table>
</Div>


<a href="#" onClick="show_div('menu3')"><img name="Imgmenu3" align="ABSMIDDLE"
    src="images/menu_3.jpg" border="0" width="165" height="28"></a><br>
<Div id="menu3" style="display:none">
<table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
 <tr>
 <td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
 <td width="82%"><a href="./doset/me.jsp" target="mainFrame">������Ϣ</a></td>
 </tr>
  <tr>
 <td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
 <td width="82%"><a href="./doset/logs.jsp" target="mainFrame">��¼��־</a></td>
 </tr>
 <tr>
 <td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
 <td width="82%"><a href="javascript:exit();" onclick="exit()" target="mainFrame">�˳�ϵͳ</a></td>
 </tr>
</table>
</Div>

<!--ϵͳ����-->
<a href="#" onClick="show_div('menu4')"><img name="Imgmenu4" align="ABSMIDDLE"
    src="images/menu_4.jpg" border="0" width="165" height="28"></a><br>
<Div id="menu4" style="display:none">
<table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
<tr>
<td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
<td width="82%"><a href="dotell/tell.jsp" target="mainFrame">ϵͳ����</a></td>
<tr>
<tr>
<td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
<td><a href="dotell/fadeback.jsp" target="mainFrame">��Ϣ����</a></td>
</tr>
</table>
</Div>


<!--����һ��-->
<a href="#" onClick="show_div('menu8')"><img name="Imgmenu8" align="ABSMIDDLE"
    src="images/menu_8.jpg" border="0" width="165" height="28"></a><br>
<Div id="menu8" style="display:none">
<table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
<tr>
<td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
<td width="82%"><a href="http://www.cxx666.top/player/" target="mainFrame">����</a></td>
<tr>
<td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
<td><a href="http://www.youku.com/" target="mainFrame">����Ӱ</a></td>
</tr>
<tr>
<td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
<td><a href="http://www.baidu.com" target="mainFrame">�ٶ�һ��</a></td>
</tr>
</table>
</Div>
	</td>
  </tr>
</table>
</body>
</html>












