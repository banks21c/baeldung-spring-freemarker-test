<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<p>We have these animals:
<#list users>
  <table>
    <#items as user>
      <tr class="${user?item_parity}Row">
        <td>${user?counter}
        <td>${user}
    </#items>
  </table>
</#list>
</body>
</html>