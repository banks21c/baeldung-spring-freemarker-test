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
   <a class="paging-arrow previous" href="ref_directive_noautoesc.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_nt.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_noparse" itemprop="headline">noparse</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_114" data-menu-target="autoid_114">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_115" data-menu-target="autoid_115">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.noparse"></a> 
 <h2 class="content-header header-section2" id="autoid_114">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#noparse&gt;
  <em class="code-color">...</em>
&lt;/#noparse&gt;</code>
</pre> 
 <p>Camel case name variant: <code class="inline-code">noParse</code></p> 
 <h2 class="content-header header-section2" id="autoid_115">Description</h2> 
 <p>FreeMarker will not search FTL tags and interpolations and other special character sequences in the body of this directive, except the noparse end-tag.</p> 
 <p>Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">Example:
--------

<strong>&lt;#noparse&gt;</strong>
  &lt;#list animals as animal&gt;
  &lt;tr&gt;&lt;td&gt;&#36;{animal.name}&lt;td&gt;&#36;{animal.price} Euros
  &lt;/#list&gt;
<strong>&lt;/#noparse&gt;</strong></pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
Example:
--------

<#noparse>
  <#list animals as animal>
  <tr><td>${animal.name}<td>${animal.price} Euros
  </#list>
</#noparse>
 </pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
  Example:
--------

  &lt;#list animals as animal&gt;
  &lt;tr&gt;&lt;td&gt;&#36;{animal.name}&lt;td&gt;&#36;{animal.price} Euros
  &lt;/#list&gt;
 </pre>
 </div> 

</div>
</body>
</html>
