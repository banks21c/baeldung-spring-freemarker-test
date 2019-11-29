<html>
<head>
<style>
.protected {color:red;}
</style>
</head>
<body>
<#list animals as animal>
      <div<#if animal.isProtected> class="protected"</#if>>
        ${animal.name} for ${animal.price} Euros
      </div>
</#list>
</body>
</html>