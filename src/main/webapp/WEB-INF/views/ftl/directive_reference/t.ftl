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
   <a class="paging-arrow previous" href="ref_directive_switch.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_userDefined.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_t" itemprop="headline">t, lt, rt</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_126" data-menu-target="autoid_126">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_127" data-menu-target="autoid_127">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.t"></a>
 <a name="ref.directive.lt"></a>
 <a name="ref.directive.rt"></a> 
 <h2 class="content-header header-section2" id="autoid_126">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#t&gt;</code>

<code class="inline-code">&lt;#lt&gt;</code>

<code class="inline-code">&lt;#rt&gt;</code></pre> 
 <h2 class="content-header header-section2" id="autoid_127">Description</h2> 
 <p>These directives, instruct FreeMarker to ignore certain white-space in the line of the tag:</p> 
 <ul> 
  <li> <p><code class="inline-code">t</code> (for trim): Ignore all leading and trailing white-space in this line.</p> </li> 
  <li> <p><code class="inline-code">lt</code> (for left trim): Ignore all leading white-space in this line.</p> </li> 
  <li> <p><code class="inline-code">rt</code> (for right trim): Ignore all trailing white-space in this line.</p> </li> 
 </ul> 
 <p>where:</p> 
 <ul> 
  <li> <p>"leading white-space" means all space and tab (and other character that are white-space according to <a href="gloss.html#gloss.unicode">UNICODE</a>, except <a href="gloss.html#gloss.lineBreak">line breaks</a>) before the first non-white-space character of the line.</p> </li> 
  <li> <p>"trailing white-space" means all space and tab (and other character that are white-space according to <a href="gloss.html#gloss.unicode">UNICODE</a>, except line breaks) after the last non-white-space character of the line, <em>and</em> the line break at the end of the line.</p> </li> 
 </ul> 
 <p>It is important to understand that these directives examine the template itself, and <em>not</em> the output what the template generates when you merge it with the data-model. <span class="marked-for-programmers">(That is, the white-space removal happens on parse time.)</span></p> 
 <p>For example this:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">--
  1 &lt;#t&gt;
  2&lt;#t&gt;
  3&lt;#lt&gt;
  4
  5&lt;#rt&gt;
  6
--</pre>
 </div> 
 <p>will output this:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">--
1 23
  4
  5  6
--</pre>
 </div> 
 <p>The placement of these directives inside the line has no importance. That is, the effect will be the same regardless if you put the directive at the beginning of the line, or at the end of the line, or in the middle of the line.</p> 

</div>
</body>
</html>
