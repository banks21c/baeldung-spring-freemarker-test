<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">-->
</head>
<body>
<table border="1">
<tr><td></td><td>code</td><td>실행결과</td></tr>
<tr>
    <td>
        <h3>Type 1</h3>
    </td>

    <td>

        <pre>
        <xmp>
          <#include "/fruitlist1_1.ftl" parse=false>
        </xmp>
        </pre>

    </td>

    <td>

        <ul>
        <#list misc.fruits as fruit>
          <li>${fruit}
        </#list>
        </ul>

    </td>
</tr>

<tr>
    <td>
        <h3>Type 2</h3>
    </td>
    <td>

        <pre>
        <xmp>
          <#include "/fruitlist2_1.ftl" parse=false>
        </xmp>
        </pre>

    </td>
    <td>
        <#list misc.fruits>
          <ul>
            <#items as fruit>
              <li>${fruit}
            </#items>
          </ul>
        </#list>
    </td>
</tr>

<tr>
    <td>
        <h3>Type 3</h3>
    </td>
    <td>

        <pre>
        <xmp>
          <#include "/fruitlist3_1.ftl" parse=false>
        </xmp>
        </pre>

    </td>
    <td>
        <p>Fruits: <#list misc.fruits as fruit>${fruit}<#sep>, </#list>
    </td>

</tr>
<tr>
    <td>
        <h3>Type 4</h3>
    </td>
    <td>

        <pre>
        <xmp>
          <#include "/fruitlist4_1.ftl" parse=false>
        </xmp>
        </pre>

    </td>
    <td>

        <p>Fruits: <#list misc.fruits as fruit>${fruit}<#sep>, <#else>None</#list>
    </td>
</tr>

<tr>
    <td>
        <h3>Type 5</h3>
    </td>

    <td>

        <pre>
        <xmp>
          <#include "/fruitlist5_1.ftl" parse=false>
        </xmp>
        </pre>

    </td>
    <td>
    <#list misc.fruits>
      <p>Fruits:
      <ul>
        <#items as fruit>
          <li>${fruit}<#sep> and</#sep>
        </#items>
      </ul>
    <#else>
      <p>We have no fruits.
    </#list>
    </td>
</tr>
</table>
</body>
</html>