<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign sizeCheckSequence = ["1","2","3"]/>
<#assign sizeCheckHash = {"1":"kdhong","2":"sunshinyi","3":"jamesdean"}/>
${sizeCheckHash}
${sizeCheckHash?size}
${sizeCheckSequence?size}
${sizeCheckHash?size}
</body>
</html>