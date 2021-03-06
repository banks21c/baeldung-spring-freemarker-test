<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_type_independent.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_directives.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_expert" itemprop="headline">Seldom used and expert built-ins</h1>
</div></div><div class="page-menu">
<div class="page-menu-title">Page Contents</div>
<ul><li><a class="page-menu-link" href="#ref_builtin_absolute_template_name" data-menu-target="ref_builtin_absolute_template_name">absolute_template_name</a></li><li><a class="page-menu-link" href="#ref_buitin_api_and_has_api" data-menu-target="ref_buitin_api_and_has_api">api, has_api</a></li><li><a class="page-menu-link" href="#ref_builtin_numType" data-menu-target="ref_builtin_numType">byte, double, float, int, long, short</a></li><li><a class="page-menu-link" href="#ref_builtin_eval" data-menu-target="ref_builtin_eval">eval</a></li><li><a class="page-menu-link" href="#ref_builtin_has_content" data-menu-target="ref_builtin_has_content">has_content</a></li><li><a class="page-menu-link" href="#ref_builtin_interpret" data-menu-target="ref_builtin_interpret">interpret</a></li><li><a class="page-menu-link" href="#ref_builtin_isType" data-menu-target="ref_builtin_isType">is_...</a></li><li><a class="page-menu-link" href="#ref_builtin_markup_string" data-menu-target="ref_builtin_markup_string">markup_string</a></li><li><a class="page-menu-link" href="#ref_builtin_namespace" data-menu-target="ref_builtin_namespace">namespace</a></li><li><a class="page-menu-link" href="#ref_builtin_new" data-menu-target="ref_builtin_new">new</a></li><li><a class="page-menu-link" href="#ref_builtin_numToDate" data-menu-target="ref_builtin_numToDate">number_to_date, number_to_time, number_to_datetime</a></li><li><a class="page-menu-link" href="#ref_builtin_sequence" data-menu-target="ref_builtin_sequence">sequence</a></li></ul> </div><p>These are the built-ins that normally you should not use, but in
        exceptional situations (debugging, advanced macros) they can be
        useful. If you need to use these in your normal page templates, you
        may revisit the data-model so you don't need to use these.</p>
          



<h2 class="content-header header-section2" id="ref_builtin_absolute_template_name">absolute_template_name</h2>


          

          <p>Converts a template name to an absolute name, which can be
          safely passed to <code class="inline-code">&lt;#include
          <em class="code-color">name</em>&gt;</code> or
          <code class="inline-code">&lt;#import <em class="code-color">name</em> as
          <em class="code-color">ns</em>&gt;</code> or
          <code class="inline-code">.get_optional_template(<em class="code-color">name</em>)</code>
          and such in <em>another</em> template, as it won't be
          misinterpreted to be relative to the directory of the template that
          contains the <code class="inline-code">include</code>, <code class="inline-code">import</code>,
          etc. For example, if you are in template
          <code class="inline-code">"dir/here.ftl"</code>, then
          <code class="inline-code">"target.ftl"</code> is converted to
          <code class="inline-code">"/dir/target.ftl"</code> (note the initial
          <code class="inline-code">/</code>). If now you pass this value to a template in
          <code class="inline-code">"other-dir/there.ftl"</code>, where it's passed to the
          <code class="inline-code">include</code> directive, then it won't be
          misinterpreted as <code class="inline-code">"other-dir/target.ftl"</code>, like
          <code class="inline-code">"target.ftl"</code> would have been.</p>

          <p>Optionally, you can specify a root based name (a name that's
          either relative to the template root directory, or is absolute) that
          will be used instead of the name of the current template, like
          <code class="inline-code"><em class="code-color">pathToConver</em>?absolute_template_name(<em class="code-color">otherTemplateName</em>)</code>.</p>

          <p>Example of an application (also uses <a href="ref_specvar.html#ref_specvar_caller_template_name"><code>.caller_template_name</code></a>
          and <a href="ref_specvar.html#ref_specvar_get_optional_template"><code>.get_optional_template</code></a>):</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#--
  &lt;@smileyInclude name /&gt; behaves like &lt;#include name&gt;, but prints a "(:" before the
  template, or prints "):" instead if the template is missing.

  Note that just like with #include, if name is relative, it's resolved based on the
  directory of the caller template, not of the template that defines this macro. As
  .get_optional_template resolves relative names based on the current template, we
  had to convert the name to an absolute name based on the caller template before
  passing it to it.
