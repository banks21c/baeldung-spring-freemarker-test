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
   <a class="paging-arrow previous" href="ref_directive_alphaidx.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_attempt.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_assign" itemprop="headline">assign</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_78" data-menu-target="autoid_78">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_79" data-menu-target="autoid_79">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.assign"></a> 
 <h2 class="content-header header-section2" id="autoid_78">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#assign <em class="code-color">name1</em>=<em class="code-color">value1</em> <em class="code-color">name2</em>=<em class="code-color">value2</em> <em class="code-color">... nameN</em>=<em class="code-color">valueN</em>&gt;</code>
or
<code class="inline-code">&lt;#assign <em class="code-color">same as above...</em> in <em class="code-color">namespacehash</em>&gt;</code>
or
<code class="inline-code">&lt;#assign <em class="code-color">name</em>&gt;
  <em class="code-color">capture this</em>
&lt;/#assign&gt;</code>
or
<code class="inline-code">&lt;#assign <em class="code-color">name</em> in <em class="code-color">namespacehash</em>&gt;
  <em class="code-color">capture this</em>
&lt;/#assign&gt;</code></pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">name</em></code>: name of the variable. It is not expression. However, it can be written as a string literal, which is useful if the variable name contains reserved characters, for example <code class="inline-code">&lt;#assign "foo-bar" = 1&gt;</code>. Note that this string literal does not expand interpolations (as <code class="inline-code">"&#36;{foo}"</code>); if you need to assign to a dynamically constructed name, the you have to use <a href="app_faq.html#faq_assign_to_dynamic_variable_name">a different trick</a>. Note that because the FreeMarker template language assumes that sequences (lists, arrays, etc.) and hashes (maps, beans, etc.) are immutable, you can <em>not</em> write something like <code class="inline-code">&lt;#assign myObj.someProperty = 'will NOT work'&gt;</code> or <code class="inline-code">&lt;#assign myList[0] = 'will NOT work'&gt;</code>. However, adding sequences or hashes with the <code class="inline-code">+</code> operator to form another value is supported; see in the <a href="dgui_template_exp.html#exp_cheatsheet">chapter about expressions</a>, and please note the performance consequences. </li> 
  <li> <code class="inline-code">=</code>: Assignment operator. It can also be one of the assignment shorthand operators (since FreeMarker 2.3.23): <code class="inline-code">++</code>, <code class="inline-code">--</code>, <code class="inline-code">+=</code>, <code class="inline-code">-=</code>, <code class="inline-code">*=</code>, <code class="inline-code">/=</code> or <code class="inline-code">%=</code>. Like <code class="inline-code">&lt;#assign x++&gt;</code> is similar to <code class="inline-code">&lt;#assign x = x + 1&gt;</code>, and <code class="inline-code">&lt;#assign x += 2&gt;</code> is the same as <code class="inline-code">&lt;#assign x = x + 2&gt;</code>. Note that <code class="inline-code">++</code> always means arithmetical addition (an so it will fail on non-numbers), unlike <code class="inline-code">+</code> or <code class="inline-code">+=</code> that are overloaded to do string concatenation and such. </li> 
  <li> <code class="inline-code"><em class="code-color">value</em></code>: the value to store. Expression. </li> 
  <li> <code class="inline-code"><em class="code-color">namespacehash</em></code>: a hash that was created for a <a href="dgui_misc_namespace.html">namespace</a> (by <a href="ref_directive_import.html#ref.directive.import"><code>import</code></a>). Expression. If not specified, it defaults to the namespace that belongs to the containing template. </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_79">Description</h2> 
 <p>With this you can create a new variable, or replace an existing variable. Note that only top-level variables can be created/replaced (i.e. you can't create/replace <code class="inline-code">some_hash.subvar</code>, but <code class="inline-code">some_hash</code>).</p> 
 <p>For more information about variables, read this: <a href="dgui_misc_var.html">Template Author's Guide/Miscellaneous/Defining variables in the template</a></p> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>A frequent mistake is trying to use <code class="inline-code">assign</code> to change a local variable like: <code class="inline-code">&lt;#macro m&gt;&lt;#local x = 1&gt;&#36;{x}&lt;#assign x = 2&gt;&#36;{x}&lt;/#macro&gt;</code>. This prints <code class="inline-code">11</code>, not <code class="inline-code">12</code>, because <code class="inline-code">assign</code> creates/replaces the <code class="inline-code">x</code> of the namespace that the template belongs to, and doesn't change the <code class="inline-code">x</code> local variable. Local variables should be always set with the <a href="ref_directive_local.html#ref.directive.local"><code>local</code> directive</a>, not just for the fist time.</p> 
 </div> 
 <p>Example: variable <code class="inline-code">seq</code> will store a sequence:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign seq = ["foo", "bar", "baz"]&gt;</pre>
 </div> 
 <p>Example: Increments the numerical value stored in variable <code class="inline-code">x</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign x++&gt;</pre>
 </div> 
 <p>As a convenience feature, you can do more assignments with one <code class="inline-code">assign</code> tag. For example this will do the same as the two previous examples:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign
  seq = ["foo", "bar", "baz"]
  x++
&gt;</pre>
 </div> 
 <p>If you know what namespaces are: <code class="inline-code">assign</code> directive creates variables in a namespace. Normally it creates the variable in the current namespace (i.e. in the namespace associated with the template where the tag is). However, if you use <code class="inline-code">in <em class="code-color">namespacehash</em></code> then you can create/replace a variable of another <a href="dgui_misc_namespace.html">namespace</a> than the current namespace. For example, here you create/replace variable <code class="inline-code">bgColor</code> of the namespace used for <code class="inline-code">/mylib.ftl</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#import "/mylib.ftl" as my&gt;
&lt;#assign bgColor="red" in my&gt;</pre>
 </div> 
 <p>An extreme usage of <code class="inline-code">assign</code> is when it captures the output generated between its start-tag and end-tag. That is, things that are printed between the tags will not be shown on the page, but will be stored in the variable. For example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro myMacro&gt;foo&lt;/#macro&gt;
&lt;#assign x&gt;
  &lt;#list 1..3 as n&gt;
    &#36;{n} &lt;@myMacro /&gt;
  &lt;/#list&gt;
&lt;/#assign&gt;
Number of words: &#36;{x?word_list?size}
&#36;{x}</pre>
 </div> 
 <p>will print:</p> 
<div class="code-wrapper">
<pre class="code-block code-output">
<#macro myMacro>foo</#macro>
<#assign x>
<#compress>
  <#list 1..3 as n>
    ${n} <@myMacro />
  </#list>
</#compress>  
</#assign>
Number of words: ${x?word_list?size}
${x}
 </pre>
 </div> 
 <p>Please note that you should not to use this to insert variables into strings:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign x&gt;Hello &#36;{user}!&lt;/#assign&gt; &lt;#-- BAD PRACTICE! --&gt;</pre>
 </div> 
 <p>You should simply write:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign x="Hello &#36;{user}!"&gt;</pre>
 </div> 

</div>
</body>
</html>
