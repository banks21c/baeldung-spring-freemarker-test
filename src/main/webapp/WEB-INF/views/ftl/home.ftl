<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<#if serverTime??>
<P>  The time on the server is ${serverTime!""}. </P>
<#else>
when-missing
</#if>
</body>
</html>
