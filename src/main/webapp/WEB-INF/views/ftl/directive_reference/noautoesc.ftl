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
   <a class="paging-arrow previous" href="ref_directive_macro.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_noparse.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_noautoesc" itemprop="headline">noautoesc</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_112" data-menu-target="autoid_112">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_113" data-menu-target="autoid_113">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.noautoesc"></a> 
 <h2 class="content-header header-section2" id="autoid_112">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#noautoesc&gt;
  <em class="code-color">...</em>
&lt;/#noautoesc&gt;</code>
</pre> 
 <p>Camel case name variant: <code class="inline-code">noAutoEsc</code></p> 
 <h2 class="content-header header-section2" id="autoid_113">Description</h2> 
 <p>Disables <a href="dgui_misc_autoescaping.html">auto-escaping</a> in the nested section. Note that to prevent escaping for just a single <code class="inline-code">&#36;{<em class="code-color">expression</em>}</code> you should use <code class="inline-code">&#36;{<em class="code-color">expression</em>?no_esc}</code> instead.</p> 
 <p>This directive only has effect on the section that is literally (as in the text editor) inside the nested bock, not on the parts that are called/included from there.</p> 
 <p>Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#ftl output_format="XML"&gt;
&#36;{"&amp;"}
&lt;#noautoesc&gt;
  &#36;{"&amp;"}
  ...
  &#36;{"&amp;"}
&lt;/#noautoesc&gt;
&#36;{"&amp;"}</pre>
 </div>
  <div class="code-wrapper">
  <pre class="code-block code-output">
<#include "noautoesc_include.ftl"/>

</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">&amp;amp;
  &amp;
  ...
  &amp;
&amp;amp;</pre>
 </div> 
 <p><code class="inline-code">noautoesc</code> can be used regardless of what the current <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_outputformat">output format</a> is (unlike the <a href="ref_directive_autoesc.html"><code>autoesc</code> directive</a>).</p> 
 <p><code class="inline-code">noautoesc</code> can also be used nested into <a href="ref_directive_autoesc.html"><code>autoesc</code> directive</a> to re-enable escaping.</p> 
 <p><code class="inline-code">noautoesc</code> can be used on places where auto-escaping is already disabled, such as even inside another <code class="inline-code">noautoesc</code> block. Doing so is redundant but allowed.</p> 

</div>
</body>
</html>