--&gt;
&lt;#macro smileyInclude name&gt;
  &lt;#local t = .get_optional_template(
      name<strong>?absolute_template_name</strong>(.caller_template_name))&gt;
  &lt;#if t.exists&gt;
    (:
    &lt;@t.include /&gt;
  &lt;#else&gt;
    ):
  &lt;/#if&gt;
&lt;/#macro&gt;</pre></div>
        
          
<div class="code-wrapper"><pre class="code-block code-output">

<#macro smileyInclude name>
  <#local t = .get_optional_template(
      name?absolute_template_name(.caller_template_name))>
  <#if t.exists>
    (:
    <@t.include />
  <#else>
    ):
  </#if>
</#macro>

</pre></div>



<h2 class="content-header header-section2" id="ref_buitin_api_and_has_api">api, has_api</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>These built-ins exists since FreeMarker 2.3.22</p>
            </div>


          <p><code class="inline-code"><em class="code-color">value</em>?api</code>
          provides access to the API (usually, the Java API) of
          <code class="inline-code"><em class="code-color">value</em></code>, like
          <code class="inline-code"><em class="code-color">value</em>?api.<em class="code-color">someJavaMethod()</em></code>
          or
          <code class="inline-code"><em class="code-color">value</em>?api.<em class="code-color">someBeanProperty</em></code>,
          if the value itself supports exposing its API. This meant to be used
          rarely, when you need to call a Java method of an object, but the
          by-design simplistic view of the value that FreeMarker exposes to
          the templates hides that, and there's no equivalent built-in either.
          For example, when you put a <code class="inline-code">Map</code> into the
          data-model (and you are using the default object wrapper),
          <code class="inline-code">myMap.myMethod()</code> in a template basically
          translates to <code class="inline-code">((Method)
          myMap.get("myMethod")).invoke(...)</code> in Java, thus you can't
          call <code class="inline-code">myMethod</code>. If, however, you write
          <code class="inline-code">myMap?api.myMethod()</code> instead, that means
          <code class="inline-code">myMap.myMethod()</code> in Java. Similarly,
          <code class="inline-code">myMap?api.myProperty</code> translates to
          <code class="inline-code">myMap.getMyProperty()</code> in Java, instead of to
          <code class="inline-code">myMap.get("myProperty")</code>.</p>

          <p><em>You should avoid using <code class="inline-code">api</code>, and
          rely on the capabilities of the FTL types and the related built-ins
          as far as possible.</em> For example, don't use
          <code class="inline-code">users?api.size()</code>, but
          <code class="inline-code">users?size</code>. The variation that uses
          <code class="inline-code">?api</code> is more verbose, slower, more easily breaks
          when FreeMarker configuration settings are changed, and most
          importantly, more prone to break as the technical details of the
          data-model change. For example, if <code class="inline-code">users</code> is
          changed from a <code class="inline-code">List</code> to an array,
          <code class="inline-code">users?size</code> will keep working, while
          <code class="inline-code">users?api.size()</code> will break.</p>

          <p>Avoid calling methods that <em>modify</em> an
          object (especially <code class="inline-code">Map</code>-s and
          <code class="inline-code">Collection</code>-s) or that aren't thread safe from
          other reasons. Templates usually aren't expected to modify the
          objects exposed to them, just to display them. Thus the application
          may passes some objects to multiple (possibly concurrent) template
          processings.</p>

          <p>The <code class="inline-code">api</code> built-in is not everywhere
          available, some requirements has to be met:</p>

          <ul>
            <li>
              <p>The <code class="inline-code">api_builtin_enabled</code> configuration
              setting must be set to <code class="inline-code">true</code>. Its default is
              <code class="inline-code">false</code> (at least as of 2.3.22) for not
              lowering the security of existing applications.</p>
            </li>

            <li>
              <p>The value itself has to support it. We are talking about
              the value as the template sees it, which is created from the
              original object (that's coming from the data-model or from a
              Java method return value) value via <a href="pgui_datamodel_objectWrapper.html">object wrapping</a>.
              Hence, this depends on the <code class="inline-code">object_wrapper</code>
              FreeMarker configuration setting, and on the class of the
              wrapped (the original) object:</p>

              <ul>
                <li>
                  <p>When the object wrapper is a
                  <code class="inline-code">DefaultObjectWrapper</code> with its
                  <code class="inline-code">incompatibleImprovements</code> set to 2.3.22 or
                  higher (<a href="pgui_datamodel_objectWrapper.html#topic.defaultObjectWrapperIcI">see
                  how to set it here</a>), FTL values made from
                  <code class="inline-code">Map</code>-s and <code class="inline-code">List</code>-s
                  support <code class="inline-code">?api</code>. (Actually, what matters is
                  that its <code class="inline-code">useAdaptersForContainer</code> property
                  is set to <code class="inline-code">true</code>, but that's the default
                  with said <code class="inline-code">incompatibleImprovements</code>.)
                  Other <code class="inline-code">java.util.Collections</code> (such as
                  <code class="inline-code">Set</code>-s) only support
                  <code class="inline-code">?api</code> if
                  <code class="inline-code">DefaultObjectWrapper</code>'s
                  <code class="inline-code">forceLegacyNonListCollections</code> property is
                  set to <code class="inline-code">false</code> (the default is
                  <code class="inline-code">true</code> for better out-of-the-box backward
                  compatibility).</p>
                </li>

                <li>
                  <p>When wrapped with pure
                  <code class="inline-code">BeansWrapper</code>, all values support
                  <code class="inline-code">?api</code>.</p>
                </li>

                <li>
                  <p>Custom <code class="inline-code">TemplateModel</code>-s can support
                  <code class="inline-code">?api</code> by implementing the
                  <code class="inline-code">freemarker.template.TemplateModelWithAPISupport</code>
                  interface.</p>
                </li>
              </ul>
            </li>
          </ul>

          <p>Using <code class="inline-code">?api</code> when it's not allowed in the
          configuration or when the value doesn't support it will abort
          template processing with error.</p>

          <p>Whether a value supports <code class="inline-code">?api</code> can be
          checked like
          <code class="inline-code"><em class="code-color">value</em>?has_api</code>, which
          returns a boolean value. Note that the result of
          <code class="inline-code">?has_api</code> isn't influenced by the
          <code class="inline-code">api_builtin_enabled</code> setting.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_numType">byte, double, float, int, long, short</h2>


          

          

          

          

          

          

          

          

          

          

          <p>Returns a <code class="inline-code">SimpleNumber</code> which contains the
          same value as the original variable, but uses
          <code class="inline-code">java.lang.<em class="code-color">Type</em></code> for the
          internal representation of the value. This is useful if a method is
          overloaded, or if a <code class="inline-code">TemplateModel</code> unwrapper has
          problem with automatically choosing the suitable
          <code class="inline-code">java.lang.*</code> type. Note that since version 2.3.9
          the unwrapper has been improved substantially, so you will hardly
          ever need to use these built-ins to convert between numerical types,
          except for resolving ambiguity in overloaded method
          invocation.</p>

          <p>The <code class="inline-code">long</code> built-in can also be used with
          date, time and date-time values to get the value as
          <code class="inline-code">java.util.Date.getTime()</code> would return. This is
          useful if you have to call a Java methods that expect a timestamp as
          a <code class="inline-code">long</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_eval">eval</h2>


          

          

          <p>This built-in evaluates a string as an FTL
          <em>expression</em>. For example
          <code class="inline-code">"1+2"?eval</code> returns the number 3. (To render a
          template that's stored in a string, use the <a href="#ref_builtin_interpret"><code>interpret</code>
          built-in</a> instead.)</p>

          <p>The evaluated expression sees the same variables (such as
          locals) that are visible at the place of the invocation of
          <code class="inline-code">eval</code>. That is, it behaves similarly as if in
          place of <code class="inline-code"><em class="code-color">s</em>?eval</code> you
          had the <em>value of</em>
          <code class="inline-code"><em class="code-color">s</em></code> there. Except, it
          can't use <a href="ref_builtins_loop_var.html">loop variable
          built-ins</a> that refer to a loop variable that was created
          outside <code class="inline-code"><em class="code-color">s</em></code>.</p>

          <p>Regarding the configuration settings that affect the parsing
          (like syntax) and evaluation the rules are the same as with the
          <a href="#ref_builtin_interpret"><code>interpret</code>
          built-in</a>.</p>
        
          
