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
   <a class="paging-arrow previous" href="ref_directive_include.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_local.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_list" itemprop="headline">list, else, items, sep, break, continue</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_102" data-menu-target="autoid_102">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_103" data-menu-target="autoid_103">Description</a>
    <ul>
     <li><a class="page-menu-link" href="#ref_list_simple" data-menu-target="ref_list_simple">Simplest form</a></li>
     <li><a class="page-menu-link" href="#ref_list_else" data-menu-target="ref_list_else">else directive</a></li>
     <li><a class="page-menu-link" href="#ref_list_items" data-menu-target="ref_list_items">items directive</a></li>
     <li><a class="page-menu-link" href="#ref_list_sep" data-menu-target="ref_list_sep">sep directive</a></li>
     <li><a class="page-menu-link" href="#ref_list_break" data-menu-target="ref_list_break">break directive</a></li>
     <li><a class="page-menu-link" href="#ref_list_continue" data-menu-target="ref_list_continue">continue directive</a></li>
     <li><a class="page-menu-link" href="#ref_list_accessing_state" data-menu-target="ref_list_accessing_state">Accessing iteration state</a></li>
     <li><a class="page-menu-link" href="#ref_list_skipping" data-menu-target="ref_list_skipping">Skipping items conditionally</a></li>
     <li><a class="page-menu-link" href="#ref_list_nesting" data-menu-target="ref_list_nesting">Nesting loops into each other</a></li>
     <li><a class="page-menu-link" href="#ref_list_missing_element" data-menu-target="ref_list_missing_element">Treatment of missing (null) elements</a></li>
     <li><a class="page-menu-link" href="#ref_list_java_notes" data-menu-target="ref_list_java_notes">Notes for Java programmers</a></li>
    </ul></li>
  </ul> 
 </div>
 <a name="ref.directive.list"></a> 
 <h2 class="content-header header-section2" id="autoid_102">Synopsis</h2> 
 <p>The simplest form for listing a sequence (or collection) is:</p> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#list <em class="code-color">sequence</em> as <em class="code-color">item</em>&gt;
    <em class="code-color">Part repeated for each item</em>
&lt;/#list&gt;</code></pre> 
 <p>and to list the key-value pairs of a hash (since 2.3.25):</p> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#list <em class="code-color">hash</em> as <em class="code-color">key</em>, <em class="code-color">value</em>&gt;
    <em class="code-color">Part repeated for each key-value pair</em>
&lt;/#list&gt;</code></pre> 
 <p>But these are just special cases of the generic forms, which are shown below. Note that for simplicity we only show the generic forms for sequence listing; simply replace "<code class="inline-code">as <em class="code-color">item</em></code>" with "<code class="inline-code">as <em class="code-color">key</em>, <em class="code-color">value</em></code>" to get the generic form for hash listing.</p> 
 <p>Generic form 1:</p> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#list <em class="code-color">sequence</em> as <em class="code-color">item</em>&gt;
    <em class="code-color">Part repeated for each item</em>
&lt;#else&gt;
    <em class="code-color">Part executed when there are 0 items</em>
&lt;/#list&gt;</code></pre> 
 <p>Where:</p> 
 <ul> 
  <li> The <code class="inline-code">else</code> part is optional, and is only supported since FreeMarker 2.3.23. </li> 
  <li> <code class="inline-code"><em class="code-color">sequence</em></code>: Expressions evaluates to a sequence or collection of the items we want to iterate through </li> 
  <li> <code class="inline-code"><em class="code-color">item</em></code>: Name of the <a href="dgui_misc_var.html">loop variable</a> (not an expression) </li> 
  <li> The various "parts" between the tags can contain arbitrary FTL (including nested <code class="inline-code">list</code>-s) </li> 
 </ul> 
 <p>Generic form 2 (since FreeMarker 2.3.23):</p> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#list <em class="code-color">sequence</em>&gt;
    <em class="code-color">Part executed once if we have more than 0 items</em>
    &lt;#items as <em class="code-color">item</em>&gt;
    <em class="code-color">    Part repeated for each item</em>
    &lt;/#items&gt;
    <em class="code-color">Part executed once if we have more than 0 items</em>
