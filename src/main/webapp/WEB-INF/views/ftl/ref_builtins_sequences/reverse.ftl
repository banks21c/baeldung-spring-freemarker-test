<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign myString="abcdefghijklmnopqrstuvwxyz"/>
<#assign reversed = myString?split("", "r")?reverse?join("")>

${reversed}
<#-- 
${["1","2","3"]?reverse}
-->
</body>
</html>