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
   <a class="paging-arrow previous" href="ref_directive_global.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_import.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_if" itemprop="headline">if, else, elseif</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_96" data-menu-target="autoid_96">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_97" data-menu-target="autoid_97">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.if"></a>
 <a name="ref.directive.else"></a>
 <a name="ref.directive.elseif"></a> 
 <h2 class="content-header header-section2" id="autoid_96">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#if <em class="code-color">condition</em>&gt;
  <em class="code-color">...</em>
&lt;#elseif <em class="code-color">condition2</em>&gt;
  <em class="code-color">...</em>
&lt;#elseif <em class="code-color">condition3</em>&gt;
  <em class="code-color">...</em>
<em class="code-color">...</em>
&lt;#else&gt;
  <em class="code-color">...</em>
&lt;/#if&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">condition</em></code>, <code class="inline-code"><em class="code-color">condition2</em></code>, ...etc.: Expression evaluates to a boolean value. </li> 
 </ul> 
 <p>The <code class="inline-code">elseif</code>-s and the <code class="inline-code">else</code> are optional.</p> 
 <p>Camel case name variant: <code class="inline-code">elseIf</code></p> 
 <h2 class="content-header header-section2" id="autoid_97">Description</h2> 
 <p>You can use <code class="inline-code">if</code>, <code class="inline-code">elseif</code> and <code class="inline-code">else</code> directives to conditionally skip a section of the template. The <code class="inline-code"><em class="code-color">condition</em></code>-s must evaluate to a boolean value, or else an error will abort template processing. The <code class="inline-code">elseif</code>-s and <code class="inline-code">else</code>-s must occur inside <code class="inline-code">if</code> (that is, between the <code class="inline-code">if</code> start-tag and end-tag). The <code class="inline-code">if</code> can contain any number of <code class="inline-code">elseif</code>-s (including 0) and at the end optionally one <code class="inline-code">else</code>. Examples:</p> 
 <p><code class="inline-code">if</code> with 0 <code class="inline-code">elseif</code> and no <code class="inline-code">else</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#if x == 1&gt;
  x is 1
&lt;/#if&gt;</pre>
 </div> 
 <p><code class="inline-code">if</code> with 0 <code class="inline-code">elseif</code> and <code class="inline-code">else</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#if x == 1&gt;
  x is 1
&lt;#else&gt;
  x is not 1
&lt;/#if&gt;</pre>
 </div> 
 <p><code class="inline-code">if</code> with 2 <code class="inline-code">elseif</code> and no <code class="inline-code">else</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#if x == 1&gt;
  x is 1
&lt;#elseif x == 2&gt;
  x is 2
&lt;#elseif x == 3&gt;
  x is 3
&lt;/#if&gt;</pre>
 </div> 
 <p><code class="inline-code">if</code> with 3 <code class="inline-code">elseif</code> and <code class="inline-code">else</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#if x == 1&gt;
  x is 1
&lt;#elseif x == 2&gt;
  x is 2
&lt;#elseif x == 3&gt;
  x is 3
&lt;#elseif x == 4&gt;
  x is 4
&lt;#else&gt;
  x is not 1 nor 2 nor 3 nor 4
&lt;/#if&gt;</pre>
 </div> 
 <p>To see more about boolean expressions, see: <a href="dgui_template_exp.html">Template Author's Guide/The Template/Expressions</a>.</p> 
 <p>You can nest <code class="inline-code">if</code> directives (of course):</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#if x == 1&gt;
  x is 1
  &lt;#if y == 1&gt;
    and y is 1 too
  &lt;#else&gt;
    but y is not
  &lt;/#if&gt;
&lt;#else&gt;
  x is not 1
  &lt;#if y &lt; 0&gt;
    and y is less than 0
  &lt;/#if&gt;
&lt;/#if&gt;</pre>
 </div> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>When you want to test if <code class="inline-code">x &gt; 0</code> or <code class="inline-code">x &gt;= 0</code>, writing <code class="inline-code">&lt;#if x &gt; 0&gt;</code> and <code class="inline-code">&lt;#if x &gt;= 0&gt;</code> is WRONG, as the first <code class="inline-code">&gt;</code> will close the <code class="inline-code">#if</code> tag. To work that around, write <code class="inline-code">&lt;#if x gt 0&gt;</code> or <code class="inline-code">&lt;#if gte 0&gt;</code>. Also note that if the comparison occurs inside parentheses, you will have no such problem, like <code class="inline-code">&lt;#if foo.bar(x &gt; 0)&gt;</code> works as expected.</p> 
 </div> 

</div>
</body>
</html>
