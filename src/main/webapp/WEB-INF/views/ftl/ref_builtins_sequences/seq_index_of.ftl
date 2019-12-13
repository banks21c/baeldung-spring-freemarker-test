<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign colors = ["red", "green", "blue"]>
${colors?seq_index_of("blue")}<br/>
${colors?seq_index_of("red")}<br/>
${colors?seq_index_of("purple")}<br/>
<hr>
<#assign names = ["Joe", "Fred", "Joe", "Susan"]>
No 2nd param: ${names?seq_index_of("Joe")}<br/>
-2: ${names?seq_index_of("Joe", -2)}<br/>
-1: ${names?seq_index_of("Joe", -1)}<br/>
 0: ${names?seq_index_of("Joe", 0)}<br/>
 1: ${names?seq_index_of("Joe", 1)}<br/>
 2: ${names?seq_index_of("Joe", 2)}<br/>
 3: ${names?seq_index_of("Joe", 3)}<br/>
 4: ${names?seq_index_of("Joe", 4)}<br/>
</body>
</html>