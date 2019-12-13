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
   <a class="paging-arrow previous" href="ref_directive_local.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_noautoesc.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_macro" itemprop="headline">macro, nested, return</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_108" data-menu-target="autoid_108">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_109" data-menu-target="autoid_109">Description</a>
    <ul>
     <li><a class="page-menu-link" href="#autoid_110" data-menu-target="autoid_110">nested</a></li>
     <li><a class="page-menu-link" href="#autoid_111" data-menu-target="autoid_111">return</a></li>
    </ul></li>
  </ul> 
 </div>
 <a name="ref.directive.macro"></a> 
 <h2 class="content-header header-section2" id="autoid_108">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#macro <em class="code-color">name</em> <em class="code-color">param1</em> <em class="code-color">param2</em> <em class="code-color">... paramN</em>&gt;
  <em class="code-color">...</em>
  &lt;#nested <em class="code-color">loopvar1</em>, <em class="code-color">loopvar2</em>, <em class="code-color">...</em>, <em class="code-color">loopvarN</em>&gt;
  <em class="code-color">...</em>
  &lt;#return&gt;
  <em class="code-color">...</em>
&lt;/#macro&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">name</em></code>: name of macro variable. It's not an expression. It follows the same syntax as <a href="dgui_template_exp.html#dgui_template_exp_var_toplevel">like top-level variable references</a>, like <code class="inline-code">myMacro</code> or <code class="inline-code">my\-macro</code>. However, it can also be written as a string literal, which is useful if the macro name contains characters that can't be specified in an identifier, for example <code class="inline-code">&lt;#macro "foo~bar"&gt;<em class="code-color">...</em></code>. Note that this string literal does not expand interpolations (as <code class="inline-code">"&#36;{foo}"</code>). </li> 
  <li> <code class="inline-code"><em class="code-color">param1</em></code>, <code class="inline-code"><em class="code-color">param2</em></code>, ...etc.: the name of the <a href="dgui_misc_var.html">local variables</a> store the parameter values (not expression), optionally followed by <code class="inline-code">=</code> and the default value (that's an expression). The default value can even be another parameter, for example <code class="inline-code">&lt;#macro section title label=title&gt;</code>. The parameter name uses the same syntax as <a href="dgui_template_exp.html#dgui_template_exp_var_toplevel">like top-level variable references</a>, so the same features and restrictions apply. </li> 
  <li> <code class="inline-code"><em class="code-color">paramN</em></code>, the last parameter may optionally has 3 trailing dots (<code class="inline-code">...</code>), which indicates that the macro takes a variable number of parameters and the parameters that doesn't match any other parameters will be collected in this last parameter (also called the catch-all parameter). When the macro is called with named parameters, <code class="inline-code"><em class="code-color">paramN</em></code> will be a hash containing all of the undeclared key/value pairs passed to the macro. When the macro is called using positional parameters, <code class="inline-code"><em class="code-color">paramN</em></code> will be the sequence of the extra parameter values. (Inside the macro, to find out which was the case, you can use <code class="inline-code"><em class="code-color">myCatchAllParam</em>?is_sequence</code>.) </li> 
  <li> <code class="inline-code"><em class="code-color">loopvar1</em></code>, <code class="inline-code"><em class="code-color">loopvar2</em></code>, ...etc.: Optional. The values of <a href="dgui_misc_var.html">loop variables</a> that the <code class="inline-code">nested</code> directive wants to create for the nested content. These are expressions. </li> 
 </ul> 
 <p>The <code class="inline-code">return</code> and <code class="inline-code">nested</code> directives are optional and can be used anywhere and for any times between the <code class="inline-code">&lt;#macro <em class="code-color">...</em>&gt;</code> and <code class="inline-code">&lt;/#macro&gt;</code>.</p> 
 <p>Parameters without default value must precede parameters with default value (<code class="inline-code"><em class="code-color">paramName</em>=<em class="code-color">defaultValue</em></code>).</p> 
 <h2 class="content-header header-section2" id="autoid_109">Description</h2> 
 <p>Creates a macro variable (in the current namespace, if you know namespace feature). If you are new to macros and user-defined directives you should read the <a href="dgui_misc_userdefdir.html">the tutorial about user-defined directives</a>.</p> 
 <p>Macro variable stores a template fragment (called macro definition body) that can be used as <a href="ref_directive_userDefined.html#ref.directive.userDefined">user-defined directive</a>. The variable also stores the name of allowed parameters to the user-defined directive. You must give value for all of those parameters when you use the variable as directive, except for parameters that has a default value. The default value will be used if and only if you don't give value for the parameter when you call the macro.</p> 
 <p>The variable will be created at the beginning of the template; it does not mater where the <code class="inline-code">macro</code> directive is placed in the template. Thus, this will work:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#-- call the macro; the macro variable is already created: --&gt;
&lt;@test/&gt;
...

&lt;#-- create the macro variable: --&gt;
&lt;#macro test&gt;
  Test text
&lt;/#macro&gt;</pre>
 </div> 
 <p>However, if the macro definitions are inserted with <code class="inline-code">include</code> directive, they will not be available until FreeMarker has executed the <code class="inline-code">include</code> directive.</p> 
 <p>Example: Macro without parameters:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro test&gt;
  Test text
&lt;/#macro&gt;
&lt;#-- call the macro: --&gt;
&lt;@test/&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#macro test>
  Test text
</#macro>
<#-- call the macro: -->
<@test/>
 </pre>
 </div> 
 <p>Example: Macro with parameters:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro test foo bar baaz&gt;
  Test text, and the params: &#36;{foo}, &#36;{bar}, &#36;{baaz}
&lt;/#macro&gt;
&lt;#-- call the macro: --&gt;
&lt;@test foo="a" bar="b" baaz=5*5-2/&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
  
<#macro test foo bar baaz>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<#-- call the macro: -->
<@test foo="a" bar="b" baaz=5*5-2/>
  
   </pre>
 </div> 
 <p>Example: Macro with parameters and default parameter values:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro test foo bar="Bar" baaz=-1&gt;
  Test text, and the params: &#36;{foo}, &#36;{bar}, &#36;{baaz}
&lt;/#macro&gt;
&lt;@test foo="a" bar="b" baaz=5*5-2/&gt;
&lt;@test foo="a" bar="b"/&gt;
&lt;@test foo="a" baaz=5*5-2/&gt;
&lt;@test foo="a"/&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
  <#macro test foo bar="Bar" baaz=-1>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<@test foo="a" bar="b" baaz=5*5-2/>
<@test foo="a" bar="b"/>
<@test foo="a" baaz=5*5-2/>
<@test foo="a"/>
 </pre>
 </div> 
 <p>Example: A more complex macro.</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro list title items&gt;
  &lt;p&gt;&#36;{title?cap_first}:
  &lt;ul&gt;
    &lt;#list items as x&gt;
      &lt;li&gt;&#36;{x?cap_first}
    &lt;/#list&gt;
  &lt;/ul&gt;
&lt;/#macro&gt;
&lt;@list items=["mouse", "elephant", "python"] title="Animals"/&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<xmp>  
<#macro list title items>
  <p>${title?cap_first}:
  <ul>
    <#list items as x>
      <li>${x?cap_first}
    </#list>
  </ul>
</#macro>
<@list items=["mouse", "elephant", "python"] title="Animals"/>
</xmp>
 </pre>
 </div> 
 <p>Example: A macro with support for a variable number of named parameters:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro img src extra...&gt;
  &lt;img src="/myapp&#36;{src?ensure_starts_with('/')}"
    &lt;#list extra as attrName, attrVal&gt;
      &#36;{attrName}="&#36;{attrVal}"
    &lt;/#list&gt;
  &gt;
&lt;/#macro&gt;
&lt;@img src="/images/test.png" width=100 height=50 alt="Test"/&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<xmp>  
<#macro img src extra...>
  <img src="/myapp${src?ensure_starts_with('/')}"
    <#list extra as attrName, attrVal>
      ${attrName}="${attrVal}"
    </#list>
  >
</#macro>
<@img src="/images/test.png" width=100 height=50 alt="Test"/>
</xmp>  
  </pre>
 </div> 
 <p>Example: A macro that supports a variable number of positional parameters, regardless if it uses named or positional parameter passing:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro m a b ext...&gt;
  a = &#36;{a}
  b = &#36;{b}
  &lt;#if ext?is_sequence&gt;
    &lt;#list ext as e&gt;
      &#36;{e?index} = &#36;{e}
    &lt;/#list&gt;
  &lt;#else&gt;
    &lt;#list ext as k, v&gt;
      &#36;{k} = &#36;{v}
    &lt;/#list&gt;
  &lt;/#if&gt;
&lt;/#macro&gt;

&lt;@m 1 2 3 4 5 /&gt;

&lt;@m a=1 b=2 c=3 d=4 e=5 data\-foo=6 myns\:bar=7 /&gt;</pre>
 </div> 
 <p>Output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
  
<#macro m a b ext...>
  a = ${a}
  b = ${b}
  <#if ext?is_sequence>
    <#list ext as e>
      ${e?index} = ${e}
    </#list>
  <#else>
    <#list ext as k, v>
      ${k} = ${v}
    </#list>
  </#if>
</#macro>

<@m 1 2 3 4 5 />

<@m a=1 b=2 c=3 d=4 e=5 data\-foo=6 myns\:bar=7 />
      </pre>
 </div> 
 <div class="callout warning"> 
  <strong class="callout-label">Warning!</strong> 
  <p>Currently, named catch-all parameters are unordered, that is, you don't know what order will they be enumerated. That is, they aren't returned in the same order as they were passed in (that above example output shows them in the same order for understandability only).</p> 
 </div> 
 <h3 class="content-header header-section3" id="autoid_110">nested</h3> 
 <a name="ref.directive.nested"></a> 
 <p>The <code class="inline-code">nested</code> directive executes the template fragment between the start-tag and end-tags of the user-defined directive. The nested part can contain anything what is valid in templates; interpolations, directives, ...etc. It is executed in the context where the macro was called from, rather than in the context of the macro definition body. Thus, for example, you don't see the local variables of the macro in the nested part. If you don't call the <code class="inline-code">nested</code> directive, the part between the start-tag and end-tags of the user-defined directive will be ignored.</p> 
 <p>Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro do_twice&gt;
  1. &lt;#nested&gt;
  2. &lt;#nested&gt;
&lt;/#macro&gt;
&lt;@do_twice&gt;something&lt;/@do_twice&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#macro do_twice>
  1. <#nested>
  2. <#nested>
</#macro>
<@do_twice>something</@do_twice>
 </pre>
 </div> 
 <p>The nested directive can create loop variables for the nested content. For example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro do_thrice&gt;
  &lt;#nested <strong>1</strong>&gt;
  &lt;#nested <strong>2</strong>&gt;
  &lt;#nested <strong>3</strong>&gt;
&lt;/#macro&gt;
&lt;@do_thrice <strong>; x</strong>&gt;
  &#36;{<strong>x</strong>} Anything.
&lt;/@do_thrice&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#macro do_thrice>
  <#nested 1>
  <#nested 2>
  <#nested 3>
</#macro>
<@do_thrice ; x>
  ${x} Anything.
</@do_thrice>
 </pre>
 </div> 
 <p>A more complex example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro repeat count&gt;
  &lt;#list 1..count as x&gt;
    &lt;#nested <strong>x, x/2, x==count</strong>&gt;
  &lt;/#list&gt;
&lt;/#macro&gt;
&lt;@repeat count=4 ; <strong>c, halfc, last</strong>&gt;
  &#36;{<strong>c</strong>}. &#36;{<strong>halfc</strong>}&lt;#if <strong>last</strong>&gt; Last!&lt;/#if&gt;
&lt;/@repeat&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#macro repeat count>
  <#list 1..count as x>
    <#nested x, x/2, x==count>
  </#list>
</#macro>
<@repeat count=4 ; c, halfc, last>
  ${c}. ${halfc}<#if last> Last!</#if>
</@repeat>
 </pre>
 </div> 
 <h3 class="content-header header-section3" id="autoid_111">return</h3> 
 <a name="ref.directive.macro.return"></a> 
 <p>With the <code class="inline-code">return</code> directive, you can leave a macro or function definition body anywhere. Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro test&gt;
  Test text
  &lt;#return&gt;
  Will not be printed.
&lt;/#macro&gt;
&lt;@test/&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#macro test>
  Test text
  <#return>
  Will not be printed.
</#macro>
<@test/>  
  </pre>
 </div> 

</div>
</body>
</html>
