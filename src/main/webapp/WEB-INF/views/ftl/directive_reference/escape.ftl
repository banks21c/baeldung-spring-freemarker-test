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
   <a class="paging-arrow previous" href="ref_directive_compress.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_flush.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_escape" itemprop="headline">escape, noescape (deprecated)</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_86" data-menu-target="autoid_86">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_87" data-menu-target="autoid_87">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.escape"></a>
 <a name="ref.directive.noescape"></a> 
 <h2 class="content-header header-section2" id="autoid_86">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#escape <em class="code-color">identifier</em> as <em class="code-color">expression</em>&gt;
  <em class="code-color">...</em>
  &lt;#noescape&gt;<em class="code-color">...</em>&lt;/#noescape&gt;
  <em class="code-color">...</em>
&lt;/#escape&gt;</code>
</pre> 
 <p>Camel case name variant: <code class="inline-code">noEscape</code></p> 
 <h2 class="content-header header-section2" id="autoid_87">Description</h2> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>These directives are <em>deprecated</em> by <a href="dgui_misc_autoescaping.html">output-format-based auto-escaping</a> since 2.3.24. Furthermore, on places that use auto-escaping (with an output format that actually does escaping) you aren't allowed to use the <code class="inline-code">escape</code> directive (as you will find out from the parsing error message anyway).</p> 
 </div> 
 <p>When you surround a part of the template with an escape directive, interpolations (<code class="inline-code">&#36;{<em class="code-color">...</em>}</code>) that occur inside the block are combined with the escaping expression automatically. This is a convenience method for avoiding writing similar expressions all over. It does not affect interpolations in string literals (as in <code class="inline-code">&lt;#assign x = "Hello&nbsp;&#36;{user}!"&gt;</code>). Also, it does not affect numerical interpolations (<code class="inline-code">&#35;{<em class="code-color">...</em>}</code>).</p> 
 <p>Example:</p>
 <#assign user = "kdhong">
 <#assign firstName = "kd">
 <#assign lastName = "hong">
 <#assign maidenName = "mister">
 <#assign x = "Hello ${user}!">
 <div class="code-wrapper">
  <pre class="code-block code-template"><strong>&lt;#escape x as x?html&gt;</strong>
  First name: &#36;{firstName}
  Last name: &#36;{lastName}
  Maiden name: &#36;{maidenName}
<strong>&lt;/#escape&gt;</strong></pre>
 </div>
 
<div class="code-wrapper">
<pre class="code-block code-output">
<#escape x as x?html>
  First name: ${firstName}
  Last name: ${lastName}
  Maiden name: ${maidenName}
</#escape>
</pre>
</div>

 <p>is actually equivalent to:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">  First name: &#36;{firstName<strong>?html</strong>}
  Last name: &#36;{lastName<strong>?html</strong>}
  Maiden name: &#36;{maidenName<strong>?html</strong>}</pre>
 </div>
 
<div class="code-wrapper">
<pre class="code-block code-output">
  First name: ${firstName?html}
  Last name: ${lastName?html}
  Maiden name: ${maidenName?html}
</pre>
</div>

 <p>Note that it is irrelevant what identifier you use in the directive - it just serves as a formal parameter to the escaping expression.</p> 
 <p>When you are calling macros or the <code class="inline-code">include</code> directive, it is important to understand that escape has effect only on interpolations that occur between the <code class="inline-code">&lt;#escape <em class="code-color">...</em>&gt;</code> and <code class="inline-code">&lt;/#escape&gt;</code> <em>in the template text</em>. That is, it will not escape anything that is before <code class="inline-code">&lt;#escape <em class="code-color">...</em>&gt;</code> in the text, or after the <code class="inline-code">&lt;/#escape&gt;</code> in the text, not even if that part is called from inside the <code class="inline-code">escape</code>-d section.</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign x = "&lt;test&gt;"&gt;
&lt;#macro m1&gt;
  m1: &#36;{x}
&lt;/#macro&gt;
&lt;#escape x as x?html&gt;
  &lt;#macro m2&gt;m2: &#36;{x}&lt;/#macro&gt;
  &#36;{x}
  &lt;@m1/&gt;
&lt;/#escape&gt;
&#36;{x}
&lt;@m2/&gt;</pre>
 </div> 
 <p>the output will be:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#assign x = "<test>">
<#macro m1>
  m1: ${x}
</#macro>
<#escape x as x?html>
  <#macro m2>m2: ${x}</#macro>
  ${x}
  <@m1/>
</#escape>
${x}
<@m2/>
</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">  &amp;lt;test&amp;gt;
  m1: &lt;test&gt;
&lt;test&gt;
m2: &amp;lt;test&amp;gt;</pre>
 </div> 
 <p><span class="marked-for-programmers">More technically, the effects of <code class="inline-code">escape</code> directive are applied at template parsing time rather than at template processing time. This means that if you call a macro or include another template from within an escape block, it won't affect the interpolations in the macro/included template, since macro calls and template includes are evaluated at template processing time. On the other hand, if you surround one or more macro declarations (which are evaluated at template parsing time, as opposed to macro calls) with an escape block, the interpolations in those macros will be combined with the escaping expression.</span></p> 
 <p>Sometimes there is a need to temporarily turn off escaping for one or two interpolations in an escape block. You can achieve this by closing and later reopening the escape block, but then you have to write the escaping expression twice. You can instead use the noescape directive:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#escape x as x?html&gt;
  From: &#36;{mailMessage.From}
  Subject: &#36;{mailMessage.Subject}
  <strong>&lt;#noescape&gt;</strong>Message: &#36;{mailMessage.htmlFormattedBody}<strong>&lt;/#noescape&gt;</strong>
  <em>...</em>
&lt;/#escape&gt;</pre>
 </div> 
 <p>is equivalent to:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">  From: &#36;{mailMessage.From?html}
  Subject: &#36;{mailMessage.Subject?html}
  Message: &#36;{mailMessage.htmlFormattedBody}
  ...</pre>
 </div> 
 <p>Escapes can be nested (although you will do it only in rare circumstances). Therefore, you can write something like the below code (the example is admittedly a bit stretched, as you'd probably place item codes in a sequence and use <code class="inline-code">list</code> to iterate over them, but we're now doing it this way just to illustrate the point):</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template"><strong>&lt;#escape x as x?html&gt;</strong>
  Customer Name: &#36;{customerName}
  Items to ship:
  <strong>&lt;#escape x as itemCodeToNameMap[x]&gt;</strong>
    &#36;{itemCode1}
    &#36;{itemCode2}
    &#36;{itemCode3}
    &#36;{itemCode4}
  <strong>&lt;/#escape&gt;</strong>
<strong>&lt;/#escape&gt;</strong></pre>
 </div> 
 <p>is actually equivalent to:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">  Customer Name: &#36;{customerName?html}
  Items to ship:
    &#36;{itemCodeToNameMap[itemCode1]?html}
    &#36;{itemCodeToNameMap[itemCode2]?html}
    &#36;{itemCodeToNameMap[itemCode3]?html}
    &#36;{itemCodeToNameMap[itemCode4]?html}</pre>
 </div> 
 <p>When you use the noescape directive in a nested escape block, it undoes only a single level of escaping. Therefore, to completely turn off escaping in a two-level deep escaped block, you need to use two nested noescape directives as well.</p> 

</div>
</body>
</html>