&lt;#else&gt;
    <em class="code-color">Part executed when there are 0 items</em>
&lt;/#list&gt;</code></pre> 
 <p>Where: see the "Where" section of Form 1 above (and thus the <code class="inline-code">else</code> part is optional here too).</p> 
 <h2 class="content-header header-section2" id="autoid_103">Description</h2> 
 <h3 class="content-header header-section3" id="ref_list_simple">Simplest form</h3> 
 <p>Assuming <code class="inline-code">users</code> contains the <code class="inline-code">['Joe', 'Kate', 'Fred']</code> sequence:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list users as user&gt;
  &lt;p&gt;&#36;{user}
&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#assign users = ['Joe', 'Kate', 'Fred']/>  
<#list users as user>
  <p>${user}
</#list>
  </pre>
 </div> 
 <p>The <code class="inline-code">list</code> directive executes the code between the <code class="inline-code">list</code> start-tag and <code class="inline-code">list</code> end-tag (the body of <code class="inline-code">list</code> from now on) for each value in the sequence (or collection) specified as its first parameter. For each such iteration the loop variable (<code class="inline-code">user</code> in this example) will store the value of the current item.</p> 
 <p>The loop variable (<code class="inline-code">user</code>) only exists inside the <code class="inline-code">list</code> body. Also, macros/functions called from within the loop won't see it (as if it were a local variable).</p> 
 <p>Listing hashes is very similar, but you need to provide two variable names after the <code class="inline-code">as</code>; one for the hash key, and another for the associated value. Assuming <code class="inline-code">products</code> is <code class="inline-code">{ "apple": 5, "banana": 10, "kiwi": 15 }</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list products as name, price&gt;
  &lt;p&gt;&#36;{name}: &#36;{price}
&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
<pre class="code-block code-output">
<#assign products = { "apple": 5, "banana": 10, "kiwi": 15 }/>
<#list products as name, price>
  <p>${name}: ${price}
</#list>
</pre>
</div> 
 <p>Note that not all hash variables can be listed, because some of them isn't able to enumerate its keys. It's practically safe to assume though that hashes that stand for Java <code class="inline-code">Map</code> objects can be listed.</p> 
 <h3 class="content-header header-section3" id="ref_list_else">else directive</h3> 
 <a name="ref.directive.list.else"></a> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p><code class="inline-code">else</code> inside <code class="inline-code">list</code> is only supported since FreeMarker 2.3.23</p> 
 </div> 
 <p>The <code class="inline-code">else</code> directive is used if when there are 0 items, you have to print something special instead of just printing nothing:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list users as user&gt;
  &lt;p&gt;&#36;{user}
&lt;#else&gt;
  &lt;p&gt;No users
&lt;/#list&gt;</pre>
 </div> 
 <p>This outputs the same as the earlier example, except when <code class="inline-code">users</code> contains 0 items:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#assign users = []/>
<#list users as user>
  <p>${user}
<#else>
  <p>No users
</#list>
  
  </pre>
 </div> 
 <p>Note that the loop variable (<code class="inline-code">user</code>) doesn't exist between the <code class="inline-code">else</code> tag and the <code class="inline-code">list</code> end-tag, since that part is not part of the loop.</p> 
 <p><code class="inline-code">else</code> must be literally (means, in the source code) inside the body of the <code class="inline-code">list</code> directive. That is, you can't moved it out into a macro or included template.</p> 
 <h3 class="content-header header-section3" id="ref_list_items">items directive</h3> 
 <a name="ref.directive.items"></a> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p><code class="inline-code">items</code> exists since FreeMarker 2.3.23</p> 
 </div> 
 <p>The <code class="inline-code">items</code> directive is used if you have to print (or do) something before the first list item, and after the last list item, as far as there's at least 1 item. A typical example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list users&gt;
  &lt;ul&gt;
    &lt;#items as user&gt;
      &lt;li&gt;&#36;{user}&lt;/li&gt;
    &lt;/#items&gt;
  &lt;/ul&gt;
