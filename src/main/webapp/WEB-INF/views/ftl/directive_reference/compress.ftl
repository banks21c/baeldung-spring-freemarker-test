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
   <a class="paging-arrow previous" href="ref_directive_autoesc.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_escape.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_compress" itemprop="headline">compress</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_84" data-menu-target="autoid_84">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_85" data-menu-target="autoid_85">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.compress"></a> 
 <h2 class="content-header header-section2" id="autoid_84">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#compress&gt;
  <em class="code-color">...</em>
&lt;/#compress&gt;</code>
</pre> 
 <h2 class="content-header header-section2" id="autoid_85">Description</h2> 
 <p>The compress directive is useful for removing superfluous <a href="gloss.html#gloss.whiteSpace">white-space</a> when you use a white-space insensitive format (e.g. HTML or XML). It captures the output generated inside its body (i.e. between its start-tag and end-tag), and reduces all unbroken white-space sequences to a single white-space character. The inserted character will be a <a href="gloss.html#gloss.lineBreak">line break</a> if the replaced sequence contains line breaks, or a space otherwise. The very first and very last unbroken white-space sequences will be completely removed.</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign x = "    moo  \n\n   "&gt;
(&lt;#compress&gt;
  1 2  3   4    5
  &#36;{moo}
  test only

  I said, test only

&lt;/#compress&gt;)</pre>
 </div> 
 <p>will output:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#assign x = "    moo  \n\n   ">
(<#compress>
  1 2  3   4    5
  ${x}
  test only

  I said, test only

</#compress>)  

</pre>
 </div> 

</div>
</body>
</html>
