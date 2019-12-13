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
   <a class="paging-arrow previous" href="ref_directive_attempt.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_compress.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_autoesc" itemprop="headline">autoesc</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_82" data-menu-target="autoid_82">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_83" data-menu-target="autoid_83">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.autoesc"></a> 
 <h2 class="content-header header-section2" id="autoid_82">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#autoesc&gt;
  <em class="code-color">...</em>
&lt;/#autoesc&gt;</code>
</pre> 
 <p>Camel case name variant: <code class="inline-code">autoEsc</code></p> 
 <h2 class="content-header header-section2" id="autoid_83">Description</h2> 
 <p>Turns on <a href="dgui_misc_autoescaping.html">auto-escaping</a> in the nested section. Auto-escaping is usually enabled by default if the current <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_outputformat">output format</a> has auto-escaping by default, so you rarely need this. Note that to escape just a single <code class="inline-code">&#36;{<em class="code-color">expression</em>}</code> where auto-escaping is disabled you should use <code class="inline-code">&#36;{<em class="code-color">expression</em>?esc}</code> instead.</p> 
 <p>This directive only has effect on the section that is literally (as in the text editor) inside the nested bock, not on the parts that are called/included from there.</p> 
 <p>Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#ftl output_format="XML" auto_esc=false&gt;
&#36;{"&amp;"}
&lt;#autoesc&gt;
  &#36;{"&amp;"}
  ...
  &#36;{"&amp;"}
&lt;/#autoesc&gt;
&#36;{"&amp;"}</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#include "autoesc_include.ftl"/>
</pre>
 </div> 
 <p><code class="inline-code">autoesc</code> can't be used where the current <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_outputformat">output format</a> is a <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_nonmarkupof">non-markup output format</a> (and hence can't do escaping). Doing so is a <a href="gloss.html#gloss.parseTimeError">parse-time error</a>.</p> 
 <p><code class="inline-code">autoesc</code> can also be used nested into <a href="ref_directive_noautoesc.html"><code>noautoesc</code> directive</a> to re-enable auto-escaping.</p> 
 <p><code class="inline-code">autoesc</code> can be used on places where auto-escaping is already enabled, such as even inside another <code class="inline-code">autoesc</code> block. Doing so is redundant but allowed.</p> 

</div>
</body>
</html>