&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#assign users = ['Joe', 'Kate', 'Fred']/>  
<#list users>
  <ul>
    <#items as user>
      <li>${user}</li>
    </#items>
  </ul>
</#list>
  </pre>
 </div> 
 <p>If there are 0 items, the above won't print anything, thus you don't end up with an empty <code class="inline-code">&lt;ul&gt;&lt;/ul&gt;</code>.</p> 
 <p>That is, when the <code class="inline-code">list</code> directive has no <code class="inline-code">as <em class="code-color">item</em></code> parameter, the body of its is executed exactly once if there's at least one item, or not at all otherwise. It's the body of the mandatory nested <code class="inline-code">items</code> directive that will be run for each item, and hence it's also the <code class="inline-code">items</code> directive that defines the loop variable with <code class="inline-code">as <em class="code-color">item</em></code>, not <code class="inline-code">list</code>.</p> 
 <p>A <code class="inline-code">list</code> directive with <code class="inline-code">items</code> also can have an <code class="inline-code">else</code> directive:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list users&gt;
  &lt;ul&gt;
    &lt;#items as user&gt;
      &lt;li&gt;&#36;{user}&lt;/li&gt;
    &lt;/#items&gt;
  &lt;/ul&gt;
&lt;#else&gt;
  &lt;p&gt;No users
&lt;/#list&gt;</pre>
 </div>
 
  <div class="code-wrapper">
  <pre class="code-block code-output">
<#list users>
  <ul>
    <#items as user>
      <li>${user}</li>
    </#items>
  </ul>
<#else>
  <p>No users
