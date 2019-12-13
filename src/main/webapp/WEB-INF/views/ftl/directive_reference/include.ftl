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
   <a class="paging-arrow previous" href="ref_directive_import.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_list.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_include" itemprop="headline">include</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_100" data-menu-target="autoid_100">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_101" data-menu-target="autoid_101">Description</a>
    <ul>
     <li><a class="page-menu-link" href="#ref_directive_include_acquisition" data-menu-target="ref_directive_include_acquisition">Using acquisition</a></li>
     <li><a class="page-menu-link" href="#ref_directive_include_localized" data-menu-target="ref_directive_include_localized">Localized lookup</a></li>
    </ul></li>
  </ul> 
 </div>
 <a name="ref.directive.include"></a> 
 <h2 class="content-header header-section2" id="autoid_100">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#include <em class="code-color">path</em>&gt;</code>
or
<code class="inline-code">&lt;#include <em class="code-color">path</em> <em class="code-color">options</em>&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">path</em></code>: The path of the file to include; an expression that evaluates to a string. (With other words, it doesn't have to be a fixed string, it can also be something like, for example, <code class="inline-code">profile.baseDir + "/menu.ftl"</code>.) </li> 
  <li> <code class="inline-code"><em class="code-color">options</em></code>: One or more of these: <code class="inline-code">encoding=<em class="code-color">encoding</em></code>, <code class="inline-code">parse=<em class="code-color">parse</em></code> 
   <ul> 
    <li> <code class="inline-code"><em class="code-color">encoding</em></code>: Expression evaluates to string </li> 
    <li> <code class="inline-code"><em class="code-color">parse</em></code>: Expression evaluates to boolean (also accepts a few string values for backward compatibility) </li> 
    <li> <code class="inline-code"><em class="code-color">ignore_missing</em></code>: Expression evaluates to boolean </li> 
   </ul> </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_101">Description</h2> 
 <p>You can use it to insert another FreeMarker template file (specified by the <code class="inline-code"><em class="code-color">path</em></code> parameter) into your template. The output from the included template is inserted at the point where the <code class="inline-code">include</code> tag occurs. The included file shares the variables with the including template, similarly like if it was copy-pasted into it. The <code class="inline-code">include</code> directive is not really replaced by the content of the included file, instead it processes the included file each time when FreeMarker reaches the <code class="inline-code">include</code> directive in the course of template processing. So for example if the <code class="inline-code">include</code> is inside a <code class="inline-code">list</code> loop, you can specify different file names in each cycle.</p> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>This directive is not be confused with the JSP (Servlet) include, as it doesn't involve the Servlet container at all, just processes another FreeMarker template, without "leaving" FreeMarker. Regarding how to do a "JSP include" <a href="app_faq.html#faq_servlet_include">read this...</a></p> 
 </div> 
 <p>The <code class="inline-code"><em class="code-color">path</em></code> parameter can be a relative path like <code class="inline-code">"foo.ftl"</code> and <code class="inline-code">"../foo.ftl"</code>, or an absolute like <code class="inline-code">"/foo.ftl"</code>. Relative paths are relative to the directory of the template that contains the <code class="inline-code">import</code> directive. Absolute paths are relative to a base (often referred as the 'root directory of the templates') that the programmer defines when he configures FreeMarker.</p> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>This is different than the way it worked prior FreeMarker 2.1, where the path was always absolute. To preserve the old behavior, enable the classic compatible mode in the <code class="inline-code">Configuration</code> object.</p> 
 </div> 
 <p>Always use <code class="inline-code">/</code> (slash) to separate path components, never <code class="inline-code">\</code> (backslash). Even if you are loading templates from your local file system and it uses backslashes (like under. Windows), use <code class="inline-code">/</code>.</p> 
 <p>Example:</p> 
 <p>Assume /common/copyright.ftl contains:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">Copyright 2001-2002 &#36;{me}&lt;br&gt;
All rights reserved.</pre>
 </div> 
 <p>Then this:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#assign me = "Juila Smith"&gt;
&lt;h1&gt;Some test&lt;/h1&gt;
&lt;p&gt;Yeah.
&lt;hr&gt;
<strong>&lt;#include "/common/copyright.ftl"&gt;</strong></pre>
 </div> 
 <p>will output this:</p>
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#assign me = "Juila Smith">
<h1>Some test</h1>
<p>Yeah.
<hr>
<#include "/common/copyright.ftl">
</pre>
 </div>
 
 <div class="code-wrapper">
  <pre class="code-block code-output">&lt;h1&gt;Some test&lt;/h1&gt;
