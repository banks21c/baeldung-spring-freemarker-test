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
   <a class="paging-arrow previous" href="ref_directive_t.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_visit.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_userDefined" itemprop="headline">User-defined directive (&lt;@...&gt;)</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_128" data-menu-target="autoid_128">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_129" data-menu-target="autoid_129">Description</a>
    <ul>
     <li><a class="page-menu-link" href="#ref_directive_userDefined_entTag" data-menu-target="ref_directive_userDefined_entTag">End-tag</a></li>
     <li><a class="page-menu-link" href="#ref_directive_userDefined_loopVar" data-menu-target="ref_directive_userDefined_loopVar">Loop variables</a></li>
     <li><a class="page-menu-link" href="#ref_directive_userDefined_positionalParam" data-menu-target="ref_directive_userDefined_positionalParam">Positional parameter passing</a></li>
    </ul></li>
  </ul> 
 </div>
 <a name="ref.directive.userDefined"></a> 
 <h2 class="content-header header-section2" id="autoid_128">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;@<em class="code-color">user_def_dir_exp</em> <em class="code-color">param1</em>=<em class="code-color">val1</em> <em class="code-color">param2</em>=<em class="code-color">val2</em> <em class="code-color">...</em> <em class="code-color">paramN</em>=<em class="code-color">valN</em>/&gt;</code>
(Note the XML-style <code class="inline-code">/</code> before the <code class="inline-code">&gt;</code>)
or if you need loop variables (<a href="#ref_directive_userDefined_loopVar">more details...</a>)
<code class="inline-code">&lt;@<em class="code-color">user_def_dir_exp</em> <em class="code-color">param1</em>=<em class="code-color">val1</em> <em class="code-color">param2</em>=<em class="code-color">val2</em> <em class="code-color">...</em> <em class="code-color">paramN</em>=<em class="code-color">valN</em> ; <em class="code-color">lv1</em>, <em class="code-color">lv2</em>, <em class="code-color">...</em>, <em class="code-color">lvN</em>/&gt;</code>

Or the same as the above two but with end-tag (<a href="#ref_directive_userDefined_entTag">more details...</a>):

<code class="inline-code">&lt;@<em class="code-color">user_def_dir_exp</em> <em class="code-color">...</em>&gt;
  ...
&lt;/@<em class="code-color">user_def_dir_exp</em>&gt;</code>
or
<code class="inline-code">&lt;@<em class="code-color">user_def_dir_exp</em> <em class="code-color">...</em>&gt;
  ...
&lt;/@&gt;</code>

Or all above but with positional parameter passing (<a href="#ref_directive_userDefined_positionalParam">more details...</a>):

<code class="inline-code">&lt;@<em class="code-color">user</em> <em class="code-color">val1</em>, <em class="code-color">val2</em>, <em class="code-color">...</em>, <em class="code-color">valN</em>/&gt;</code>
...etc.
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">user_def_dir_exp</em></code>: Expression evaluates to an user-defined directive (for example a macro), that will be called. </li> 
  <li> <code class="inline-code"><em class="code-color">param1</em></code>, <code class="inline-code"><em class="code-color">param2</em></code>, ...etc.: The name of parameters. They are <em>not</em> expressions. </li> 
  <li> <code class="inline-code"><em class="code-color">val1</em></code>, <code class="inline-code"><em class="code-color">val2</em></code>, ...etc.: The value of parameters. They <em>are</em> expressions. </li> 
  <li> <code class="inline-code"><em class="code-color">lv1</em></code>, <code class="inline-code"><em class="code-color">lv2</em></code>, ...etc.: The name of <a href="dgui_misc_var.html">loop variables</a>. They are <em>not</em> expressions. </li> 
 </ul> 
 <p>The number of parameters can be 0 (i.e. no parameters).</p> 
 <p>The order of parameters is not significant (unless you use positional parameter passing). The name of parameters must be unique. Lower- and uppercase letters are considered as different letters in parameter names (i.e. <code class="inline-code">Color</code> and <code class="inline-code">color</code> is not the same).</p> 
 <h2 class="content-header header-section2" id="autoid_129">Description</h2> 
 <p>This will call an user-defined directive, for example a macro. The meaning of parameters, and the set of supported and required parameters depend on the concrete user-defined directive.</p> 
 <p>You may read <a href="dgui_misc_userdefdir.html">the tutorial about user-defined directives</a>.</p> 
 <p>Example 1: Calls the directive that is stored in the variable <code class="inline-code">html_escape</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;@html_escape&gt;
  a &lt; b
  Romeo &amp; Juliet
&lt;/@html_escape&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">  a &amp;lt; b
  Romeo &amp;amp; Juliet</pre>
 </div> 
 <p>Example 2: Calls a macro with parameters:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;@list items=["mouse", "elephant", "python"] title="Animals"/&gt;
