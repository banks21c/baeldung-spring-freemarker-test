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
   <a class="paging-arrow previous" href="ref_directive_list.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_macro.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_local" itemprop="headline">local</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_106" data-menu-target="autoid_106">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_107" data-menu-target="autoid_107">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.local"></a> 
 <h2 class="content-header header-section2" id="autoid_106">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#local <em class="code-color">name</em>=<em class="code-color">value</em>&gt;</code>
or
<code class="inline-code">&lt;#local <em class="code-color">name1</em>=<em class="code-color">value1</em> <em class="code-color">name2</em>=<em class="code-color">value2</em> <em class="code-color">... nameN</em>=<em class="code-color">valueN</em>&gt;</code>
or
<code class="inline-code">&lt;#local <em class="code-color">name</em>&gt;
  <em class="code-color">capture this</em>
&lt;/#local&gt;
</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">name</em></code>: the name of the local object in the root. It is not an expression. However, it can be written as a string literal, which is useful if the variable name contains reserved characters, for example <code class="inline-code">&lt;#local "foo-bar" = 1&gt;</code>. Note that this string literal does not expand interpolations (as <code class="inline-code">"&#36;{foo}"</code>). </li> 
  <li> <code class="inline-code">=</code>: Assignment operator, which can also be one of the shorthand assignment operators (<code class="inline-code">++</code>, <code class="inline-code">+=</code>, etc.), just like with <a href="ref_directive_assign.html">the <code>assign</code> directive</a>, </li> 
  <li> <code class="inline-code"><em class="code-color">value</em></code>: the value to store. Expression. </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_107">Description</h2> 
 <p>It is similar to <a href="ref_directive_assign.html#ref.directive.assign">assign directive</a>, but it creates or replaces local variables. This only works inside macro definitions and function definitions.</p> 
 <p>For more information about variables, read this: <a href="dgui_misc_var.html">Template Author's Guide/Miscellaneous/Defining variables in the template</a></p> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>A frequent mistake is trying to use <code class="inline-code">assign</code> to change a local variable like: <code class="inline-code">&lt;#macro m&gt;&lt;#local x = 1&gt;&#36;{x}&lt;#assign x = 2&gt;&#36;{x}&lt;/#macro&gt;</code>. This prints <code class="inline-code">11</code>, not <code class="inline-code">12</code>, because <code class="inline-code">assign</code> creates/replaces the <code class="inline-code">x</code> of the namespace that the template belongs to, and doesn't change the <code class="inline-code">x</code> local variable. Local variables should be always set with the <a href="#ref.directive.local"><code>local</code> directive</a>, not just for the fist time.</p> 
 </div> 

</div>


<div class="code-wrapper">
<pre class="code-block code-output">
<#macro m>
	<#local x = 1>${x}
	<#assign x = 2>${x}
</#macro>
<@m/>
</pre>
</div>


</body>
</html>
