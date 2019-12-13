<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<#-- Settings you need -->
<#setting date_format="dd-MM-yyyy">
<#setting locale="en_US">

<#-- The string that comes from somewhere: -->
<#assign createdOn = 'Jan 08 2015 20:40:56 GMT+0530 (IST)'>

<#--
  1. Tell FreeMarker to convert string to real date-time value
  2. Convert date-time value to date-only value
  3. Let FreeMarker format it according the date_format setting
-->
${createdOn?datetime("MMM dd yyyy HH:mm:ss 'GMT'Z")?date}
</body>
</html>