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
   <a class="paging-arrow previous" href="ref_directive_function.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_if.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_global" itemprop="headline">global</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_94" data-menu-target="autoid_94">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_95" data-menu-target="autoid_95">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.global"></a> 
 <h2 class="content-header header-section2" id="autoid_94">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#global <em class="code-color">name</em>=<em class="code-color">value</em>&gt;</code>
or
<code class="inline-code">&lt;#global <em class="code-color">name1</em>=<em class="code-color">value1</em> <em class="code-color">name2</em>=<em class="code-color">value2</em> <em class="code-color">... nameN</em>=<em class="code-color">valueN</em>&gt;</code>
or
<code class="inline-code">&lt;#global <em class="code-color">name</em>&gt;
  <em class="code-color">capture this</em>
&lt;/#global&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">name</em></code>: name of the variable. It is not expression. However, it can be written as a string literal, which is useful if the variable name contains reserved characters, for example <code class="inline-code">&lt;#global "foo-bar" = 1&gt;</code>. Note that this string literal does not expand interpolations (as <code class="inline-code">"&#36;{foo}"</code>). </li> 
  <li> <code class="inline-code">=</code>: Assignment operator, which can also be one of the shorthand assignment operators (<code class="inline-code">++</code>, <code class="inline-code">+=</code>, etc.), just like with <a href="ref_directive_assign.html">the <code>assign</code> directive</a>, </li> 
  <li> <code class="inline-code"><em class="code-color">value</em></code>: the value to store. Expression. </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_95">Description</h2> 
 <p>This directive is similar to <a href="ref_directive_assign.html#ref.directive.assign"><code>assign</code></a>, but the variable created will be visible in all <a href="dgui_misc_namespace.html">namespaces</a>, and will not be inside any namespace. Exactly as if you would create (or replace) a variable of the data-model. Hence, the variable is global. If a variable with the same name already exists in the data-model, it will be hidden by the variable created with this directive. If a variable with the same name already exists in the current namespace, that will hide the variable created with <code class="inline-code">global</code> directive.</p> 
 <p>For example, with <code class="inline-code">&lt;#global x = 1&gt;</code> you create a variable that is visible as <code class="inline-code">x</code> in all namespaces, unless another variable called <code class="inline-code">x</code> hides it (for example a variable what you have created as <code class="inline-code">&lt;#assign x = 2&gt;</code>). In this case, you can use <a href="dgui_template_exp.html#dgui_template_exp_var_special">special variable</a> <code class="inline-code">globals</code>, like <code class="inline-code">&#36;{.globals.x}</code>. Note that with <code class="inline-code">globals</code> you see all globally accessible variables; not only the variables that were created with <code class="inline-code">global</code> directive, but also the variables of the data-model.</p> 
 <p>Note for custom JSP tag users: The set of variables created with this directive corresponds to the JSP page-scope. This means, that if a custom JSP tag wants to get a page-scope attribute (page-scope bean), a variable with the same name in the current namespace will not hide it from the viewpoint of the JSP tag.</p> 

</div>
</body>
</html>
