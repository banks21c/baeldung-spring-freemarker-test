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
   <a class="paging-arrow previous" href="ref_directive_if.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_include.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_import" itemprop="headline">import</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_98" data-menu-target="autoid_98">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_99" data-menu-target="autoid_99">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.import"></a> 
 <h2 class="content-header header-section2" id="autoid_98">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#import <em class="code-color">path</em> as <em class="code-color">hash</em>&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">path</em></code>: The path of a template. This is an expression that evaluates to a string. (With other words, it doesn't have to be a fixed string, it can also be something like, for example, <code class="inline-code">profile.baseDir + "/menu.ftl"</code>.) </li> 
  <li> <code class="inline-code"><em class="code-color">hash</em></code>: The unquoted name of hash variable by which you can access the namespace. Not an expression. (If you have to import into a dynamically constructed name, you have to use <a href="app_faq.html#faq_assign_to_dynamic_variable_name">this trick</a>.) </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_99">Description</h2> 
 <p>Imports a library. That is, it creates a new empty namespace, and then executes the template given with <code class="inline-code"><em class="code-color">path</em></code> parameter in that namespace so the template populates the namespace with variables (macros, functions, ...etc.). Then it makes the newly created namespace available to the caller with a hash variable. The hash variable will be created as a plain variable in the namespace used by the caller of <code class="inline-code">import</code> (as if you would create it with <code class="inline-code">assign</code> directive), with the name given with the <code class="inline-code"><em class="code-color">hash</em></code> parameter. If the import happens in the namespace of the main template, the hash variable is also created in the global namespace.</p> 
 <p>If you call <code class="inline-code">import</code> with the same <code class="inline-code"><em class="code-color">path</em></code> for multiple times, it will create the namespace and run the template for the very first call of <code class="inline-code">import</code> only. The later calls will just create a hash by which you can access the <em>same</em> namespace.</p> 
 <p>The output printed by the imported template will be ignored (will not be inserted at the place of importing). The template is executed to populate the namespace with variables, and not to write to the output.</p> 
 <p>Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#import "/libs/mylib.ftl" as my&gt;

&lt;@my.copyright date="1999-2002"/&gt;</pre>
 </div> 

  
<div class="code-wrapper">
<pre class="code-block code-output">
<#import "/libs/mylib.ftl" as my>
<@my.copyright date="1999-2002"/>
</pre>
</div>


 <p>The <code class="inline-code"><em class="code-color">path</em></code> parameter can be a relative path like <code class="inline-code">"foo.ftl"</code> and <code class="inline-code">"../foo.ftl"</code>, or an absolute like <code class="inline-code">"/foo.ftl"</code>. Relative paths are relative to the directory of the template that uses the <code class="inline-code">import</code> directive. Absolute paths are relative to a base (often referred as the ''root directory of the templates'') that the programmer defines when he configures FreeMarker.</p> 
 <p>Always use <code class="inline-code">/</code> (slash) to separate path components, never <code class="inline-code">\</code> (backslash). If you are loading templates from your local file system and it uses backslashes (like under. Windows), FreeMarker will convert them automatically.</p> 
 <p>Like with the <code class="inline-code">include</code> directive, <a href="ref_directive_include.html#ref_directive_include_acquisition">acquisition</a> and <a href="ref_directive_include.html#ref_directive_include_localized">localized lookup</a> may be used for resolving the path.</p> 
 <p><span class="marked-for-programmers">Note, that it is possible to automatically do the commonly used imports for all templates, with the "auto imports" setting of <code class="inline-code">Configuration</code>.</span></p> 
 <p>If you are new to namespaces, you should read: <a href="dgui_misc_namespace.html">Template Author's Guide/Miscellaneous/Namespaces</a></p> 

</div>
</body>
</html>
