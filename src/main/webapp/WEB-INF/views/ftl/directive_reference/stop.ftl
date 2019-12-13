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
   <a class="paging-arrow previous" href="ref_directive_setting.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_switch.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_stop" itemprop="headline">stop</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_122" data-menu-target="autoid_122">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_123" data-menu-target="autoid_123">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.stop"></a> 
 <h2 class="content-header header-section2" id="autoid_122">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#stop&gt;</code>
or
<code class="inline-code">&lt;#stop <em class="code-color">reason</em>&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">reason</em></code>: Informative message that describes the reason of the terminating error. Expression, must evaluate to a string. </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_123">Description</h2> 
 <p>Aborts template processing with the given (optional) error message. <em>This must not be used for ending template processing in normal situations!</em> The caller of the FreeMarker template will see this as a failed template rendering, not as a normally finished one.</p> 
 <p><span class="marked-for-programmers">This directive throws a <code class="inline-code">StopException</code>, and the <code class="inline-code">StopException</code> will hold the value of the reason parameter.</span></p> 

</div>
</body>
</html>