<div class="code-wrapper">
<pre class="code-block code-output">
${"1+2"?eval}
</pre>
</div>


<h2 class="content-header header-section2" id="ref_builtin_has_content">has_content</h2>


          

          <p>It is <code class="inline-code">true</code> if the variable exists (and
          isn't Java <code class="inline-code">null</code>) and is not "empty",
          otherwise it is <code class="inline-code">false</code>. The meaning of
          "empty" depends on the concrete case. This follows
          intuitive common-sense ideas. The following are empty: a string with
          0 length, a <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup
          output value</a> with 0 length markup, a sequence or hash with no
          sub variables, a collection which has passed the last element. If
          the value is not of any of these types, then it counts as non-empty
          if it's a number or a date or a boolean (e.g. <code class="inline-code">0</code>
          and <code class="inline-code">false</code> are not empty), otherwise it counts as
          empty. Note that when your data-model implements multiple template
          model interfaces you may get unexpected results. However, when in
          doubt you can use always use <code class="inline-code">expr!?size &gt; 0</code> or
          <code class="inline-code">expr!?length &gt; 0</code> instead of
          <code class="inline-code">expr?has_content</code>.</p>

          <p>This buit-in is exceptional in that you can use the
          parentheses trick like with the <a href="dgui_template_exp.html#dgui_template_exp_missing_default">default value
          operator</a>. That is, you can write both
          <code class="inline-code">product.color?has_content</code> and
          <code class="inline-code">(product.color)?has_content</code>. The first doesn't
          handle the case when <code class="inline-code">product</code> is missing, the last
          does.</p>
        
          
