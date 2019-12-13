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
   <a class="paging-arrow previous" href="ref_directive_nt.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_setting.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_outputformat" itemprop="headline">outputformat</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_118" data-menu-target="autoid_118">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_119" data-menu-target="autoid_119">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.outputformat"></a> 
 <h2 class="content-header header-section2" id="autoid_118">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#outputformat <em class="code-color">formatName</em>&gt;
  <em class="code-color">...</em>
&lt;/#outputFormat&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">formatName</em></code>: A string constant; can't contain runtime expressions! This is the name of the output format, like <code class="inline-code">"HTML"</code>, <code class="inline-code">"XML"</code>, etc.; see the <a href="dgui_misc_autoescaping.html#topic.predefinedOutputFormats">table of the predefined output formats here</a>. The referred output format must be known by the <code class="inline-code">Configuration</code>, or else a <a href="gloss.html#gloss.parseTimeError">parse-time error</a> will occur. The name can also be like <code class="inline-code">"<em class="code-color">outerFormatName</em>{<em class="code-color">innerFormatName</em>}"</code>, or <code class="inline-code">"{<em class="code-color">innerFormatName</em>}"</code>; <a href="#topic.combinedOutputFormats">see combined output formats later</a>. </li> 
 </ul> 
 <p>Camel case name variant: <code class="inline-code">outputFormat</code> </p>
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p><code class="inline-code">outputformat</code> exists since FreeMarker 2.3.24.</p> 
 </div> 
 <p></p> 
 <h2 class="content-header header-section2" id="autoid_119">Description</h2> 
 <p>Sets the <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_outputformat">output format</a> to the specified one, inside the nested block. At the end of the block, the earlier output format is restored.</p> 
 <p>This directive only has effect on the section that is literally (as in the text editor) inside the nested bock, not on the parts that are called/included from there.</p> 
 <p>Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#ftl output_format="XML"&gt;
XML escaping: &#36;{"&amp;{}"}
&lt;#outputformat "RTF"&gt;
  RTF escaping: &#36;{"&amp;{}"}
&lt;/#outputformat&gt;
&lt;#outputformat "plainText"&gt;
  No escsaping: &#36;{"&amp;{}"}
&lt;/#outputformat&gt;
XML escsaping: &#36;{"&amp;{}"}</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">XML escsaping: &amp;amp;{}
  RTF escaping: &amp;\{\}
  No escsaping: &amp;{}
XML escsaping: &amp;amp;{}</pre>
 </div> 
 <h3 class="content-header header-simplesect" id="topic.combinedOutputFormats">Combined (nested) output formats</h3> 
 <p>When <code class="inline-code">outputformat</code>-s are nested into each other, normally, only the innermost output format will count. For example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#ftl output_format="XML"&gt;
&#36;{"'{}"}
&lt;#outputformat "HTML"&gt;
  &#36;{"'{}"}
  &lt;#outputformat "RTF"&gt;
    &#36;{"'{}"}
  &lt;/#outputformat&gt;
&lt;/#outputformat&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">&amp;apos;{}
  &amp;#39;{}
    '\{\}</pre>
 </div> 
 <p>But sometimes you want all enclosing output format escaping to be applied at once. In that case the 2nd <code class="inline-code">&#36;{<em class="code-color">...</em>}</code> above should be escaped with <code class="inline-code">"HTML"</code> and then with <code class="inline-code">"XML"</code>, and the 3rd <code class="inline-code">&#36;{<em class="code-color">...</em>}</code> should be escaped with <code class="inline-code">"RTF"</code> and then with <code class="inline-code">"HTML"</code> and then with <code class="inline-code">"XML"</code>. These are called combined output formats, and can be referred by names like <code class="inline-code">"XML{HTML}"</code> and <code class="inline-code">"XML{HTLM{RTF}}"</code>, respectively. We could use these names in the earlier two <code class="inline-code">outputformat</code> calls, however, there's a shorthand where you inherit the part outside the <code class="inline-code">{<em class="code-color">...</em>}</code> from the enclosing output format:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#ftl outputFormat="XML"&gt;
&#36;{"'{}"}
&lt;#outputFormat "{HTML}"&gt;&lt;#-- Same as "XML{HTML}" --&gt;
  &#36;{"'{}"}
  &lt;#outputFormat '{RTF}'&gt;&lt;#-- Same as "XML{HTML{RTF}}" --&gt;
    &#36;{"'{}"}
  &lt;/#outputFormat&gt;
&lt;/#outputFormat&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">&amp;apos;{}
  &amp;amp;#39;{}
    &amp;amp;#39;\{\}</pre>
 </div> 

</div>
</body>
</html>
