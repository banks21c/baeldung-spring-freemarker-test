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
   <a class="paging-arrow previous" href="ref_directive_assign.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_autoesc.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_attempt" itemprop="headline">attempt, recover</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_80" data-menu-target="autoid_80">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_81" data-menu-target="autoid_81">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.attempt"></a> 
 <h2 class="content-header header-section2" id="autoid_80">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#attempt&gt;
  <em class="code-color">attempt block</em>
&lt;#recover&gt;
  <em class="code-color">recover block</em>
&lt;/#attempt&gt;
</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">attempt block</em></code>: Template block with any content. This will be always executed, but if an error occurs during that, all output from this block is rolled back, and the <code class="inline-code"><em class="code-color">recover block</em></code> will be executed. </li> 
  <li> <code class="inline-code"><em class="code-color">recover block</em></code>: Template block with any content. This will be executed only if there was an error during the execution of the <code class="inline-code"><em class="code-color">attempt block</em></code>. You may print an error messages here and such. </li> 
 </ul> 
 <p>The <code class="inline-code"><em class="code-color">recover</em></code> is mandatory. <code class="inline-code">attempt</code>/<code class="inline-code">recover</code> can be nested freely into other <code class="inline-code"><em class="code-color">attempt block</em></code>s or <code class="inline-code"><em class="code-color">recover block</em></code>s.</p> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>The format shown here is supported starting from 2.3.3; earlier it was <code class="inline-code">&lt;#attempt&gt;<em class="code-color">...</em>&lt;#recover&gt;<em class="code-color">...</em>&lt;/#recover&gt;</code>, which is still supported for backward compatibility. Furthermore, these directives were introduced with FreeMarker 2.3.1, so they aren't exist in 2.3.</p> 
 </div> 
 <h2 class="content-header header-section2" id="autoid_81">Description</h2> 
 <p>These directives are used if you want the page successfully outputted even if the outputting of a certain part of the page fails. If an error occurs during the execution of the <code class="inline-code"><em class="code-color">attempt block</em></code>, then the output of the <code class="inline-code"><em class="code-color">attempt block</em></code> is rolled back <span class="marked-for-programmers">(and the error is logged, with the default configuration at least)</span>, and the <code class="inline-code"><em class="code-color">recover block</em></code> is executed instead, then template execution continues normally after the <code class="inline-code"><em class="code-color">recover block</em></code>. If no error occurs during the execution of the <code class="inline-code"><em class="code-color">attempt block</em></code>, then the <code class="inline-code"><em class="code-color">recover block</em></code> is ignored. A simple example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">Primary content
&lt;#attempt&gt;
  Optional content: &#36;{thisMayFails}
&lt;#recover&gt;
  Ops! The optional content is not available.
&lt;/#attempt&gt;
Primary content continued</pre>
 </div> 
 <p>If the <code class="inline-code">thisMayFails</code> variable doesn't exist (or any other error occurs at that place), then the output is:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
Primary content
<#attempt>
  Optional content: ${thisMayFails}
<#recover>
  Ops! The optional content is not available.
</#attempt>
Primary content continued
  </pre>
 </div> 
 <p>If the <code class="inline-code">thisMayFails</code> variable exists and it's value is <code class="inline-code">123</code>, then the output is:</p> 
<#assign thisMayFails = 123/>
  <div class="code-wrapper">
  <pre class="code-block code-output">
Primary content
<#attempt>
  Optional content: ${thisMayFails}
<#recover>
  Ops! The optional content is not available.
</#attempt>
Primary content continued
</pre>
 </div> 
 <p>The <code class="inline-code"><em class="code-color">attempt block</em></code> has an all-or-none semantic: either the entire content of the <code class="inline-code"><em class="code-color">attempt block</em></code> is output (when there was no error), or no output at all results from the execution of the <code class="inline-code"><em class="code-color">attempt block</em></code> (when there was an error). For example, above, the failure happens after "Optional content: " was printed, still it is not there in the output before the "Ops!". (<span class="marked-for-programmers">This is implemented with the aggressive buffering of the output inside the <code class="inline-code"><em class="code-color">attempt block</em></code>. Not even the <code class="inline-code">flush</code> directive will send the output to the client.</span>)</p> 
 <p>To prevent misunderstandings coming from the above example: <code class="inline-code">attempt</code>/<code class="inline-code">recover</code> is not (only) for handling undefined variables (for that use <a href="dgui_template_exp.html#dgui_template_exp_missing">missing value handler operators</a>). It can handle all kind of errors that occurs when the block is executed (i.e. not syntactical errors, which are detected earlier). It meant to enclose bigger template fragments, where error can occur at various points. For example, you have a part in your template that deals with printing advertisements, but that's not the primary content of the page, so you don't want your whole page be down just because some error occurs with the printing of the advertisements (say, because of a database server outage). So you put the whole advertisement printing into an <code class="inline-code"><em class="code-color">attempt block</em></code>.</p> 
 <p>In some environments programmers configure FreeMarker so that it doesn't abort template execution for certain errors, but continues execution, possibly after printing some error indicator to the output (<span class="marked-for-programmers">see more <a href="pgui_config_errorhandling.html">here...</a></span>). The <code class="inline-code">attempt</code> directive doesn't consider such suppressed errors as errors.</p> 
 <p>Inside a <code class="inline-code"><em class="code-color">recover block</em></code> the error message of the error is available with the <code class="inline-code">error</code> <a href="ref_specvar.html">special variable</a>. Don't forget that references to special variable are started with dot (for example: <code class="inline-code">&#36;{.error}</code>).</p> 
 <p><span class="marked-for-programmers">By default errors occurring inside an <code class="inline-code"><em class="code-color">attempt block</em></code> are <a href="pgui_misc_logging.html">logged</a> with <code class="inline-code">ERROR</code> level, despite that the template recovers from them. This is because <code class="inline-code">attempt</code> is not meant to be a general purpose error handler mechanism, like <code class="inline-code">try</code> is in Java. It's for decreasing the impact of unexpected errors on the visitors, by making it possible that only part of the page is going down, instead of the whole page. But it's still an error, something that needs the attention of the operators. (The way this error is reported can be customized with the <code class="inline-code">attempt_exception_reporter</code> configuration setting, since FreeMarker 2.3.27.)</span></p> 

</div>
</body>
</html>
