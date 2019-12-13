<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<#-- content area -->
<div class="page-content">
 <div class="page-title">
  <div class="pagers top">
   <a class="paging-arrow previous" href="ref_directive_ftl.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_global.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_function" itemprop="headline">function, return</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_92" data-menu-target="autoid_92">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_93" data-menu-target="autoid_93">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.function"></a>
 <a name="ref.directive.function.return"></a> 
 <h2 class="content-header header-section2" id="autoid_92">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#function <em class="code-color">name</em> <em class="code-color">param1</em> <em class="code-color">param2</em> <em class="code-color">... paramN</em>&gt;
  <em class="code-color">...</em>
  &lt;#return <em class="code-color">returnValue</em>&gt;
  <em class="code-color">...</em>
&lt;/#function&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">name</em></code>: name of method variable (not expression) </li> 
  <li> <code class="inline-code"><em class="code-color">param1</em></code>, <code class="inline-code"><em class="code-color">param2</em></code>, ...etc.: the name of the <a href="dgui_misc_var.html">local variables</a> store the parameter values (not expression), optionally followed by <code class="inline-code">=</code> and the default value (that's an expression). </li> 
  <li> <code class="inline-code"><em class="code-color">paramN</em></code>, the last parameter, may optionally include a trailing ellipsis (<code class="inline-code">...</code>), which indicates the macro takes a variable number of parameters. Local variable <code class="inline-code"><em class="code-color">paramN</em></code> will be a sequence of the extra parameters. </li> 
  <li> <code class="inline-code"><em class="code-color">returnValue</em></code>: the expression that calculates the value of the method call. </li> 
 </ul> 
 <p>The <code class="inline-code">return</code> directive can be used anywhere and for any times between the <code class="inline-code">&lt;#function <em class="code-color">...</em>&gt;</code> and <code class="inline-code">&lt;/#function&gt;</code>.</p> 
 <p>Parameters without default value must precede parameters with default value (<code class="inline-code"><em class="code-color">paramName</em>=<em class="code-color">defaultValue</em></code>).</p> 
 <h2 class="content-header header-section2" id="autoid_93">Description</h2> 
 <p>Creates a method variable (in the current namespace, if you know namespace feature). This directive works in the same way as the <a href="ref_directive_macro.html#ref.directive.macro"><code>macro</code> directive</a>, except that <code class="inline-code">return</code> directive <em>must</em> have a parameter that specifies the return value of the method, and that attempts to write to the output will be ignored. If the <code class="inline-code">&lt;/#function&gt;</code> is reached (i.e. there was no <code class="inline-code">return <em class="code-color">returnValue</em></code>), then the return value of the method is an undefined variable.</p> 
 <p>Example 1: Creating a method that calculates the average of two numbers:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#function avg x y&gt;
  &lt;#return (x + y) / 2&gt;
&lt;/#function&gt;
&#36;{avg(10, 20)}</pre>
 </div> 
 <p>will print:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
  
<#function avg x y>
  <#return (x + y) / 2>
</#function>
${avg(10, 20)}
  
  </pre>
 </div> 
 <p>Example 2: Creating a method that calculates the average of multiple numbers:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#function avg nums...&gt;
  &lt;#local sum = 0&gt;
  &lt;#list nums as num&gt;
    &lt;#local sum += num&gt;
  &lt;/#list&gt;
  &lt;#if nums?size != 0&gt;
    &lt;#return sum / nums?size&gt;
  &lt;/#if&gt;
&lt;/#function&gt;
&#36;{avg(10, 20)}
&#36;{avg(10, 20, 30, 40)}
&#36;{avg()!"N/A"}</pre>
 </div> 
 <p>will print:</p> 
 <div class="code-wrapper">
<pre class="code-block code-output">

<#function avg nums...>
  <#local sum = 0>
  <#list nums as num>
    <#local sum += num>
  </#list>
  <#if nums?size != 0>
    <#return sum / nums?size>
  </#if>
</#function>
${avg(10, 20)}
${avg(10, 20, 30, 40)}
${avg()!"N/A"}

</pre>
 </div> 

</div>
</body>
</html>
