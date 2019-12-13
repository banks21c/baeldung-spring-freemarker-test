<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign seq = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']>

<#list seq?chunk(4) as row>
  <#list row as cell>${cell} </#list>
</#list>

<#list seq?chunk(4, '-') as row>
  <#list row as cell>${cell} </#list>
</#list>

<br/><br/><br/><br/><br/><br/><br/>

<#list seq?chunk(3) as row>
  <#list row as cell>${cell} </#list>
</#list>

<#list seq?chunk(3, '-') as row>
  <#list row as cell>${cell} </#list>
</#list>

<br/><br/><br/><br/><br/><br/><br/>

<#list seq?chunk(2) as row>
  <#list row as cell>${cell} </#list>
</#list>

<#list seq?chunk(2, '-') as row>
  <#list row as cell>${cell} </#list>
</#list>

<br/><br/><br/><br/><br/><br/><br/>

<#list seq?chunk(1) as row>
  <#list row as cell>${cell} </#list>
</#list>

<#list seq?chunk(1, '-') as row>
  <#list row as cell>${cell} </#list>
</#list>
</body>
</html>