&lt;p&gt;Yeah.
&lt;hr&gt;
<strong>Copyright 2001-2002 Juila Smith
All rights reserved.</strong></pre>
 </div> 
 <p>The supported <code class="inline-code"><em class="code-color">options</em></code> are:</p> 
 <ul> 
  <li> <p><code class="inline-code">parse</code>: If it is <code class="inline-code">true</code>, then the included file will be parsed as FTL, otherwise the whole file will be considered as simple text (i.e, no FreeMarker constructs will be searched in it). If you omit this option, then it defaults to <code class="inline-code">true</code>.</p> </li> 
  <li> <p><code class="inline-code">encoding</code>: The encoding (charset) of the included template. You shouldn't use this option anymore; if different template use different encodings, then the programmers should associated the encoding to the templates via <code class="inline-code">Configuration.setTemplateConfigurations(<em class="code-color">...</em>)</code>-s (which also overrides that you specify here). If <code class="inline-code">Configuration.setTemplateConfigurations(<em class="code-color">...</em>)</code> doesn't specify an encoding for the included template, then the included file inherits the encoding (the charset) of the top-level template, unless you specify an encoding with this option. Examples of valid names: UTF-8, ISO-8859-1, ISO-8859-2, Shift_JIS, Big5, EUC-KR, GB2312. <span class="marked-for-programmers">Encoding names are the same as the ones supported be java.io.InputStreamReader (as of Java API 1.3: MIME-preferred charset names from the IANA Charset Registry)</span></p> </li> 
  <li> <p><code class="inline-code">ignore_missing</code>: When <code class="inline-code">true</code>, suppresses the error when the template to include is missing, instead <code class="inline-code">&lt;#include ...&gt;</code> will print nothing. When <code class="inline-code">false</code>, the template processing will stop with error if the template is missing. If you omit this option, then it defaults to <code class="inline-code">false</code>. A more flexible approach to handle missing templates (such as if you need to do something when the template is missing) is using the <a href="ref_specvar.html#ref_specvar_get_optional_template"><code>get_optional_template</code> special variable</a>.</p> 
   <div class="callout note"> 
    <strong class="callout-label">Note:</strong> 
    <p>If <code class="inline-code">ignore_missing</code> is <code class="inline-code">true</code>, yet the <code class="inline-code">include</code> directive fails with "Template inclusion failed" error when the template is missing, that's often because your application uses a custom <code class="inline-code">freemarker.cache.TemplateLoader</code> implementation, which incorrectly (against the API documentation) throws an <code class="inline-code">IOException</code> in the <code class="inline-code">findTemplateSource</code> method instead of returning <code class="inline-code">null</code> if a template is not found. If it's so, the Java programmers need to fix that. Another possibility is of course that it was indeed not possible to tell if the template exists or not due to some technical issues, in which case stopping with error is the correct behavior. See the cause <code class="inline-code">IOException</code> in the Java stack trace to figure out which case it is.</p> 
   </div> </li> 
 </ul> 
 <p>Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#include "/common/navbar.html" parse=false encoding="Shift_JIS"&gt;</pre>
 </div> 
 <p><span class="marked-for-programmers">Note, that it is possible to automatically do the commonly used inclusions for all templates, with the "auto includes" setting of <code class="inline-code">Configuration</code>.</span></p> 
 <h3 class="content-header header-section3" id="ref_directive_include_acquisition">Using acquisition</h3> 
 <p>There's a special path component represented by an asterisk (<code class="inline-code">*</code>). It is interpreted as "this directory or any of its parents". Therefore, if the template located in <code class="inline-code">/foo/bar/template.ftl</code> has the following line:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#include "*/footer.ftl"&gt;</pre>
 </div> 
 <p>then the engine will look for the template in following locations, in this order:</p> 
 <ul> 
  <li> <code class="inline-code">/foo/bar/footer.ftl</code> </li> 
  <li> <code class="inline-code">/foo/footer.ftl</code> </li> 
  <li> <code class="inline-code">/footer.ftl</code> </li> 
 </ul> 
 <p>This mechanism is called <strong>acquisition</strong> and allows the designers to place commonly included files in a parent directory, and redefine them on a per-subdirectory basis as needed. We say that the including template acquires the template to include from the first parent directory that has it. Note that you can specify not only a template name to the right of the asterisk, but a subpath as well. I.e. if the previous template instead read:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#include "*/commons/footer.ftl"&gt;</pre>
 </div> 
 <p>then the engine would look for the template in following locations, in this order:</p> 
 <ul> 
  <li> <code class="inline-code">/foo/bar/commons/footer.ftl</code> </li> 
  <li> <code class="inline-code">/foo/commons/footer.ftl</code> </li> 
  <li> <code class="inline-code">/commons/footer.ftl</code> </li> 
 </ul> 
 <p>Finally, the asterisk needn't be the first element of the path:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#include "commons/*/footer.ftl"&gt;</pre>
 </div> 
 <p>would cause the engine to look for the template in following locations, in this order:</p> 
 <ul> 
  <li> <code class="inline-code">/foo/bar/commons/footer.ftl</code> </li> 
  <li> <code class="inline-code">/foo/bar/footer.ftl</code> </li> 
  <li> <code class="inline-code">/foo/footer.ftl</code> </li> 
  <li> <code class="inline-code">/footer.ftl</code> </li> 
 </ul> 
 <p>However, there can be at most one asterisk in the path. If you specifying more asterisks, the template won't be found.</p> 
 <h3 class="content-header header-section3" id="ref_directive_include_localized">Localized lookup</h3> 
 <p>A locale is a language and an optional country or dialect identifier (plus also maybe a further variant identifier, like "MAC"). Whenever a template is requested, a desired locale is always specified (explicitly or implicitly), and FreeMarke will try to find a variant of the template that matches that locale. When a template includes or imports another template, internally that will also be requested for a locale, for the locale that the <code class="inline-code">locale</code> setting is set to, and that's usually for the locale of the top-level template.</p> 
 <p>Suppose your template was loaded with locale <code class="inline-code">en_US</code>, which means U.S. English. When you include another template:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#include "footer.ftl"&gt;</pre>
 </div> 
 <p>the engine will in fact look for several templates, in this order:</p> 
 <ul> 
  <li> <code class="inline-code">footer_en_US.ftl</code>, </li> 
  <li> <code class="inline-code">footer_en.ftl</code> </li> 
  <li> <code class="inline-code">footer.ftl</code> </li> 
 </ul> 
 <p>and it will use the first one that exists.</p> 
 <p>Note that if how (and if) FreeMarker searches the localized variations is configurable by the programmers, so we are just describing the default behavior here.<span class="marked-for-programmers"> You can disable localized lookup with the <code class="inline-code">localized_lookup</code> setting (<code class="inline-code">Configuration.setLocalizedLookup(boolean)</code>). Also, you can define your own sequence of deduced template names with the <code class="inline-code">template_lookup_strategy</code> setting (<code class="inline-code">Configuration.setTemplateLookupStrategy(TemplateLookupStrategy)</code>).</span></p> 
 <p>When you use both acquisition (i.e., <code class="inline-code">*</code> step in the path) and localized template lookup, the template with more specific locale in a parent directory takes precedence over template with less specific locale in a child directory. Suppose you use the following include from <code class="inline-code">/foo/bar/template.ftl</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#include "*/footer.ftl"&gt;</pre>
 </div> 
 <p>the engine will look for these templates, in this order:</p> 
 <ul> 
  <li> <code class="inline-code">/foo/bar/footer_en_US.ftl</code> </li> 
  <li> <code class="inline-code">/foo/footer_en_US.ftl</code> </li> 
  <li> <code class="inline-code">/footer_en_US.ftl</code> </li> 
  <li> <code class="inline-code">/foo/bar/footer_en.ftl</code> </li> 
  <li> <code class="inline-code">/foo/footer_en.ftl</code> </li> 
  <li> <code class="inline-code">/footer_en.ftl</code> </li> 
  <li> <code class="inline-code">/foo/bar/footer.ftl</code> </li> 
  <li> <code class="inline-code">/foo/footer.ftl</code> </li> 
  <li> <code class="inline-code">/footer.ftl</code> </li> 
 </ul> 

</div>
</body>
</html>
