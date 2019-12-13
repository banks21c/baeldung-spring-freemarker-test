<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign x = ["red", 16, "blue", "cyan"]>
"blue": ${x?seq_contains("blue")?string("yes", "no")}<br/>
"yellow": ${x?seq_contains("yellow")?string("yes", "no")}<br/>
16: ${x?seq_contains(16)?string("yes", "no")}<br/>
"16": ${x?seq_contains("16")?string("yes", "no")}<br/>
</body>
</html>