</#list>
  </pre>
 </div> 
 <p>Some further details:</p> 
 <ul> 
  <li> <p>The parser will check that a <code class="inline-code">list</code> without <code class="inline-code">as <em class="code-color">item</em></code> parameter always has a nested <code class="inline-code">items</code> directive, and that an <code class="inline-code">items</code> directive always has an enclosing <code class="inline-code">list</code> which has no <code class="inline-code">as <em class="code-color">item</em></code> parameter. This is checked when the template is parsed, not when the template is executed. Thus, these rules apply on the FTL source code itself, so you can't move <code class="inline-code">items</code> out into a macro or included template.</p> </li> 
  <li> <p>A <code class="inline-code">list</code> can have multiple <code class="inline-code">items</code> directives, but only one of them will be allowed to run (as far as you don't leave and re-enter the enclosing <code class="inline-code">list</code> directive); and further attempts to call <code class="inline-code">items</code> will cause error. So multiple <code class="inline-code">items</code> can be utilized on different <code class="inline-code">if</code>-<code class="inline-code">else</code> branches for example, but not for iterating twice.</p> </li> 
  <li> <p><code class="inline-code">items</code> directive can't have its own nested <code class="inline-code">else</code> directive, only the enclosing <code class="inline-code">list</code> can have</p> </li> 
  <li> <p>The loop variable (<code class="inline-code">user</code>) only exists inside the body of the <code class="inline-code">items</code> directive.</p> </li> 
 </ul> 
 <h3 class="content-header header-section3" id="ref_list_sep">sep directive</h3> 
 <a name="ref.directive.sep"></a> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p><code class="inline-code">sep</code> exists since FreeMarker 2.3.23</p> 
 </div> 
 <p><code class="inline-code">sep</code> is used when you have to display something between each item (but not before the first item or after the last item). For example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list users as user&gt;&#36;{user}<strong>&lt;#sep&gt;, </strong>&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#list users as user>${user}<#sep>, </#list>
  </pre>
 </div> 
 <p>Above, <code class="inline-code">&lt;#sep&gt;, &lt;/#list&gt;</code> is a shorthand for <code class="inline-code">&lt;#sep&gt;, &lt;/#sep&gt;&lt;/#list&gt;</code>; the <code class="inline-code">sep</code> end-tag can be omitted if you would put it where the enclosing directive is closed anyway. In the next example, you couldn't use such abbreviation (HTML tags close nothing, as they are just raw text to output for FreeMarker):</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list users as user&gt;
  &lt;div&gt;
    &#36;{user}<strong>&lt;#sep&gt;, &lt;/#sep&gt;</strong>
  &lt;/div&gt;
&lt;/#list&gt;</pre>
 </div>
 
  <div class="code-wrapper">
  <pre class="code-block code-output">
<#list users as user>
  <div>
    ${user}<#sep>, </#sep>
  </div>
</#list>  
  </pre>
 </div> 
 <p><code class="inline-code">sep</code> is just a shorthand for <code class="inline-code">&lt;#if <em class="code-color">item</em>?has_next&gt;...&lt;/#if&gt;</code>. Thus, it can be used anywhere where there's a <code class="inline-code">list</code> or <code class="inline-code">items</code> loop variable available, it can occur for multiple times, and it can have arbitrary nested content.</p> 
 <p>The parser ensures that <code class="inline-code">sep</code> is only used on a place where there's a visible loop variable. This happens earlier than the actual execution of the template. Thus, you can't move <code class="inline-code">sep</code> from inside the associated <code class="inline-code">list</code> or <code class="inline-code">items</code> directive into a macro or included template (the parser can't know where those will be called from).</p> 
 <h3 class="content-header header-section3" id="ref_list_break">break directive</h3> 
 <a name="ref.directive.list.break"></a> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p><code class="inline-code">break</code> is deprecated for most use cases, as it doesn't work well with <code class="inline-code">&lt;#sep&gt;</code> and <code class="inline-code"><em class="code-color">item</em>?has_next</code>. Instead, use <a href="ref_builtins_sequence.html#ref_builtin_take_while"><code><em>sequence</em>?take_while(<em>predicate</em>)</code></a> to cut the sequence before you list it. See also examples <a href="#ref_list_skipping">here.</a></p> 
 </div> 
 <p>You can exit the iteration at any point with the <code class="inline-code">break</code> directive. For example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list 1..10 as x&gt;
  &#36;{x}
  &lt;#if x == 3&gt;
    <strong>&lt;#break&gt;</strong>
  &lt;/#if&gt;
&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#list 1..10 as x>
  ${x}
  <#if x == 3>
    <#break>
  </#if>
</#list>
  </pre>
 </div> 
 <p>The <code class="inline-code">break</code> directives can be placed anywhere inside <code class="inline-code">list</code> as far as it has <code class="inline-code">as <em class="code-color">item</em></code> parameter, otherwise it can be placed anywhere inside the <code class="inline-code">items</code> directive. However, it's strongly recommended to place it either before or after all the other things that you do inside the iteration. Otherwise it's easy to end up with unclosed elements in the output, or otherwise make the template harder to understand. Especially, avoid breaking out from the nested content of custom directives (like <code class="inline-code">&lt;#list ...&gt;...&lt;@foo&gt;...&lt;#break&gt;...&lt;/@foo&gt;...&lt;/#list&gt;</code>), as the author of the directive may not expect that the closing tag (<code class="inline-code">&lt;/@foo&gt;</code>) is never executed.</p> 
 <p>If the <code class="inline-code">break</code> is inside <code class="inline-code">items</code>, it will only exit from <code class="inline-code">items</code>, not from <code class="inline-code">list</code>. In general, <code class="inline-code">break</code> will only exit from the directive whose body is called for each item, and can only be placed inside such directive. So for example can't use <code class="inline-code">break</code> inside <code class="inline-code">list</code>'s <code class="inline-code">else</code> section, unless there's the <code class="inline-code">list</code> is nested into another <code class="inline-code">break</code>-able directive.</p> 
 <p>Using <code class="inline-code">break</code> together with <code class="inline-code">sep</code> or <code class="inline-code">?has_next</code> is generally a bad idea, as these can't know if you will skip the rest of items with a <code class="inline-code">break</code>. To solve such situations see <a href="#ref_list_skipping">these examples</a>.</p> 
 <p>Just like <code class="inline-code">else</code> and <code class="inline-code">items</code>, <code class="inline-code">break</code> must be literally inside body of the directive to break out from, and can't be moved out into a macro or included template.</p> 
 <h3 class="content-header header-section3" id="ref_list_continue">continue directive</h3> 
 <a name="ref.directive.list.continue"></a> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p><code class="inline-code">continue</code> is deprecated for most use cases, as it doesn't work well with <code class="inline-code">&lt;#sep&gt;</code>, <code class="inline-code"><em class="code-color">item</em>?has_next</code>, <code class="inline-code"><em class="code-color">item</em>?count</code>, <code class="inline-code"><em class="code-color">item</em>?index</code>, <code class="inline-code"><em class="code-color">item</em>?item_parity</code>, etc. Instead, use <a href="ref_builtins_sequence.html#ref_builtin_filter"><code><em>sequence</em>?filter(<em>predicate</em>)</code></a> to remove unwanted elements. See also examples <a href="#ref_list_skipping">here.</a></p> 
 </div> 
 <div class="callout note"> 
  <strong class="callout-label">Note:</strong> 
  <p>The <code class="inline-code">continue</code> directive exists since FreeMarker 2.3.27.</p> 
 </div> 
 <p>You can skip the rest of the iteration body (the section until the <code class="inline-code">&lt;/#list&gt;</code> or <code class="inline-code">&lt;/#items&gt;</code> tag) with the <code class="inline-code">continue</code> directive, then FreeMarker will continue with the next item. For example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list 1..5 as x&gt;
  &lt;#if x == 3&gt;
    &lt;#continue&gt;
  &lt;/#if&gt;
  &#36;{x}
&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#list 1..5 as x>
  <#if x == 3>
    <#continue>
  </#if>
  ${x}
</#list>
  </pre>
 </div> 
 <p>The <code class="inline-code">continue</code> directives can be placed anywhere inside <code class="inline-code">list</code> as far as it has <code class="inline-code">as <em class="code-color">item</em></code> parameter, otherwise it can be placed anywhere inside the <code class="inline-code">items</code> directive. However, it's strongly recommended to place it before all the other things you do inside the iteration. Otherwise it's easy to end up with unclosed elements in the output, or otherwise make the template harder to understand. Especially, avoid breaking out from the nested content of custom directives (like <code class="inline-code">&lt;#list ...&gt;...&lt;@foo&gt;...&lt;#continue&gt;...&lt;/@foo&gt;...&lt;/#list&gt;</code>), as the author of the directive may not expect that the closing tag (<code class="inline-code">&lt;/@foo&gt;</code>) is never executed.</p> 
 <p>When you call <code class="inline-code">continue</code>, the <code class="inline-code">sep</code> directive will not be executed for that iteration. Using <code class="inline-code">continue</code> together with <code class="inline-code">sep</code> is generally a bad idea anyway, also <code class="inline-code">?has_next</code>, <code class="inline-code">?count</code>, <code class="inline-code">?index</code>, <code class="inline-code">?item_parity</code>, etc. will not work as you certainly wanted if you completely skip items. To solve such situations see <a href="#ref_list_skipping">these examples</a>.</p> 
 <p>Just like <code class="inline-code">break</code>, <code class="inline-code">continue</code> must be literally inside body of the directive whose iteration need to be "continued", and can't be moved out into a macro or included template.</p> 
 <h3 class="content-header header-section3" id="ref_list_accessing_state">Accessing iteration state</h3> 
 <p>Starting from 2.3.23, <a href="ref_builtins_loop_var.html">loop variable built-ins</a> is the preferred way of accessing current state of the iteration. For example, here we use the <code class="inline-code">counter</code> and <code class="inline-code">item_parity</code> loop variable built-ins (see all of them <a href="ref_builtins_loop_var.html">in the Reference</a>):</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list users&gt;
  &lt;table&gt;
    &lt;#items as user&gt;
      &lt;tr class="&#36;{user<strong>?item_parity</strong>}Row"&gt;
        &lt;td&gt;&#36;{user<strong>?counter</strong>}
        &lt;td&gt;&#36;{user}
    &lt;/#items&gt;
  &lt;/table&gt;
&lt;/#list&gt;</pre>
 </div>
  <div class="code-wrapper">
  <pre class="code-block code-output">
<xmp>  
<#list users>
  <table>
    <#items as user>
      <tr class="${user?item_parity}Row">
        <td>${user?counter}
        <td>${user}
    </#items>
  </table>
</#list>
</xmp>  
  </pre>
 </div>
 <div class="code-wrapper">
  <pre class="code-block code-output">  &lt;table&gt;
      &lt;tr class="<strong>odd</strong>Row"&gt;
        &lt;td&gt;<strong>1</strong>
        &lt;td&gt;Joe
      &lt;tr class="<strong>even</strong>Row"&gt;
        &lt;td&gt;<strong>2</strong>
        &lt;td&gt;Kate
      &lt;tr class="<strong>odd</strong>Row"&gt;
        &lt;td&gt;<strong>3</strong>
        &lt;td&gt;Fred
  &lt;/table&gt;</pre>
 </div> 
 <p>In 2.3.22 and earlier, there were two extra loop variables to retrieve the iteration state instead (and they still exist for backward compatibility):</p> 
 <ul> 
  <li> <p><code class="inline-code"><em class="code-color">item</em>_index</code> (<em>deprecated</em> by <code class="inline-code"><em class="code-color">item</em>?index</code>): The index (0-based number) of the current item in the loop.</p> </li> 
  <li> <p><code class="inline-code"><em class="code-color">item</em>_has_next</code> (<em>deprecated</em> by <code class="inline-code"><em class="code-color">item</em>?has_next</code>): Boolean value that tells if the current item is the last in the sequence or not.</p> </li> 
 </ul> 
 <p>so in the above example, you could replace <code class="inline-code">&#36;{user?counter}</code> with <code class="inline-code">&#36;{user_index + 1}</code>.</p> 
 <h3 class="content-header header-section3" id="ref_list_skipping">Skipping items conditionally</h3> 
 <p>If you need to skip certain element in a list, it's generally a bad idea to use <a href="ref_directive_if.html#ref.directive.if"><code>if</code> directive</a> for that, because then <code class="inline-code">&lt;#sep&gt;</code>, <code class="inline-code"><em class="code-color">item</em>?has_next</code>, <code class="inline-code"><em class="code-color">item</em>?count</code>, <code class="inline-code"><em class="code-color">item</em>?index</code>, <code class="inline-code"><em class="code-color">item</em>?item_parity</code>, etc., will not be usable, as FreeMarker doesn't know what items were and will be actually displayed. Instead, you should try to remove the unwanted items from the sequence that you will list, and then list it (since 2.3.29). Here are some typical examples with and without <code class="inline-code">if</code>.</p> 
 <h4 class="content-header header-simplesect" id="autoid_104">Filtering</h4> 
 <p>In this example, you want to show the recommended products from <code class="inline-code">products</code>. Here's the wrong solution with <code class="inline-code">if</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#-- WRONG solution! The row parity classes will be possibly messed up: --&gt;
&lt;#list products as product&gt;
   &lt;#<strong>if product.recommended</strong>&gt;
     &lt;div class="&#36;{product<strong>?item_parity</strong>}Row"&gt;&#36;{product.name}&lt;/div&gt;
   &lt;/#if&gt;
&lt;/#list&gt;</pre>
 </div> 
 <p>Here's the good solution that uses the <a href="ref_builtins_sequence.html#ref_builtin_filter"><code>filter</code> built-in</a>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#-- Good solution: --&gt;
&lt;#list products<strong>?filter(p -&gt; p.recommended)</strong> as product&gt;
  &lt;div class="&#36;{product?item_parity}Row"&gt;&#36;{product.name}&lt;/div&gt;
&lt;/#list&gt;</pre>
 </div> 
 <h4 class="content-header header-simplesect" id="autoid_105">Stop listing when a certain element is found</h4> 
 <p>Let's say you have a list of lines in <code class="inline-code">lines</code>, and you need to stop at the first empty line (if there's any). Furthermore you need to <code class="inline-code">&lt;br&gt;</code> between the elements. Here's the wrong solution with <code class="inline-code">if</code> and <code class="inline-code">break</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#-- WRONG solution! &lt;br&gt; might be added after the last printed line: --&gt;
&lt;#list lines as line&gt;
   &lt;#if line == ''&gt;
     &lt;#break&gt;
   &lt;/#if&gt;
   &#36;{line}&lt;#sep&gt;&lt;br&gt;
&lt;/#list&gt;</pre>
 </div> 
 <p>Here's the good solution that uses the <a href="ref_builtins_sequence.html#ref_builtin_take_while"><code>take_while</code> built-in</a> (note that the condition is inverted compared to the <code class="inline-code">if</code>+<code class="inline-code">break</code> solution):</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#-- Good solution: --&gt;
&lt;#list lines?take_while(line -&gt; line != '') as line&gt;
   &#36;{line}&lt;#sep&gt;&lt;br&gt;
&lt;/#list&gt;</pre>
 </div> 
 <h3 class="content-header header-section3" id="ref_list_nesting">Nesting loops into each other</h3> 
 <p>Naturally, <code class="inline-code">list</code> or <code class="inline-code">items</code> can contain further <code class="inline-code">list</code>-s:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list 1..2 as i&gt;
  &lt;#list 1..3 as j&gt;
    i = &#36;{i}, j = &#36;{j}
  &lt;/#list&gt;
&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
<#list 1..2 as i>
  <#list 1..3 as j>
    i = ${i}, j = ${j}
  </#list>
</#list>
    </pre>
 </div> 
 <p>It's also allowed to use clashing loop variable names like:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list 1..2 as i&gt;
  Outer: &#36;{i}
  &lt;#list 10..12 as i&gt;
    Inner: &#36;{i}
  &lt;/#list&gt;
  Outer again: &#36;{i}
&lt;/#list&gt;</pre>
 </div> 
 <div class="code-wrapper">
  <pre class="code-block code-output">
  
<#list 1..2 as i>
  Outer: ${i}
  <#list 10..12 as i>
    Inner: ${i}
  </#list>
  Outer again: ${i}
</#list>
  
  </pre>
 </div> 
 <h3 class="content-header header-section3" id="ref_list_missing_element">Treatment of missing (null) elements</h3> 
 <p>As you know by now, the <code class="inline-code">list</code> directive will repeat its nested content for each element of the listed value. However, it's technically possible that you have holes (missing values, Java <code class="inline-code">null</code>-s) in the list of elements. The nested content will executed for these "holes" as well, but then the loop variable (the variable whose name you specify after the <code class="inline-code">as</code> keyword) will be missing. When FreeMarker finds that there's no variable with the given name in the loop variable scope, it will just fall back to a higher scopes to find it. However, this fallback behavior can be problematic in this case. Consider:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list xs as x&gt;
  &#36;{x!'Missing'}
&lt;/#list&gt;</pre>
 </div>
 <#-- 
     <div class="code-wrapper">
  <pre class="code-block code-output">

<#attempt>    
	<#list xs as x>
	  ${x!'Missing'}
	</#list>
<#recover>
xs doesn't exist
</#attempt>
  
  </pre>
 </div>
  -->
  
 <p>Here, the intent of the author is to print "Missing" for the missing elements (hopes) of <code class="inline-code">xs</code>. But if accidentally there's an <code class="inline-code">x</code> variable in a higher scope, like in the data-model, then <code class="inline-code">x</code> will evaluate to that in case the currently listed element is missing, and so it won't default to "Missing". To solve that, the programmers should set the <code class="inline-code">fallback_on_null_loop_variable</code> configuration setting to <code class="inline-code">false</code>. (Unfortunately, the default must be <code class="inline-code">true</code> for backward compatibility.) In that case no fallback will occur if a loop variable is missing.</p> 
 <h3 class="content-header header-section3" id="ref_list_java_notes">Notes for Java programmers</h3> 
 <p><span class="marked-for-programmers">If classic compatible mode <code class="inline-code">list</code> accepts a scalar too and treats it as a single-element sequence.</span></p> 
 <p><span class="marked-for-programmers">If you pass a collection that wraps an <code class="inline-code">java.util.Iterator</code> to the <code class="inline-code">list</code>, you can iterate over its elements only once, since <code class="inline-code">Iterator</code>s are by their nature one-off objects. When you try to list a such collection variable for the second time, an error will abort template processing.</span></p> 

</div>
</body>
</html>
