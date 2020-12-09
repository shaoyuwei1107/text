<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${lsca==null}">
<c:redirect url="doinit_Student.do"></c:redirect>
</c:if>
<c:if test="${oldst==null}">
<c:redirect url="findPageAll_Student.do"></c:redirect>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生添加</title>
</head>

<body>
<form action="update_Student.do" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table align="center" width="400px" border="1">
  <tr align="center" bgcolor="#FFFFCC">
  <td colspan="3">学生修改</td>
  </tr>
   <tr>
  <td width="100">姓名</td>
  <td>
  <input type="text" id="sname" name="sname" value="${oldst.getSname()}" />
  </td>
  <td rowspan="5" width="210">
  <a href="uppic/${oldst.fname}"><img alt="" src="uppic/${oldst.fname}" width="100" height="200" /></a>
  </td>
  </tr>
   <tr>
  <td>性别</td>
  <td>
  <input type="radio" id="sex" name="sex" value="男"
  <c:if test="${oldst.sex eq '男'}">
  checked="checked"
  </c:if>
  >男
  <input type="radio" id="sex" name="sex" value="女"
  <c:if test="${oldst.sex eq'女'}">
  checked="checked"
  </c:if>
  >女
  </td>
  </tr>
   <tr>
  <td>地址</td>
  <td>
  <input type="text" id="address" name="address" value="${oldst.getAddress()}" />
  </td>
  </tr>
  <tr>
  <td>生日</td>
  <!-- 错误点 -->
   <td><input type="date" value="${ oldst.getSdate()}" name="sdate" id="sdate" /></td>
  
  </tr>
  
  <tr>
      <td>重选</td>
      <td>
      <input type="file" name="pic" id="pic" /></td>
    </tr>
   <tr>
  <td>班级</td>
  
  <td colspan="2">
  <select id="classid" name="classid">
  <c:forEach items="${lsca}" var="ca">
  <option value="${ca.getCid()}" 
  <c:if test="${ca.cid==oldst.stuid}">
  selected="selected"
  </c:if>
  >${ca.getCname()}</option>
  </c:forEach>
  </select>
  </td>
  </tr>
   <tr align="center" bgcolor="#FFFFCC">
  <td colspan="3">
  <input type="hidden" id="stuid" name="stuid" value="${oldst.getStuid()}">
  <input type="submit" value="提交">
  <input type="reset" value="重置">
  </td>
  </tr>
  </table>
</form>
</body>
</html>