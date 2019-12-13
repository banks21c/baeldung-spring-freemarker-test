<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#macro m a b ext...>
  a = ${a}
  b = ${b}
  <#if ext?is_sequence>
    <#list ext as e>
      ${e?index} = ${e}
    </#list>
  <#else>
    <#list ext as k, v>
      ${k} = ${v}
    </#list>
  </#if>
</#macro>

<@m 1 2 3 4 5 /><br/>

<@m a=1 b=2 c=3 d=4 e=5 data\-foo=6 myns\:bar=7 />
</body>
</html>