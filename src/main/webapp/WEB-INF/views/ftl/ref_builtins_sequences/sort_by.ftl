<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign ls = [
  {"name":"whale", "weight":2000},
  {"name":"Barbara", "weight":53},
  {"name":"zeppelin", "weight":-200},
  {"name":"aardvark", "weight":30},
  {"name":"beetroot", "weight":0.3}
]>
Order by name:<br/>
<#list ls?sort_by("name") as i>
- ${i.name}: ${i.weight}<br/>
</#list>
<br/>
Order by weight:<br/>
<#list ls?sort_by("weight") as i>
- ${i.name}: ${i.weight}<br/>
</#list>
</body>
</html>