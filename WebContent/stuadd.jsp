<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${lsca==null}">
	<c:redirect url="doinit_Student.do"></c:redirect>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生添加</title>
</head>

<body>
<form action="save_Student.do" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table width="550" border="1" align="center" cellpadding="1" cellspacing="0">
    <tr>
      <td colspan="2" align="center" bgcolor="#FFFF33">学生添加</td>
    </tr>
    <tr>
      <td width="66">姓名</td>
      <td width="330">
      <input type="text" name="sname" id="sname" /></td>
      
    </tr>
    <tr>
      <td>性别</td>
      <td><input name="sex" type="radio" id="radio" value="男" checked="checked" />男
          <input type="radio" name="sex" id="radio2" value="女" />女
      </td>
    </tr>
    <tr>
      <td>地址</td>
      <td><input type="text" name="address" id="address" /></td>
    </tr>
    <tr>
      <td>生日</td>
      <td><input type="date" value="1990-01-01" name="sdate" id="sdate" /></td>
    </tr>
    <tr>
      <td>选择照片</td>
      <td>
      <input type="file" name="pic" id="pic" /></td>
    </tr>
    <tr>
      <td>班级</td>
      <td><label for="cid"></label>
        <select name="classid" id="cid">
      		<c:forEach items="${lsca}" var="ca">
      			<option value="${ca.cid}">${ca.cname}</option>
      		</c:forEach>
      	</select>
      
      </td>
    </tr>
    <tr>
      <td colspan="3" align="center" bgcolor="#FFFF33">
      <input type="submit" name="button" id="button" value="提交" />
      <input type="reset" name="button2" id="button2" value="重置" /></td>
    </tr>
  </table>
  <p align="center"><a href="findPageAll_Student.do">学生列表</a></p>
  <p>&nbsp;</p>
</form>
</body>
</html>