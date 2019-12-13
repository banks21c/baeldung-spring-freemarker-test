<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#macro test foo bar="Bar" baaz=-1>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<@test foo="a" bar="b" baaz=5*5-2/><br/>
<@test foo="a" bar="b"/><br/>
<@test foo="a" baaz=5*5-2/><br/>
<@test foo="a"/><br/>
</body>
</html>