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
   <a class="paging-arrow previous" href="ref_directive_escape.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_ftl.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_flush" itemprop="headline">flush</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_88" data-menu-target="autoid_88">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_89" data-menu-target="autoid_89">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.flush"></a> 
 <h2 class="content-header header-section2" id="autoid_88">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#flush&gt;</code></pre> 
 <h2 class="content-header header-section2" id="autoid_89">Description</h2> 
 <p>When FreeMarker generates the output, it's usually not sent immediately to the final receiving party (like a web browser or a destination file), but is accumulated in a buffer, then it's sent out in bigger chunks. The exact rules of the buffering is not decided by FreeMarker, but by the embedding software. Sending out the content accumulated in the buffer is called flushing. Although flushing happens automatically, sometimes you want to force it on certain points of the template processing, and this is what the <code class="inline-code">flush</code> directive does. Whether it's needed at certain points should be decided by a programmer, not a designer.</p> 
 <p>Note that while <code class="inline-code">flush</code> tells the embedding software that we want to flush, that might as well decides to ignore this request. It's not in the hands of FreeMarker.</p> 
 <p><span class="marked-for-programmers">Flush simply calls the <code class="inline-code">flush()</code> method of the currently used <code class="inline-code">java.io.Writer</code> instance. The whole buffering and flushing mechanism is implemented in the <code class="inline-code">Writer</code> (that you have passed as the parameter of the <code class="inline-code">Template.process</code> method); FreeMarker does not deal with it.</span></p> 

</div>
</body>
</html>
