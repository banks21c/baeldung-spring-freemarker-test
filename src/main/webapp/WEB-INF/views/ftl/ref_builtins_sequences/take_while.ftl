<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#-- WRONG solution! <br> might be added after the last printed line: -->
<#list lines as line>
   <#if line == ''>
     <#break>
   </#if>
   ${line}<#sep>1<br>
</#list>
<br/>+++++++++++++++++++++++++++++++++++<br/>
<#-- WRONG solution! <br> might be added after the last printed line: -->
<#list lines as line>
   <#if line == ''>
     <#continue>
   </#if>
   ${line}<#sep>1<br>
</#list>
<br/>+++++++++++++++++++++++++++++++++++<br/>
<#-- Good solution: -->
<#list lines?take_while(line -> line != '') as line>
   ${line}<#sep>1<br>
</#list>
<br/>+++++++++++++++++++++++++++++++++++<br/>


<#assign xs = [1, 2, -3, 4, -5, 6]>

Take while positive:
<#list xs?take_while(x -> x > 0) as x>
	${x} 
</#list>

Filer for positives:
<#list xs?filter(x -> x > 0) as x>
	${x} 
</#list>

</body>
</html>