<div class="code-wrapper">
<pre class="code-block code-output">
<#assign expr="has_content_test"/>
<#if expr?has_content>
	content exist
<#else>
	content doesn't exist
</#if>
</pre>
</div>


<h2 class="content-header header-section2" id="ref_builtin_interpret">interpret</h2>


          

          <p>This built-in parses a string as an FTL template, and returns
          an user-defined directive that executes that template, just as if a
          template with that content were <a href="ref_directive_include.html"><code>include</code>-d</a>
          at that point. Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign x=["a", "b", "c"]&gt;
&lt;#assign templateSource = r"&lt;#list x as y&gt;&#36;{y}&lt;/#list&gt;"&gt;
&lt;#-- Note: That r was needed so that the &#36;{y} is not interpreted above --&gt;
&lt;#assign inlineTemplate = templateSource?interpret&gt;
&lt;@inlineTemplate /&gt;</pre></div>

          <p>The output:</p>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#assign x=["a", "b", "c"]>
<#assign templateSource = r"<#list x as y>${y}</#list>">
<#-- Note: That r was needed so that the ${y} is not interpreted above -->
<#assign inlineTemplate = templateSource?interpret>
<@inlineTemplate />

</pre></div>

          <p>As you can see, <code class="inline-code">inlineTemplate</code> is a
          user-defined directive that, when executed, runs the template whose
          content is the value of <code class="inline-code">templateSource</code>.</p>

          <p>The name of the template created by
          <code class="inline-code">interpret</code> is the name of the template that calls
          <code class="inline-code">interpret</code>, plus
          <code class="inline-code">"-&gt;anonymous_interpreted"</code>. For example, if the
          template that calls the built-in is
          <code class="inline-code">"foo/bar.ftl"</code>, then the name of the resulting
          template is
          <code class="inline-code">"foo/bar.ftl-&gt;anonymous_interpreted"</code>. Thus,
          relative paths inside the interpreted template are relative to this
          path (i.e., the base directory will be <code class="inline-code">"foo"</code>),
          and errors inside the interpreted template will point to this
          generated template name.</p>

          <p>For more helpful error messages, you can override the template
          name part after the <code class="inline-code">"-&gt;"</code>. For example, let's
          say <code class="inline-code">mailTemplateSource</code> comes from the
          <code class="inline-code">mail_template</code> database table, and in the case of
          error, you want the error log to contain the database ID of the
          failing template:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign inlineTemplate = [mailTemplateSource, "mail_templates id=&#36;{mailTemplateId}"]?interpret&gt;</pre></div>

          <p>As you can see, <code class="inline-code">interpret</code> can be applied on
          a sequence of two items, in which case the first item is the FTL
          string to interpret, and the second items is the template name used
          after the <code class="inline-code">"-&gt;"</code>.</p>

          <p>The configuration settings that affect the interpreted
          template are the same as of the surrounding template, except that
          parser settings specified in the <a href="ref_directive_ftl.html#ref.directive.ftl"><code>ftl</code> directive</a>
          or was established via tag syntax or naming convention
          auto-detection are instead coming from the
          <code class="inline-code">Configuration</code> object (or naturally, from the
          <a href="pgui_config_templateconfigurations.html"><code>TemplateConfiguration</code></a>,
          if there's any). Thus the tag syntax, naming convention, whitespace
          handling, etc. of the interpreted template is independent of that
          established <em>inside</em> the surrounding template. An
          important exception from this rule is that the <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_outputformat">output format</a>
          and auto-escaping policy is inherited from the lexical context where
          <code class="inline-code">interpret</code> is called from. For example in a
          template that has <code class="inline-code">&lt;#ftl
          output_format="XML"&gt;</code> header (or if you are inside a
          <code class="inline-code">&lt;#output_format
          "XML"&gt;<em class="code-color">...</em>&lt;/#output_format&gt;</code>
          block), <code class="inline-code">interpret</code> calls in it will produce
          directives with XML output format.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_isType">is_...</h2>


          

          

          <p>These built-ins check the type of a variable, and returns
          <code class="inline-code">true</code> or <code class="inline-code">false</code> depending on the
          type. The list of
          <code class="inline-code">is_<em class="code-color">...</em></code>
          built-ins:</p>

            <div class="table-responsive">
    <table class="table">

            <thead>
              <tr>
                <th>Built-in</th>


                <th>Returns <code class="inline-code">true</code> if the value is a ...</th>

              </tr>

            </thead>


            <tbody>
              <tr>
                <td><code class="inline-code">is_string</code></td>


                <td>string</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_number</code></td>


                <td>number</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_boolean</code></td>


                <td>boolean</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_date</code></td>


                <td>Don't use it! Same as <code class="inline-code">is_date_like</code>, use
                that instead. Later may changes meaning to
                <code class="inline-code">date_only</code>.</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_date_like</code></td>


                <td>date-like, means either date, time or date-time, or
                date-like with unknown precise type (since FreeMarker
                2.3.21)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_date_only</code></td>


                <td>date (no time of the day part) (since FreeMarker
                2.3.21)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_time</code></td>


                <td>time (no year-month-day part) (since FreeMarker
                2.3.21)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_datetime</code></td>


                <td>date-time (contains both year-month-day and time of the
                day)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_unknown_date_like</code></td>


                <td>date-like where we don't know if it's a date or a time or
                a date-time</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_method</code></td>


                <td>method</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_transform</code></td>


                <td>transform</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_macro</code></td>


                <td>macro or function (yes, also for function; a historical
                glitch)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_hash</code></td>


                <td>hash (including extended hash)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_hash_ex</code></td>


                <td>extended hash (supports <code class="inline-code">?keys</code> and
                <code class="inline-code">?values</code>)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_sequence</code></td>


                <td>sequence (Historical quirk: Before <a href="pgui_config_incompatible_improvements.html#pgui_config_incompatible_improvements_how_to_set"><code>incompatible_improvements</code></a>
                2.3.24 it returns <code class="inline-code">true</code> for Java methods as
                they implement the
                <code class="inline-code">[<em class="code-color">index</em>]</code>
                operator, however, they fail on
                <code class="inline-code">?size</code>.)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_collection</code></td>


                <td>collection (including extended collection)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_collection_ex</code></td>


                <td>extended collection (supports
                <code class="inline-code">?size</code>)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_enumerable</code></td>


                <td>sequence or collection</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_indexable</code></td>


                <td>sequence (Historical quirk: it returns
                <code class="inline-code">true</code> for Java methods as they implement the
                <code class="inline-code">[<em class="code-color">index</em>]</code>
                operator.)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_directive</code></td>


                <td>Whatever kind of directive (for example a macro, <span class="marked-for-programmers">or
                <code class="inline-code">TemplateDirectiveModel</code>,
                <code class="inline-code">TemplateTransformModel</code>, etc.</span>), or
                function (a historical glitch)</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_node</code></td>


                <td>node</td>

              </tr>


              <tr>
                <td><code class="inline-code">is_markup_output</code></td>


                <td>markup output (a value that won't be <a href="dgui_misc_autoescaping.html">auto-escaped</a>)</td>

              </tr>

            </tbody>

              </table>
  </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_markup_string">markup_string</h2>


          <p></p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.24.</p>
            </div>


          <p>Returns the markup stored inside a <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup output value</a>
          as string. This is useful if the value has to be passed to a Java
          method for a <code class="inline-code">String</code> parameter, or if we want to
          manipulate the markup directly in the template. Note that the
          resulting string can be converted back to markup output value with
          <a href="ref_builtins_string.html#ref_builtin_no_esc"><code>?no_esc</code></a>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_namespace">namespace</h2>


          

          <p>This built-in returns the namespace (i.e. the
          "gate" hash to the namespace) associated with a macro
          or function variable. You can use it with macros and functions
          only.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_new">new</h2>


          

          

          <p>This is to create a variable of a certain
          <code class="inline-code">TemplateModel</code> implementation.</p>

          <p>On the left side of <code class="inline-code">?</code> you specify a string,
          the full-qualified class name of a <code class="inline-code">TemplateModel</code>
          implementation. The result is a method variable that calls the
          constructor, and returns the new variable.</p>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#-- Creates an user-defined directive be calling the parameterless constructor of the class --&gt;
&lt;#assign word_wrapp = "com.acmee.freemarker.WordWrapperDirective"?new()&gt;
&lt;#-- Creates an user-defined directive be calling the constructor with one numerical argument --&gt;
&lt;#assign word_wrapp_narrow = "com.acmee.freemarker.WordWrapperDirective"?new(40)&gt;</pre></div>

<div class="code-wrapper">
<pre class="code-block code-output">
<#-- Creates an user-defined directive be calling the parameterless constructor of the class -->
<#assign word_wrapp = "com.baeldung.freemarker.model.TemplateModelImpl"?new()>
<#-- Creates an user-defined directive be calling the constructor with one numerical argument -->
<#assign word_wrapp_narrow = "com.baeldung.freemarker.model.TemplateModelImpl"?new(40)>
</pre>
</div>
          <p>For more information about how the constructor parameters are
          unwrapped and how overloaded constructor is chosen, read: <a href="pgui_misc_beanwrapper.html">Programmer's Guide/Miscellaneous/Bean wrapper</a></p>

          <p>This built-in can be a security concern because the template
          author can create arbitrary Java objects and then use them, as far
          as they implement <code class="inline-code">TemplateModel</code>. Also the
          template author can trigger static initialization for classes that
          don't even implement <code class="inline-code">TemplateModel</code>. You can
          (since 2.3.17) restrict the classes accessible with this built-in
          using
          <code class="inline-code">Configuration.setNewBuiltinClassResolver(TemplateClassResolver)</code>
          or the <code class="inline-code">new_builtin_class_resolver</code> setting. See
          the Java API docs for more information. If you are allowing
          not-so-much-trusted users to upload templates then you should
          definitely look into this topic.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_numToDate">number_to_date, number_to_time, number_to_datetime</h2>


          

          

          

          

          

          

          

          <p>These are used to convert a number (usually a Java
          <code class="inline-code">long</code>) to a date, time or date-time, respectively.
          This does them same as <code class="inline-code">new java.util.Date(long)</code>
          in Java, that is, the number is interpreted as the milliseconds
          passed since the epoch. The number can be anything and of any type
          as far as its value fits into a <code class="inline-code">long</code>. If the
          number isn't a whole number, it will be rounded to whole with
          half-up rule.</p>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&#36;{1305575275540?number_to_datetime}
&#36;{1305575275540?number_to_date}
&#36;{1305575275540?number_to_time}</pre></div>

          <p>The output will be something like this (depending on the
          current locale and time zone):</p>

          

<div class="code-wrapper"><pre class="code-block code-output">

${1305575275540?number_to_datetime}
${1305575275540?number_to_date}
${1305575275540?number_to_time}

</pre></div>
        
          



<h2 class="content-header header-section2" id="ref_builtin_sequence">sequence</h2>


          

          <p>This built-in is used to convert a listable value (one that
          you can iterate through with the <a href="ref_directive_list.html#ref.directive.list"><code>list</code>
          directive</a>) to a more capable <a href="dgui_datamodel_types.html#dgui_datamodel_container">sequence</a> value. Sequences
          support operations like <code class="inline-code">xs[index]</code> and
          <code class="inline-code">xs?size</code>. Also, the resulting value is listable
          for multiple times, even if the original value was backed by a
          <code class="inline-code">java.util.Iterator</code> (which gives error when you
          try to list it for the 2nd time). This built-in is typically used to
          work around data-model problems, in case you can't fix the
          data-model itself. If you can, always fix the data-model instead
          (give a <code class="inline-code">java.util.List</code> or array to the template
          instead of a more restricted object, like a
          non-<code class="inline-code">List</code> <code class="inline-code">java.util.Collection</code>,
          or a <code class="inline-code">java.util.Iterator</code>).</p>

          <p>If the value is already a sequence, then this built-in just
          returns that as is. If the value is not something that the <a href="ref_directive_list.html#ref.directive.list"><code>list</code>
          directive</a> could list, then template processing will be
          aborted with error. Otherwise, it usually fetches all the values,
          and stores them into a sequence. Be careful if you can have a huge
          number of items, as all of them will be held in memory on the same
          time. However, in some special cases fetching and/or storing all
          elements is avoided; see about the <a href="#ref_builtin_sequence_optimizations">optimizations</a>
          later.</p>

          <p>You should convert a value with <code class="inline-code">sequence</code>
          only once. If you need the resulting sequence at multiple places,
          always assign the result to a variable, because if the value you
          convert is only listable once, converting it for the second time
          will result in error or an empty sequence. Also the conversion is
          somewhat costly for big collections, so it's better to do it only
          once.</p>

          <p>Example: Let's say you find that <code class="inline-code">users</code> is
          only listable once (because it's a
          <code class="inline-code">java.util.Iterator</code>), but you need to list it for
          multiple times in the template, and you can't fix the data-model.
          Then you could do this:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#-- Collect all the users into a sequence: --&gt;
&lt;#assign usersSeq = users?sequence&gt;

&lt;#list usersSeq as user&gt;...&lt;/#list&gt;
Again:
&lt;#list usersSeq as user&gt;...&lt;/#list&gt;</pre></div>

          
<div class="code-wrapper">
<pre class="code-block code-output">

<#-- Collect all the users into a sequence: -->
<#assign users = ["ȫ�浿","�Ӳ���","������"]/>
<#assign usersSeq = users?sequence>

<#list usersSeq as user>...</#list>
Again:
<#list usersSeq as user>...</#list>

</pre>
</div>

<h3 class="content-header header-simplesect" id="ref_builtin_sequence_optimizations">Optimizations</h3>


            <p>Since version 2.3.29, if the result of the
            <code class="inline-code">sequence</code> built-in is directly the input of to
            the <a href="dgui_template_exp.html#dgui_template_exp_var_sequence"><code>[<em>index</em>]</code></a>
            or <a href="dgui_template_exp.html#dgui_template_exp_seqenceop_slice"><code>[<em>range</em>]</code></a>
            operator, or of <code class="inline-code">?size</code>, or of
            <code class="inline-code">?first</code>, or a chain of these operations, then
            the elements will not be collected into the memory, and only as
            many elements as strictly necessary will be fetched. For example
            <code class="inline-code">anIterator?sequence[1]</code> will just fetch the
            first 2 items (instead of building a sequence that contains all
            the elements, and then getting the 2nd element from that). Or, if
            you write <code class="inline-code">anIterator?sequence?size</code>, it will
            just skip through all elements to count them, but won't store them
            in memory.</p>

            <p>The optimizations will only work within the same chain of
            built-in calls, so for example in <code class="inline-code">&lt;#assign seq =
            anIterator?sequence&gt;&#36;{seq[1]}</code> the
            <code class="inline-code">?sequence</code> step will collect all the elements
            into the memory, as <code class="inline-code">anIterator?sequence</code> and
            <code class="inline-code">seq[1]</code> are separated. On the other hand, the
            optimizations will work in
            <code class="inline-code">anIterator?sequence[10..]?size</code>, as both
            <code class="inline-code">[<em class="code-color">range</em>]</code> and
            <code class="inline-code">?size</code> supports it, and they are directly
            chained together.</p>
          
        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_type_independent.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_directives.html"><span>Next</span></a></div></div></div></div>
</body>
</html>