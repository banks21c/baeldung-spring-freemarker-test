<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign xs = [1, -2, 3, 4, -5]>
Positives:
<#list xs?filter(x -> x > 0) as x>${x} </#list>
<br/><br/>
Negatives:
<#list xs?filter(x -> x < 0) as x>${x} </#list>
<br/><br/>

<#function negative(x)>
  <#return x < 0>
</#function>

...

Negatives:
<#list xs?filter(negative) as x>${x} </#list>
<br/><br/>

<#function positive(x)>
  <#return x gt 0>
</#function>

...

Positives:
<#list xs?filter(positive) as x>${x} </#list>

<br/><br/>
<br/><br/>

<#assign negatives = xs?filter(x -> x < 0)>
Negatives:
<#list negatives as x>${x} </#list>

</body>
</html>