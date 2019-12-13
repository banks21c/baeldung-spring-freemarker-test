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
   <a class="paging-arrow previous" href="ref_directive_stop.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_t.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_switch" itemprop="headline">switch, case, default, break</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_124" data-menu-target="autoid_124">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_125" data-menu-target="autoid_125">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.switch"></a>
 <a name="ref.directive.case"></a>
 <a name="ref.directive.default"></a>
 <a name="ref.directive.switch.break"></a> 
 <h2 class="content-header header-section2" id="autoid_124">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#switch <em class="code-color">value</em>&gt;
  &lt;#case <em class="code-color">refValue1</em>&gt;
    <em class="code-color">...</em>
    &lt;#break&gt;
  &lt;#case <em class="code-color">refValue2</em>&gt;
    <em class="code-color">...</em>
    &lt;#break&gt;
  <em class="code-color">...</em>
  &lt;#case <em class="code-color">refValueN</em>&gt;
    <em class="code-color">...</em>
    &lt;#break&gt;
  &lt;#default&gt;
    <em class="code-color">...</em>
&lt;/#switch&gt;
</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">value</em></code>, <code class="inline-code"><em class="code-color">refValue1</em></code>, etc.: Expressions evaluates to scalars of the same type. </li> 
 </ul> 
 <p>The <code class="inline-code">break</code>-s and <code class="inline-code">default</code> are optional.</p> 
 <h2 class="content-header header-section2" id="autoid_125">Description</h2> 
 <p>The usage of this directive is not recommended, as it's error-prone because of the fall-through behavior. Use <a href="ref_directive_if.html#ref.directive.elseif"><code>elseif</code></a>-s instead unless you want to exploit the fall-through behavior.</p> 
 <p>Switch is used to choose a fragment of template depending on the value of an expression:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#switch animal.size&gt;
  &lt;#case "small"&gt;
     This will be processed if it is small
     &lt;#break&gt;
  &lt;#case "medium"&gt;
     This will be processed if it is medium
     &lt;#break&gt;
  &lt;#case "large"&gt;
     This will be processed if it is large
     &lt;#break&gt;
  &lt;#default&gt;
     This will be processed if it is neither
&lt;/#switch&gt;</pre>
 </div> 
 <p>Inside the <code class="inline-code">switch</code> must be one or more <code class="inline-code">&lt;#case <em class="code-color">value</em>&gt;</code>, and after all such <code class="inline-code">case</code> tags optionally one <code class="inline-code">&lt;#default&gt;</code>. When FM reaches the <code class="inline-code">switch</code> directive, it chooses a <code class="inline-code">case</code> directive where <code class="inline-code"><em class="code-color">refValue</em></code> equals with <code class="inline-code"><em class="code-color">value</em></code> and continues the processing of the template there. If there is no <code class="inline-code">case</code> directive with appropriate value then it continues processing at the <code class="inline-code">default</code> directive if that exists, otherwise it continues the processing after the end-tag of <code class="inline-code">switch</code>. And now comes the confusing thing: when it has chosen a <code class="inline-code">case</code> directive, it will continue the processing there, and will go ahead until it reaches a <code class="inline-code">break</code> directive. That is, it will not automatically leave the <code class="inline-code">switch</code> directive when it reaches another <code class="inline-code">case</code> directive or the <code class="inline-code">&lt;#default&gt;</code> tag. Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#switch x&gt;
  &lt;#case 1&gt;
    1
  &lt;#case 2&gt;
    2
  &lt;#default&gt;
    d
&lt;/#switch&gt;</pre>
 </div> 
 <p>If <code class="inline-code">x</code> is 1, then it will print 1 2 d; if <code class="inline-code">x</code> is 2 then it will print 2 d; if <code class="inline-code">x</code> is 3 then it will print d. This is the mentioned fall-through behavior. The <code class="inline-code">break</code> tag instructs FM to immediately skip past the <code class="inline-code">switch</code> end-tag.</p> 

</div>
</body>
</html>