<em>...</em>
&lt;#macro list title items&gt;
  &lt;p&gt;&#36;{title?cap_first}:
  &lt;ul&gt;
    &lt;#list items as x&gt;
      &lt;li&gt;&#36;{x?cap_first}
    &lt;/#list&gt;
  &lt;/ul&gt;
&lt;/#macro&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">  &lt;p&gt;Animals:
  &lt;ul&gt;
      &lt;li&gt;Mouse
      &lt;li&gt;Elephant
      &lt;li&gt;Python
  &lt;/ul&gt;

<em>...</em></pre>
 </div> 
 <h3 class="content-header header-section3" id="ref_directive_userDefined_entTag">End-tag</h3> 
 <p>You can omit the <code class="inline-code"><em class="code-color">user_def_dir_exp</em></code> in the <a href="gloss.html#gloss.endTag">end-tag</a>. That is, you can always write <code class="inline-code">&lt;/@&gt;</code> instead of <code class="inline-code">&lt;/@<em class="code-color">anything</em>&gt;</code>. This rule is mostly useful when the <code class="inline-code"><em class="code-color">user_def_dir_exp</em></code> expression is too complex, because you don't have to repeat the expression in the end-tag. Furthermore, if the expression contains other than simple variable names and dots, you are not allowed to repeat the expression. For example, <code class="inline-code">&lt;@a_hash[a_method()]&gt;<em class="code-color">...</em>&lt;/@a_hash[a_method()]&gt;</code> is an error; you must write <code class="inline-code">&lt;@a_hash[a_method()]&gt;<em class="code-color">...</em>&lt;/@&gt;</code>. But <code class="inline-code">&lt;@a_hash.foo&gt;<em class="code-color">...</em>&lt;/@a_hash.foo&gt;</code> is OK.</p> 
 <h3 class="content-header header-section3" id="ref_directive_userDefined_loopVar">Loop variables</h3> 
 <p>Some user-defined directives create loop variables (similarly to <code class="inline-code">list</code> directive). As with the predefined directives (as <code class="inline-code">list</code>) the <em>name</em> of loop variables is given when you call the directive (as <code class="inline-code">foo</code> in <code class="inline-code">&lt;#list foos as foo&gt;<em class="code-color">...</em>&lt;/#list&gt;</code>), while the <em>value</em> of the variable is set by the directive itself. In the case of user-defined directives the syntax is that the name of loop variables is given after a semicolon. For example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;@myRepeatMacro count=4 ; <strong>x, last</strong>&gt;
  &#36;{<strong>x</strong>}. Something... &lt;#if <strong>last</strong>&gt; This was the last!&lt;/#if&gt;
&lt;/@myRepeatMacro&gt;</pre>
 </div> 
 <p>Note that the number of loop variable created by the user-defined directive and the number of loop variables specified after the semicolon need not match. Say, if you are not interested if the repetition is the last, you can simply write:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;@myRepeatMacro count=4 ; <strong>x</strong>&gt;
  &#36;{<strong>x</strong>}. Something...
&lt;/@myRepeatMacro&gt;</pre>
 </div> 
 <p>or you can even:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;@myRepeatMacro count=4&gt;
  Something...
&lt;/@myRepeatMacro&gt;</pre>
 </div> 
 <p>Furthermore, it does not cause error if you specify more loop variables after the semicolon than the user-defined directive creates, just the last few loop variables will not be created (i.e. those will be undefined in the nested content). Trying to use the undefined loop variables, however, will cause error (unless you use built-ins like <code class="inline-code">?default</code>), since you try to access a non-existing variable.</p> 
 <p>See the <a href="dgui_misc_userdefdir.html">the tutorial about user-defined directives</a> for more explanation.</p> 
 <h3 class="content-header header-section3" id="ref_directive_userDefined_positionalParam">Positional parameter passing</h3> 
 <p>Positional parameter passing (as <code class="inline-code">&lt;@heading "Preface", 1/&gt;</code>) is a shorthand form of normal named parameter passing (as <code class="inline-code">&lt;@heading title="Preface" level=1/&gt;</code>), where you omit the parameter name. This shorthand form should be used if a user-defined directive has only one parameter, or if it is easy to remember the order of parameters for a frequently used user-defined directive. To use this form, you have to know the order in which the named parameters are declared (trivial if the directive has only one parameter). Say, if <code class="inline-code">heading</code> was created as <code class="inline-code">&lt;#macro heading title level&gt;<em class="code-color">...</em></code>, then <code class="inline-code">&lt;@heading "Preface", 1/&gt;</code> is equivalent with <code class="inline-code">&lt;@heading title="Preface" level=1/&gt;</code> (or <code class="inline-code">&lt;@heading level=1 title="Preface"/&gt;</code>; if you use parameter names, the order is not important). Note that positional parameter passing is currently only supported for macros.</p> 

</div>
</body>
</html>
