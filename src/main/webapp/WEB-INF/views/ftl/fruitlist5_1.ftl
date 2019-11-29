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