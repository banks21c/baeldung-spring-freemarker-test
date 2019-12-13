<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_alphaidx.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_number.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_string" itemprop="headline">Built-ins for strings</h1>
</div></div><div class="page-menu">
<div class="page-menu-title">Page Contents</div>
<ul><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_boolean" data-menu-target="ref_builtin_boolean">boolean</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_cap_first" data-menu-target="ref_builtin_cap_first">cap_first</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_capitalize" data-menu-target="ref_builtin_capitalize">capitalize</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_chop_linebreak" data-menu-target="ref_builtin_chop_linebreak">chop_linebreak</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_contains" data-menu-target="ref_builtin_contains">contains</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_date" data-menu-target="ref_builtin_string_date">date, time, datetime</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_ends_with" data-menu-target="ref_builtin_ends_with">ends_with</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_ensure_ends_with" data-menu-target="ref_builtin_ensure_ends_with">ensure_ends_with</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_ensure_starts_with" data-menu-target="ref_builtin_ensure_starts_with">ensure_starts_with</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_esc" data-menu-target="ref_builtin_esc">esc</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_groups" data-menu-target="ref_builtin_groups">groups</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_html" data-menu-target="ref_builtin_html">html (deprecated)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_index_of" data-menu-target="ref_builtin_index_of">index_of</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_j_string" data-menu-target="ref_builtin_j_string">j_string</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_js_string" data-menu-target="ref_builtin_js_string">js_string</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_json_string" data-menu-target="ref_builtin_json_string">json_string</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_after" data-menu-target="ref_builtin_keep_after">keep_after</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_after_last" data-menu-target="ref_builtin_keep_after_last">keep_after_last</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_before" data-menu-target="ref_builtin_keep_before">keep_before</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_before_last" data-menu-target="ref_builtin_keep_before_last">keep_before_last</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_last_index_of" data-menu-target="ref_builtin_last_index_of">last_index_of</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_left_pad" data-menu-target="ref_builtin_left_pad">left_pad</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_length" data-menu-target="ref_builtin_length">length</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_lower_case" data-menu-target="ref_builtin_lower_case">lower_case</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_matches" data-menu-target="ref_builtin_matches">matches</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_no_esc" data-menu-target="ref_builtin_no_esc">no_esc</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_number" data-menu-target="ref_builtin_number">number</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_replace" data-menu-target="ref_builtin_replace">replace</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_right_pad" data-menu-target="ref_builtin_right_pad">right_pad</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_remove_beginning" data-menu-target="ref_builtin_remove_beginning">remove_beginning</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_remove_ending" data-menu-target="ref_builtin_remove_ending">remove_ending</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_rtf" data-menu-target="ref_builtin_rtf">rtf (deprecated)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_split" data-menu-target="ref_builtin_split">split</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_starts_with" data-menu-target="ref_builtin_starts_with">starts_with</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_for_string" data-menu-target="ref_builtin_string_for_string">string (when used with a string value)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_substring" data-menu-target="ref_builtin_substring">substring (deprecated)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_trim" data-menu-target="ref_builtin_trim">trim</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_truncate" data-menu-target="ref_builtin_truncate">truncate, truncate_...</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_uncap_first" data-menu-target="ref_builtin_uncap_first">uncap_first</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_upper_case" data-menu-target="ref_builtin_upper_case">upper_case</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_url" data-menu-target="ref_builtin_url">url</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_url_path" data-menu-target="ref_builtin_url_path">url_path</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_word_list" data-menu-target="ref_builtin_word_list">word_list</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_xhtml" data-menu-target="ref_builtin_xhtml">xhtml (deprecated)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_xml" data-menu-target="ref_builtin_xml">xml (deprecated)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_flags" data-menu-target="ref_builtin_string_flags">Common flags</a></li></ul> </div><p>These built-ins act on a string left-value. However, if the
        left-value is number or date/time/date-time or boolean (since 2.3.20),
        it will automatically converted to string according the current
        number-, date/time/date-time- and boolean-format settings (which are
        the same formatters that are applied when inserting such values with
        <code class="inline-code">$&#123;<em class="code-color">...</em>&#125</code>).</p>
          



<h2 class="content-header header-section2" id="ref_builtin_boolean">boolean</h2>


          

          

          

          

          

          

          <p>The string converted to boolean value. The string must be
          <code class="inline-code">true</code> or <code class="inline-code">false</code> (case
          sensitive!), or must be in the format specified by the
          <code class="inline-code">boolean_format</code> setting.</p>

          <p>If the string is not in the appropriate format, an error will
          abort template processing when you try to access this
          built-in.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_cap_first">cap_first</h2>


          

          <p>The string with the very first word of the string capitalized.
          For the precise meaning of "word" see the <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_word_list">word_list built-in</a>.
          Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"  green mouse"?cap_first&#125;
$&#123;"GreEN mouse"?cap_first&#125;
$&#123;"- green mouse"?cap_first&#125;</pre></div>

          <p>The output:</p>
<pre>          
<div style="border:1px solid green;">
${"  green mouse"?cap_first}
${"GreEN mouse"?cap_first}
${"- green mouse"?cap_first}
</div>
</pre>
          

          <p>In the case of <code class="inline-code">"- green mouse"</code>, the first
          word is the <code class="inline-code">-</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_capitalize">capitalize</h2>


          

          <p>The string with all words capitalized. For the precise meaning
          of "word" see the <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_word_list">word_list built-in</a>.
          Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"  green  mouse"?capitalize&#125;
$&#123;"GreEN mouse"?capitalize&#125;</pre></div>

          <p>The output:</p>
<pre>          
<div style="border:1px solid green;">
${"  green  mouse"?capitalize}
${"GreEN mouse"?capitalize}
</div>
</pre>
          

<h2 class="content-header header-section2" id="ref_builtin_chop_linebreak">chop_linebreak</h2>


          

          <p>The string without the <a href="gloss.html#gloss.lineBreak">line-break</a> at its very end if there
          was a line-break, otherwise the unchanged string.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_contains">contains</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.1. It
            doesn't exist in 2.3.</p>
            </div>


          <p>Returns if the substring specified as the parameter to this
          built-in occurrs in the string. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#if "piceous"?contains("ice")&gt;It contains "ice"&lt;/#if&gt;</pre></div>

          <p>This will output:</p>
<pre>          
<div style="border:1px solid green;">
<#if "piceous"?contains("ice")>It contains "ice"</#if>
</div>
</pre>
          


<h2 class="content-header header-section2" id="ref_builtin_string_date">date, time, datetime</h2>


          

          

          

          

          

          

          

          

          

          

          

          

          

          

          <p>The string value converted to a date, time, or date-time
          value. It will expect the format specified by the <a href="ref_directive_setting.html#topic.dateTimeFormatSettings"><code>date_format</code>,
          <code>time_format</code> and
          <code>datetime_format</code> settings</a>. If the string is
          not in the appropriate format, an error will abort template
          processing when you try to access this built-in.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#-- The date_format, time_format and datetime_format settings must match this format! --&gt;
&lt;#assign someDate = "Oct 25, 1995"?date&gt;
&lt;#assign someTime = "3:05:30 PM"?time&gt;
&lt;#assign someDatetime = "Oct 25, 1995 03:05:00 PM"?datetime&gt;

&lt;#-- Changing the setting value changes the expected format: --&gt;
&lt;#setting datetime_format="iso"&gt;
&lt;#assign someDatetime = "1995-10-25T15:05"?datetime&gt;</pre></div>

<#-- The date_format, time_format and datetime_format settings must match this format! -->
<#assign someDate = "Oct 25, 1995"?date>
<#assign someTime = "3:05:30 PM"?time>
<#assign someDatetime = "Oct 25, 1995 03:05:00 PM"?datetime>

<#-- Changing the setting value changes the expected format: -->
<#setting datetime_format="iso">
<#assign someDatetime = "1995-10-25T15:05"?datetime>
<pre>          
<div style="border:1px solid green;">
<#-- Parsing XML Schema xs:date, xs:time and xs:dateTime values: -->
${someDate}
${someTime}
${someDatetime}

<#-- Parsing ISO 8601 (both extended and basic formats): -->
${datetime_format!""}
${someDatetime}
</div>
</pre>
          <p>You can also specify the format explicitly like
          <code class="inline-code">?datetime.<em class="code-color">format</em></code> (and
          hence also as
          <code class="inline-code">?datetime["<em class="code-color">format</em>"]</code>)
          or
          <code class="inline-code">?datetime("<em class="code-color">format</em>")</code>;
          these three forms do the same. The format can be specified similarly
          with <code class="inline-code">?date</code> and <code class="inline-code">?time</code> too. For
          the syntax and meaning of format values see the possible values of
          the <a href="ref_directive_setting.html#topic.dateTimeFormatSettings"><code>date_format</code>,
          <code>time_format</code> and
          <code>datetime_format</code> settings</a>. Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#-- Parsing XML Schema xs:date, xs:time and xs:dateTime values: --&gt;
&lt;#assign someDate = "1995-10-25"?date.xs&gt;
&lt;#assign someTime = "15:05:30"?time.xs&gt;
&lt;#assign someDatetime = "1995-10-25T15:05:00"?datetime.xs&gt;

&lt;#-- Parsing ISO 8601 (both extended and basic formats): --&gt;
&lt;#assign someDatetime = "1995-10-25T15:05"?datetime.iso&gt;
&lt;#assign someDatetime = "19951025T1505"?datetime.iso&gt;

&lt;#-- Parsing with SimpleDateFormat patterns: --&gt;
&lt;#assign someDate = "10/25/1995"?date("MM/dd/yyyy")&gt;
&lt;#assign someTime = "15:05:30"?time("HH:mm:ss")&gt;
&lt;#assign someDatetime = "1995-10-25 03:05 PM"?datetime("yyyy-MM-dd hh:mm a")&gt;

&lt;#-- Parsing with custom date formats: --&gt;
&lt;#assign someDatetime = "October/25/1995 03:05 PM"?datetime.@worklog&gt;</pre></div>

<#function worklog>
	<#return "xs" />
</#function>
<pre>          
<div style="border:1px solid green;">
<#-- Parsing XML Schema xs:date, xs:time and xs:dateTime values: -->
<#assign someDate = "1995-10-25"?date.xs>
${someDate}
<#assign someTime = "15:05:30"?time.xs>
${someTime}
<#assign someDatetime = "1995-10-25T15:05:00"?datetime.xs>
${someDatetime!""}

<#-- Parsing ISO 8601 (both extended and basic formats): -->
<#assign someDatetime = "1995-10-25T15:05"?datetime.iso>
${someDatetime}
<#assign someDatetime = "19951025T1505"?datetime.iso>
${someDatetime}

<#-- Parsing with SimpleDateFormat patterns: -->
<#assign someDate = "10/25/1995"?date("MM/dd/yyyy")>
${someDate}
<#assign someTime = "15:05:30"?time("HH:mm:ss")>
${someTime}
<#assign someDatetime = "1995-10-25 03:05 PM"?datetime("yyyy-MM-dd hh:mm a")>
${someDatetime}

<#-- Parsing with custom date formats: -->
<#assign someDatetime = "October/25/1995 03:05 PM"?datetime>
</div>
</pre>

          <p>To prevent misunderstandings, the left-hand value need not be
          a string literal. For example, when you read data from XML DOM (from
          where all values come as unparsed strings), you may do things like
          <code class="inline-code">order.confirmDate?date.xs</code> to convert the string
          value to a real date.</p>

          <p>Of course, the format also can be a variable, like in
          <code class="inline-code">"<em class="code-color">...</em>"?datetime(myFormat)</code>.</p>

          <p>Note that since 2.3.24, these built-ins can also be called
          with 0 arguments, like <code class="inline-code">?date()</code>. It's almost the
          same as just writing <code class="inline-code">?date</code>. The difference is
          highly technical and rarely matters: <code class="inline-code">?date()</code> and
          such returns exactly the same Java object that the date parser
          (<code class="inline-code">freemarker.core.TemplateDateFormat</code>
          implementation) returns, while <code class="inline-code">?date</code> without the
          <code class="inline-code">()</code> returns a tricky wrapper value that's a date
          and a method and hash on the same time.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_ends_with">ends_with</h2>


          

          <p>Returns whether this string ends with the substring specified
          in the parameter. For example
          <code class="inline-code">"ahead"?ends_with("head")</code> returns boolean
          <code class="inline-code">true</code>. Also,
          <code class="inline-code">"head"?ends_with("head")</code> will return
          <code class="inline-code">true</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_ensure_ends_with">ensure_ends_with</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.21.</p>
            </div>


          <p>If the string doesn't end with the substring specified as the
          1st parameter, it adds it after the string, otherwise it returns the
          original string. For example, both
          <code class="inline-code">"foo"?ensure_ends_with("/")</code> and
          <code class="inline-code">"foo/"?ensure_ends_with("/")</code> returns
          <code class="inline-code">"foo/"</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_ensure_starts_with">ensure_starts_with</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.21.</p>
            </div>


          <p>If the string doesn't start with the substring specified as
          the 1st parameter, it adds it before the string, otherwise it
          returns the original string. For example, both
          <code class="inline-code">"foo"?ensure_starts_with("/")</code> and
          <code class="inline-code">"/foo"?ensure_starts_with("/")</code> returns
          <code class="inline-code">"/foo"</code>.</p>

          <p>If you specify two parameters, then the 1st parameter is
          interpreted as a Java regular expression, and if it doesn't match
          the beginning of the string, then the string specified as the 2nd
          parameter is added before the string. For example
          <code class="inline-code">someURL?ensure_starts_with("[a-zA-Z]+://",
          "http://")</code> will check if the string starts with something
          that matches <code class="inline-code">"[a-zA-Z]+://"</code> (note that no
          <code class="inline-code">^</code> is needed), and if it doesn't, it prepends
          <code class="inline-code">"http://"</code>.</p>

          <p>This method also accepts a 3rd <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_flags">flags parameter</a>. As
          calling with 2 parameters implies <code class="inline-code">"r"</code> there
          (i.e., regular expression mode), you rarely need this. One notable
          case is when you don't want the 1st parameter to be interpreted as a
          regular expression, only as plain text, but you want the comparison
          to be case-insensitive, in which case you would use
          <code class="inline-code">"i"</code> as the 3rd parameter.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_esc">esc</h2>


          <p></p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.24.</p>
            </div>


          <p>Escapes the value with the current <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_outputformat">output format</a>,
          and prevents the <a href="dgui_misc_autoescaping.html">auto-escaping</a> of the
          returned value (to avoid double escaping). Because of auto-escaping,
          you usually only need this where auto-escaping was disabled:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#ftl output_format="HTML" <strong>auto_esc=false</strong>&gt;
&lt;#assign s = "R&amp;D"&gt;
$&#123;s&#125;
$&#123;s?esc&#125;</pre></div>

<div style="border:1px solid green;">
<xmp>
<#include "../output_format_html1.ftl"/>
</xmp>
</div>

          <p>In templates, where auto-escaping is on, using it is
          redundant:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#ftl output_format="HTML"&gt;
&lt;#assign s = "R&amp;D"&gt;
$&#123;s&#125;
$&#123;s?esc&#125; &lt;#-- ?esc is redundant here --&gt;</pre></div>


<div style="border:1px solid green;">
<xmp>
<#include "../output_format_html2.ftl"/>
</xmp>
</div>

          <p>This built-in works by converting the string value to a <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup output
          value</a>, by escaping the string with the current output format,
          and using the result as the markup. The resulting markup output
          value belongs to the current output format at the point of the
          invocation.</p>

          <p>This built-in can also be applied on markup output values,
          which it will bypass without change, as far as the input markup
          output value belongs to the current output format. If it doesn't,
          then the markup has to be converted to the current output format,
          which currently (as of 2.3.24) will be only successful if that value
          was created by escaping plain text (usually, with
          <code class="inline-code">?esc</code>).</p>

          <p>This built-in can't be used where the current output format is
          a <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_nonmarkupof">non-markup
          output format</a>. An attempt to do so will cause a <a href="gloss.html#gloss.parseTimeError">parse-time error</a>.</p>

          <p>This built-in is not related to the deprecated <a href="ref_directive_escape.html"><code>escape</code> and
          <code>noescape</code> directives</a>. In fact, the parser
          will prevent using them on the same place, to prevent
          confusion.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_groups">groups</h2>


          

          <p>This is used only with the result of the
          <code class="inline-code">matches</code> built-in. See <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_matches">there...</a></p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_html">html (deprecated)</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is <em>deprecated</em> by the
            <a href="dgui_misc_autoescaping.html">auto-escaping
            mechanism</a> introduced in 2.3.24. To prevent double escaping
            and confusion in general, using this built-in on places where
            auto-escaping is active is a <a href="gloss.html#gloss.parseTimeError">parse-time error</a>. To help
            migration, this built-in silently bypasses HTML <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup output
            values</a> without changing them.</p>
            </div>


          <p>The string as HTML markup. That is, the string with
          all:</p>

          <ul>
            <li>
              <code class="inline-code">&lt;</code> replaced with
              <code class="inline-code">&amp;lt;</code>
            </li>

            <li>
              <code class="inline-code">&gt;</code> replaced with
              <code class="inline-code">&amp;gt;</code>
            </li>

            <li>
              <code class="inline-code">&amp;</code> replaced with
              <code class="inline-code">&amp;amp;</code>
            </li>

            <li>
              <code class="inline-code">"</code> replaced with
              <code class="inline-code">&amp;quot;</code>
            </li>

            <li>
              <code class="inline-code">'</code> is replaced with
              <code class="inline-code">&amp;#39;</code> <em>if</em> the
              programmers has <a href="pgui_config_incompatible_improvements.html#pgui_config_incompatible_improvements_how_to_set">set
              the <code>incompatible_improvements</code> setting</a>
              to 2.3.24 or higher (also if it's set to 2.3.20 or higher and
              you are outside a string literal). Otherwise
              <code class="inline-code">'</code> won't be replaced, so you must use
              quotation mark (<code class="inline-code">"</code>, not <code class="inline-code">'</code>)
              to quote attribute values where you want to insert a value
              safely.
            </li>
          </ul>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;input type=text name=user value=<strong>"</strong>$&#123;user?html&#125;<strong>"</strong>&gt;</pre></div>

            <div class="callout warning">
    <strong class="callout-label">Warning!</strong>

            <p>When inserting the value of an attribute, always quote it,
            or else it can be exploited by attackers! This is WRONG:
            <code class="inline-code">&lt;input name="user" value=$&#123;user?xhtml&#125;&gt;</code>.
            This is good: <code class="inline-code">&lt;input name="user"
            value="$&#123;user?xhtml&#125;"&gt;</code>.</p>
            </div>


          <p>Note that in HTML pages usually you want to use this built-in
          for all interpolations. You can spare a lot of typing and lessen the
          chances of accidental mistakes by using the <a href="ref_directive_escape.html"><code>escape</code>
          directive</a>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_index_of">index_of</h2>


          

          <p>Returns the index within this string of the first occurrence
          of the specified substring. For example,
          <code class="inline-code">"abcabc"?index_of("bc")</code> will return 1 (don't
          forget that the index of the first character is 0). Also, you can
          specify the index to start the search from:
          <code class="inline-code">"abcabc"?index_of("bc", 2)</code> will return 4. There
          is no restriction on the numerical value of the second parameter: if
          it is negative, it has the same effect as if it were zero, and if it
          is greater than the length of this string, it has the same effect as
          if it were equal to the length of this string. Decimal values will
          be truncated to integers.</p>

          <p>If the 1st parameter does not occur as a substring in this
          string (starting from the given index, if you use the second
          parameter), then it returns -1.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_j_string">j_string</h2>


          

          <p>Escapes the string with the escaping rules of Java language
          string literals, so it's safe to insert the value into a string
          literal. Note that it will <em>not</em> add quotation
          marks around the inserted value; you meant to use this
          <em>inside</em> the string literal.</p>

          <p>All characters under <a href="gloss.html#gloss.UCS">UCS</a> code
          point 0x20 will be escaped. When they have no dedicated escape
          sequence in the Java language (like <code class="inline-code">\n</code>,
          <code class="inline-code">\t</code>, etc.), they will be replaced with a UNICODE
          escape
          (<code class="inline-code">\u<em class="code-color">XXXX</em></code>).</p>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign beanName = 'The "foo" bean.'&gt;
String BEAN_NAME = "$&#123;beanName?j_string&#125;";</pre></div>

          <p>will output:</p>

<pre>
<div style="border:1px solid green;">
<#assign beanName = 'The "foo" bean.'>
String BEAN_NAME = "${beanName?j_string}";
</div>
</pre>          

<div class="code-wrapper"><pre class="code-block code-output">String BEAN_NAME = "The \"foo\" bean.";</pre></div>
        
          



<h2 class="content-header header-section2" id="ref_builtin_js_string">js_string</h2>


          

          <p>Escapes the string with the escaping rules of JavaScript
          language string literals, so it's safe to insert the value into a
          string literal. Note that it will <em>not</em> add
          quotation marks around the inserted value; you meant to use this
          <em>inside</em> the string literal.</p>

            <div class="callout warning">
    <strong class="callout-label">Warning!</strong>

            <p>When inserting into a JavaScript string literal that's
            inside a HTML attribute, you also must escape the value with HTML
            escaping. Thus, of you don't have <a href="pgui_config_outputformatsautoesc.html">automatic HTML
            escaping</a>, this is WRONG: <code class="inline-code">&lt;p
            onclick="alert('$&#123;message?js_string&#125;')"&gt;</code>, and this is
            good: <code class="inline-code">&lt;p
            onclick="alert('$&#123;message?js_string?html&#125;')"&gt;</code>.</p>
            </div>


          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign user = "Big Joe's \"right hand\""&gt;
&lt;script&gt;
  alert("Welcome $&#123;user?js_string&#125;!");
&lt;/script&gt;</pre></div>

          <p>will output:</p>
          
<#assign user = "Big Joe's \"right hand\"">
<script>
  alert("Welcome ${user?js_string}!");
</script>
          
<div class="code-wrapper"><pre class="code-block code-output">&lt;script&gt;
  alert("Welcome Big Joe\'s \"right hand\"!");
&lt;/script&gt;</pre></div>

          <p>The exact escaping rules are:</p>

          <ul>
            <li>
              <p><code class="inline-code">"</code> is escaped as
              <code class="inline-code">\"</code></p>
            </li>

            <li>
              <p><code class="inline-code">'</code> is escaped as
              <code class="inline-code">\'</code></p>
            </li>

            <li>
              <p><code class="inline-code">\</code> is escaped as
              <code class="inline-code">\\</code></p>
            </li>

            <li>
              <p><code class="inline-code">/</code> is escaped as <code class="inline-code">\/</code>
              if the <code class="inline-code">/</code> is directly after
              <code class="inline-code">&lt;</code> in the escaped string, or if it's at the
              beginning of the escaped string</p>
            </li>

            <li>
              <p><code class="inline-code">&gt;</code> is escaped as
              <code class="inline-code">\&gt;</code> if the <code class="inline-code">&gt;</code> is
              directly after <code class="inline-code">]]</code> or <code class="inline-code">--</code> in
              the escaped string, or if it's at the beginning of the escaped
              string, or if there's only a <code class="inline-code">]</code> or
              <code class="inline-code">-</code> before it at the beginning of the escaped
              string</p>
            </li>

            <li>
              <p><code class="inline-code">&lt;</code> is escaped as
              <code class="inline-code">\u003C</code> if it's followed by
              <code class="inline-code">?</code> or <code class="inline-code">!</code> in the escaped
              string, or if it's at the end of the escaped string</p>
            </li>

            <li>
              <p>Control characters in <a href="gloss.html#gloss.UCS">UCS</a>
              code point ranges U+0000...U+001f and U+007f...U+009f are
              escaped as <code class="inline-code">\r</code>, <code class="inline-code">\n</code>, etc.,
              or as <code class="inline-code">\x<em class="code-color">XX</em></code> where
              there's no special escape for them in JavaScript.</p>
            </li>

            <li>
              <p>Control characters with <a href="gloss.html#gloss.UCS">UCS</a> code point U+2028 (Line
              separator) and U+2029 (Paragraph separator) are escaped as
              <code class="inline-code">\u<em class="code-color">XXXX</em></code>, as they
              are source code line-breaks in ECMAScript.</p>
            </li>
          </ul>
        
          



<h2 class="content-header header-section2" id="ref_builtin_json_string">json_string</h2>


          

          <p>Escapes the string with the escaping rules of JSON language
          string literals, so it's safe to insert the value into a string
          literal. Note that it will <em>not</em> add quotation
          marks around the inserted value; you meant to use this
          <em>inside</em> the string literal.</p>

          <p>This will not escape <code class="inline-code">'</code> characters, since
          JSON strings must be quoted with <code class="inline-code">"</code>.</p>

          <p>The escaping rules are almost identical to those <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_j_string">documented for
          <code>js_string</code></a>. The differences are that
          <code class="inline-code">'</code> is not escaped at all, that &gt; is escaped as
          \u003E (not as \&gt;), and that
          <code class="inline-code">\u<em class="code-color">XXXX</em></code> escapes are
          used instead of <code class="inline-code">\x<em class="code-color">XX</em></code>
          escapes.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_keep_after">keep_after</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.21.</p>
            </div>


          <p>Removes the part of the string that is not after the first
          occurrence of the given substring. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"abcdefgh"?keep_after("de")&#125;</pre></div>

          <p>will print</p>

<div style="border:1px solid green;">
${"abcdefgh"?keep_after("de")}
</div>
          


          <p>If the parameter string is not found, it will return an empty
          string. If the parameter string is a 0-length string, it will return
          the original string unchanged.</p>

          <p>This method accepts an optional <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_flags">flags parameter</a>, as its
          2nd parameter:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"foo : bar"?keep_after(r"\s*:\s*", "r")&#125;</pre></div>

          <p>will print</p>

<div style="border:1px solid green;">
${"foo : bar"?keep_after(r"\s*:\s*", "r")}
</div>


        
          



<h2 class="content-header header-section2" id="ref_builtin_keep_after_last">keep_after_last</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.22.</p>
            </div>


          <p>Same as <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_after"><code>keep_after</code></a>,
          but keeps the part after the last occurrence of the parameter,
          rather than after the first. Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"foo.bar.txt"?keep_after_last(".")&#125;</pre></div>

          <p>will print</p>

<div style="border:1px solid green;">
${"foo.bar.txt"?keep_after_last(".")}
</div>          


          <p>while with <code class="inline-code">keep_after</code> you would get
          <code class="inline-code">bar.txt</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_keep_before">keep_before</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.21.</p>
            </div>


          <p>Removes the part of the string that starts with the given
          substring. For example:</p>


<div class="code-wrapper"><pre class="code-block code-template">$&#123;"abcdef"?keep_before("de")&#125;</pre></div>

          <p>will print</p>

          
<div style="border:1px solid green;">
${"abcdef"?keep_before("de")}
</div>           

<div class="code-wrapper"><pre class="code-block code-output">abc</pre></div>

          <p>If the parameter string is not found, it will return the
          original string unchanged. If the parameter string is a 0-length
          string, it will return an empty string.</p>

          <p>This method accepts an optional <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_flags">flags parameter</a>, as its
          2nd parameter:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"foo : bar"?keep_before(r"\s*:\s*", "r")&#125;</pre></div>

          <p>will print</p>

<div style="border:1px solid green;">
${"foo : bar"?keep_before(r"\s*:\s*", "r")}
</div>            

        
          



<h2 class="content-header header-section2" id="ref_builtin_keep_before_last">keep_before_last</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.22.</p>
            </div>


          <p>Same as <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_before"><code>keep_before</code></a>,
          but keeps the part before the last occurrence of the parameter,
          rather than after the first. Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"foo.bar.txt"?keep_before_last(".")&#125;</pre></div>

          <p>will print</p>

<div style="border:1px solid green;">
${"foo.bar.txt"?keep_before_last(".")}
</div>            


          <p>while with <code class="inline-code">keep_before</code> you would get
          <code class="inline-code">foo</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_last_index_of">last_index_of</h2>


          

          <p>Returns the index within this string of the last (rightmost)
          occurrence of the specified substring. It returns the index of the
          first (leftmost) character of the substring. For example:
          <code class="inline-code">"abcabc"?last_index_of("ab")</code> will return 3. Also,
          you can specify the index to start the search from. For example,
          <code class="inline-code">"abcabc"?last_index_of("ab", 2)</code> will return 0.
          Note that the second parameter indicates the maximum index of the
          start of the substring. There is no restriction on the numerical
          value of the second parameter: if it is negative, it has the same
          effect as if it were zero, and if it is greater than the length of
          this string, it has the same effect as if it were equal to the
          length of this string. Decimal values will be truncated to
          inegers.</p>

          <p>If the 1st parameter does not occur as a substring in this
          string (before the given index, if you use the second parameter),
          then it returns -1.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_left_pad">left_pad</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.1.</p>
            </div>


          <p>If it's used with 1 parameter, then it inserts spaces on the
          beginning of the string until it reaches the length that is
          specified as the parameter. If the string is already as long or
          longer than the specified length, then it does nothing. For example,
          this:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">[$&#123;""?left_pad(5)&#125;]
[$&#123;"a"?left_pad(5)&#125;]
[$&#123;"ab"?left_pad(5)&#125;]
[$&#123;"abc"?left_pad(5)&#125;]
[$&#123;"abcd"?left_pad(5)&#125;]
[$&#123;"abcde"?left_pad(5)&#125;]
[$&#123;"abcdef"?left_pad(5)&#125;]
[$&#123;"abcdefg"?left_pad(5)&#125;]
[$&#123;"abcdefgh"?left_pad(5)&#125;]</pre></div>

          <p>will output this:</p>
          
<pre>
<div style="border:1px solid green;">
[${""?left_pad(5)}]
[${"a"?left_pad(5)}]
[${"ab"?left_pad(5)}]
[${"abc"?left_pad(5)}]
[${"abcd"?left_pad(5)}]
[${"abcde"?left_pad(5)}]
[${"abcdef"?left_pad(5)}]
[${"abcdefg"?left_pad(5)}]
[${"abcdefgh"?left_pad(5)}]
</div>                     
</pre>


          <p>If it's used with 2 parameters, then the 1st parameter means
          the same as if you were using the built-in with only 1 parameter,
          and the second parameter specifies what to insert instead of space
          characters. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">[$&#123;""?left_pad(5, "-")&#125;]
[$&#123;"a"?left_pad(5, "-")&#125;]
[$&#123;"ab"?left_pad(5, "-")&#125;]
[$&#123;"abc"?left_pad(5, "-")&#125;]
[$&#123;"abcd"?left_pad(5, "-")&#125;]
[$&#123;"abcde"?left_pad(5, "-")&#125;]</pre></div>

          <p>will output this:</p>

<pre>
<div style="border:1px solid green;">
[${""?left_pad(5, "-")}]
[${"a"?left_pad(5, "-")}]
[${"ab"?left_pad(5, "-")}]
[${"abc"?left_pad(5, "-")}]
[${"abcd"?left_pad(5, "-")}]
[${"abcde"?left_pad(5, "-")}]
</div>
</pre>


          <p>The 2nd parameter can be a string whose length is greater than
          1. Then the string will be inserted periodically, for
          example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">[$&#123;""?left_pad(8, ".oO")&#125;]
[$&#123;"a"?left_pad(8, ".oO")&#125;]
[$&#123;"ab"?left_pad(8, ".oO")&#125;]
[$&#123;"abc"?left_pad(8, ".oO")&#125;]
[$&#123;"abcd"?left_pad(8, ".oO")&#125;]</pre></div>

          <p>will output this:</p>

<pre>
<div style="border:1px solid green;">
[${""?left_pad(8, ".oO")}]
[${"a"?left_pad(8, ".oO")}]
[${"ab"?left_pad(8, ".oO")}]
[${"abc"?left_pad(8, ".oO")}]
[${"abcd"?left_pad(8, ".oO")}]
</div>
</pre>


          <p>The 2nd parameter must be a string value, and it must be at
          least 1 character long.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_length">length</h2>


          

          <p>The number of characters in the string.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_lower_case">lower_case</h2>


          

          <p>The lower case version of the string. For example
          <code class="inline-code">"GrEeN MoUsE"?lower_case</code> will be <code class="inline-code">"green
          mouse"</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_matches">matches</h2>


          

          <p>This is a "power user" built-in. Ignore it if you
          don't know <a href="gloss.html#gloss.regularExpression">regular
          expressions</a>.</p>

          <p>This built-in determines if the string exactly matches the
          pattern. Also, it returns the list of matching sub-strings. The
          return value is a multi-type value:</p>

          <ul>
            <li>
              <p>Boolean: <code class="inline-code">true</code>, if it the entire string
              matches the pattern, otherwise <code class="inline-code">false</code>. For
              example, <code class="inline-code">"fooo"?matches('fo*')</code> is
              <code class="inline-code">true</code>, but
              <code class="inline-code">"fooo&nbsp;bar"?matches('fo*')</code> is
              <code class="inline-code">false</code>.</p>
            </li>

            <li>
              <p>Sequence: the list of matched substrings of the string.
              Possibly a 0 length sequence.</p>
            </li>
          </ul>

          <p>For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#if "fxo"?matches("f.?o")&gt;Matches.&lt;#else&gt;Does not match.&lt;/#if&gt;

&lt;#assign res = "foo bar fyo"?matches("f.?o")&gt;
&lt;#if res&gt;Matches.&lt;#else&gt;Does not match.&lt;/#if&gt;
Matching sub-strings:
&lt;#list res as m&gt;
- $&#123;m&#125;
&lt;/#list&gt;</pre></div>

          <p>will print:</p>

<pre>
<div style="border:1px solid green;">
<#if "fxo"?matches("f.?o")>Matches.<#else>Does not match.</#if>

<#assign res = "foo bar fyo"?matches("f.?o")>
<#if res>Matches.<#else>Does not match.</#if>
Matching sub-strings:
<#list res as m>
- ${m}
</#list>
</div>
</pre>          


          <p>If the regular expression contains groups (parentheses), then
          you can access them with the <code class="inline-code">groups</code>
          built-in:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#-- Entire input match --&gt;
&lt;#assign res = "John Doe"?matches(r"(\w+) (\w+)")&gt;
&lt;#if res&gt; &lt;#-- Must not try to access groups if there was no match! --&gt;
  First name: $&#123;res?groups[1]&#125;
  Second name: $&#123;res?groups[2]&#125;
&lt;/#if&gt;

&lt;#-- Subtring matches --&gt;
&lt;#assign res = "aa/rx; ab/r;"?matches("(.+?)/*(.+?);")&gt;
&lt;#list res as m&gt;
  - "$&#123;m&#125;" is "$&#123;m?groups[1]&#125;" per "$&#123;m?groups[2]&#125;"
&lt;/#list&gt;</pre></div>

          <p>This will print:</p>

<pre>
<div style="border:1px solid green;">
<#-- Entire input match -->
<#assign res = "John Doe"?matches(r"(\w+) (\w+)")>
<#if res> <#-- Must not try to access groups if there was no match! -->
  First name: ${res?groups[1]}
  Second name: ${res?groups[2]}
</#if>

<#-- Subtring matches -->
<#assign res = "aa/rx; ab/r;"?matches("(.+?)/*(.+?);")>
<#list res as m>
  - "${m}" is "${m?groups[1]}" per "${m?groups[2]}"
</#list>
</div>
</pre>           


          <p>Notes regarding the behavior of the <code class="inline-code">groups</code>
          built-in:</p>

          <ul>
            <li>
              <p>It works both with substring matches and with the result
              of entire string matching (as it was shown in the above
              example)</p>
            </li>

            <li>
              <p>The first item in the sequence that
              <code class="inline-code">groups</code> returns is the whole substring matched
              by the regular expression. Hence, the index of the first
              explicit regular expression group (with other words, of the
              first <code class="inline-code">(<em class="code-color">...</em>)</code> in the
              regular expression) is 1, and not 0. Also, because of this, the
              size of the sequence is one more than the number of explicit
              regular expression groups.</p>
            </li>

            <li>
              <p>The size of the sequence returned by
              <code class="inline-code">groups</code> only depends on the number of explicit
              groups in the regular expression, and so it will be the same
              (non-0) even if there was no match found for the regular
              expression. Attempting to access an item of the sequence (as in
              <code class="inline-code">res?groups[1]</code>) when there was match will
              cause an error. Thus, before accessing the groups, you should
              always check if there was any match (as in <code class="inline-code">&lt;#if
              res&gt;<em class="code-color">access the groups
              here</em>&lt;/#if&gt;</code>).</p>
            </li>

            <li>
              <p>When there's a match for the regular expression, but not
              for a certain explicit group inside the regular expression, then
              for that group the sequence will contain a 0 length string. So
              accessing a group that matches nothing is safe, as far as the
              containing regular expression has matched something.</p>
            </li>
          </ul>

          <p><code class="inline-code">matches</code> accepts an optional 2nd parameter,
          the <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_flags">flags</a>. Note that
          it doesn't support flag <code class="inline-code">f</code>, and ignores the
          <code class="inline-code">r</code> flag.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_no_esc">no_esc</h2>


          <p></p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.24.</p>
            </div>


          <p>Prevents the <a href="dgui_misc_autoescaping.html">auto-escaping</a> of a value.
          For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#ftl output_format="HTML"&gt;
&lt;#assign s = "&lt;b&gt;Test&lt;/b&gt;"&gt;
$&#123;s&#125;
$&#123;s?esc&#125;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">&amp;lt;b&amp;gt;Test&amp;lt;/b&amp;gt;
&lt;b&gt;Test&lt;/b&gt;</pre></div>

          <p>This works by converting the string value to a <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup output
          value</a>, which uses the string as the markup as is, and belongs
          to the current <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_outputformat">output format</a>
          at the point of the invocation.</p>

          <p>This built-in can also be applied on markup output values,
          which it will bypass without change, as far as the input markup
          output value belongs to current output format. If it doesn't, then
          the markup has to be converted to the current output format, which
          currently (as of 2.3.24) will be only successful if that value was
          created by escaping plain text (usually, with
          <code class="inline-code">?esc</code>).</p>

          <p>This built-in can't be used where the current output format is
          a <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_nonmarkupof">non-markup
          output format</a>. An attempt to do so will cause a <a href="gloss.html#gloss.parseTimeError">parse-time error</a>.</p>

          <p>This built-in is not related to the deprecated <a href="ref_directive_escape.html"><code>escape</code> and
          <code>noescape</code> directives</a>. In fact, the parser
          will prevent using them on the same place, to prevent
          confusion.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_number">number</h2>


          

          

          

          

          

          

          <p>The string converted to numerical value. The number must be in
          "computer language" format. That is, it must be in the
          locale independent form, where the decimal separator is dot, and
          there's no grouping.</p>

          <p>This built-in recognizes numbers in the format that the
          FreeMarker template language uses. In additionally, it recognizes
          scientific notation (e.g. <code class="inline-code">"1.23E6"</code>,
          <code class="inline-code">"1.5e-8"</code>). Since FreeMarker 2.3.21, it also
          recognizes all XML Schema number formats, like
          <code class="inline-code">NaN</code>, <code class="inline-code">INF</code>,
          <code class="inline-code">-INF</code>, plus the Java-native formats
          <code class="inline-code">Infinity</code> and <code class="inline-code">-Infinity</code>.</p>

          <p>If the string is not in the appropriate format, an error will
          abort template processing when you try to access this
          built-in.</p>

          <p><span class="marked-for-programmers">In fact, the string is parsed by
          the <code class="inline-code">toNumber</code> method of the current
          <code class="inline-code">arithmetic_engine</code>, which is configuration
          setting. However, that method should behave similarly as described
          above.</span></p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_replace">replace</h2>


          

          <p>It is used to replace all occurrences of a string in the
          original string with another string. It does not deal with word
          boundaries. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"this is a car acarus"?replace("car", "bulldozer")&#125;</pre></div>

          <p>will print:</p>

<pre>
<div style="border:1px solid green;">
${"this is a car acarus"?replace("car", "bulldozer")}
</div>
</pre>            


          <p>The replacing occurs in left-to-right order. This means that
          this:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"aaaaa"?replace("aaa", "X")&#125;</pre></div>

          <p>will print:</p>

          

<div class="code-wrapper"><pre class="code-block code-output">Xaa</pre></div>

          <p>If the 1st parameter is an empty string, then all occurrences
          of the empty string will be replaced, like
          <code class="inline-code">"foo"?replace("","|")</code> will evaluate to
          <code class="inline-code">"|f|o|o|"</code>.</p>

          <p><code class="inline-code">replace</code> accepts an optional <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_flags">flags parameter</a>, as its
          3rd parameter.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_right_pad">right_pad</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.1. It
            doesn't exist in 2.3.</p>
            </div>


          <p>This is the same as <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_left_pad"><code>left_pad</code></a>,
          but it inserts the characters at the end of the string instead of
          the beginning of the string.</p>

          <p>Example:</p>

            

<div class="code-wrapper"><pre class="code-block code-template">[$&#123;""?right_pad(5)&#125;]
[$&#123;"a"?right_pad(5)&#125;]
[$&#123;"ab"?right_pad(5)&#125;]
[$&#123;"abc"?right_pad(5)&#125;]
[$&#123;"abcd"?right_pad(5)&#125;]
[$&#123;"abcde"?right_pad(5)&#125;]
[$&#123;"abcdef"?right_pad(5)&#125;]
[$&#123;"abcdefg"?right_pad(5)&#125;]
[$&#123;"abcdefgh"?right_pad(5)&#125;]

[$&#123;""?right_pad(8, ".oO")&#125;]
[$&#123;"a"?right_pad(8, ".oO")&#125;]
[$&#123;"ab"?right_pad(8, ".oO")&#125;]
[$&#123;"abc"?right_pad(8, ".oO")&#125;]
[$&#123;"abcd"?right_pad(8, ".oO")&#125;]</pre></div>

          <p>This will output this:</p>

<pre>
<div style="border:1px solid green;">
[${""?right_pad(5)}]
[${"a"?right_pad(5)}]
[${"ab"?right_pad(5)}]
[${"abc"?right_pad(5)}]
[${"abcd"?right_pad(5)}]
[${"abcde"?right_pad(5)}]
[${"abcdef"?right_pad(5)}]
[${"abcdefg"?right_pad(5)}]
[${"abcdefgh"?right_pad(5)}]

[${""?right_pad(8, ".oO")}]
[${"a"?right_pad(8, ".oO")}]
[${"ab"?right_pad(8, ".oO")}]
[${"abc"?right_pad(8, ".oO")}]
[${"abcd"?right_pad(8, ".oO")}]
</div>
</pre>           

          



<h2 class="content-header header-section2" id="ref_builtin_remove_beginning">remove_beginning</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.21.</p>
            </div>


          <p>Removes the parameter substring from the beginning of the
          string, or returns the original string if it doesn't start with the
          parameter substring. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"abcdef"?remove_beginning("abc")&#125;
$&#123;"foobar"?remove_beginning("abc")&#125;</pre></div>

          <p>will print:</p>

<pre>
<div style="border:1px solid green;">
${"abcdef"?remove_beginning("abc")}
${"foobar"?remove_beginning("abc")}
</div>
</pre>            

          



<h2 class="content-header header-section2" id="ref_builtin_remove_ending">remove_ending</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.21.</p>
            </div>


          <p>Removes the parameter substring from the ending of the string,
          or returns the original string if it doesn't end with the parameter
          substring. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;"abcdef"?remove_ending("def")&#125;
$&#123;"foobar"?remove_ending("def")&#125;</pre></div>

          <p>will print:</p>

<pre>
<div style="border:1px solid green;">
${"abcdef"?remove_ending("def")}
${"foobar"?remove_ending("def")}
</div>
</pre>            

          



<h2 class="content-header header-section2" id="ref_builtin_rtf">rtf (deprecated)</h2>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is <em>deprecated</em> by the
            <a href="dgui_misc_autoescaping.html">auto-escaping
            mechanism</a> introduced in 2.3.24. To prevent double escaping
            and confusion in general, using this built-in on places where
            auto-escaping is active is a <a href="gloss.html#gloss.parseTimeError">parse-time error</a>. To help
            migration, this built-in silently bypasses RTF <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup output
            values</a> without changing them.</p>
            </div>


          

          

          <p>The string as Rich text (RTF text). That is, the string with
          all:</p>

          <ul>
            <li>
              <p><code class="inline-code">\</code> replaced with
              <code class="inline-code">\\</code></p>
            </li>

            <li>
              <p><code class="inline-code">&#123;</code> replaced with
              <code class="inline-code">\&#123;</code></p>
            </li>

            <li>
              <p><code class="inline-code">&#125;</code> replaced with
              <code class="inline-code">\&#125;</code></p>
            </li>
          </ul>
        
          



<h2 class="content-header header-section2" id="ref_builtin_split">split</h2>


          

          <p>It is used to split a string into a sequence of strings along
          the occurrences of another string. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list "someMOOtestMOOtext"?split("MOO") as x&gt;
- $&#123;x&#125;
&lt;/#list&gt;</pre></div>

          <p>will print:</p>

<pre>
<div style="border:1px solid green;">
<#list "someMOOtestMOOtext"?split("MOO") as x>
- ${x}
</#list>
</div>
</pre>             

          <p>Note that it is assumed that all occurrences of the separator
          is before a new item (except with <code class="inline-code">"r"</code> flag - see
          later), thus:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list "some,,test,text,"?split(",") as x&gt;
- "$&#123;x&#125;"
&lt;/#list&gt;</pre></div>

          <p>will print:</p>

          
<pre>
<div style="border:1px solid green;">
<#list "some,,test,text,"?split(",") as x>
- "${x}"
</#list>
</div>
</pre>

          <p><code class="inline-code">split</code> accepts an optional <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_string_flags">flags parameter</a>, as its
          2nd parameter. There's a historical glitch with the
          <code class="inline-code">r</code> (regular expression) flag; it removes the empty
          elements from the end of the resulting list, so with
          <code class="inline-code">?split(",", "r")</code> in the last example the last
          <code class="inline-code">""</code> would be missing from the output.</p>

          <p>If the 1st parameter is an empty string, the string will be
          split to characters (since FreeMarker 2.3.28 - earlier this has only
          worked with the <code class="inline-code">r</code> flag).</p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>To check if a strings ends with something and append it
            otherwise, use <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_ensure_ends_with">the
            <code>ensure_ends_with</code> built-in</a>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_starts_with">starts_with</h2>


          

          <p>Returns if this string starts with the specified substring.
          For example <code class="inline-code">"redirect"?starts_with("red")</code> returns
          boolean <code class="inline-code">true</code>. Also,
          <code class="inline-code">"red"?starts_with("red")</code> will return
          <code class="inline-code">true</code>.</p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>To check if a strings starts with something and prepend it
            otherwise, use <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_ensure_starts_with">the
            <code>ensure_starts_with</code> built-in</a>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_string_for_string">string (when used with a string value)</h2>


          <p>Does nothing, just returns the string as-is. The exception is
          that if the value is a multi-type value (e.g. it is both string and
          sequence at the same time), then the resulting value will be only a
          simple string, not a multi-type value. This can be utilized to
          prevent the artifacts of multi-typing.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_substring">substring (deprecated)</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is deprecated since FreeMarker 2.3.21 by <a href="dgui_template_exp.html#dgui_template_exp_stringop_slice">slicing
            expressions</a>, like
            <code class="inline-code"><em class="code-color">str</em>[<em class="code-color">from</em>..&lt;<em class="code-color">toExclusive</em>]</code>,
            <code class="inline-code"><em class="code-color">str</em>[<em class="code-color">from</em>..]</code>,
            and
            <code class="inline-code"><em class="code-color">str</em>[<em class="code-color">from</em>..*<em class="code-color">maxLength</em>]</code>.</p>

            <p>A warning if you are processing XML: Since slicing
            expressions work both for sequences and strings, and since XML
            nodes are typically both sequences and strings at the same time,
            there the equivalent expression is
            <code class="inline-code"><em class="code-color">someXmlNode</em>?string[<em class="code-color">from</em>..&lt;<em class="code-color">toExclusive</em>]</code>
            and
            <code class="inline-code"><em class="code-color">exp</em>?string[<em class="code-color">from</em>..]</code>,
            as without <code class="inline-code">?string</code> it would slice the node
            sequence instead of the text value of the node.</p>
            </div>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>Some of the typical use-cases of string slicing is covered
            by convenient built-ins: <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_remove_beginning"><code>remove_beginning</code></a>,
            <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_remove_ending"><code>remove_ending</code></a>,
            <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_before"><code>keep_before</code></a>,
            <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_after"><code>keep_after</code></a>,
            <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_before_last"><code>keep_before_last</code></a>,
            <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_keep_after_last"><code>keep_after_last</code></a></p>
            </div>


          <p>Synopsis:
          <code class="inline-code"><em class="code-color">exp</em>?substring(<em class="code-color">from</em>,
          <em class="code-color">toExclusive</em>)</code>, also callable as
          <code class="inline-code"><em class="code-color">exp</em>?substring(<em class="code-color">from</em>)</code></p>

          <p>A substring of the string.
          <code class="inline-code"><em class="code-color">from</em></code> is the index of
          the first character. It must be a number that is at least 0 and less
          than or equal with
          <code class="inline-code"><em class="code-color">toExclusive</em></code>, or else
          an error will abort the template processing. The
          <code class="inline-code"><em class="code-color">toExclusive</em></code> is the
          index of the character position after the last character of the
          substring, or with other words, it is one greater than the index of
          the last character. It must be a number that is at least 0 and less
          than or equal to the length of the string, or else an error will
          abort the template processing. If the
          <code class="inline-code"><em class="code-color">toExclusive</em></code> is
          omitted, then it defaults to the length of the string. If a
          parameter is a number that is not an integer, only the integer part
          of the number will be used.</p>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">- $&#123;'abc'?substring(0)&#125;
- $&#123;'abc'?substring(1)&#125;
- $&#123;'abc'?substring(2)&#125;
- $&#123;'abc'?substring(3)&#125;

- $&#123;'abc'?substring(0, 0)&#125;
- $&#123;'abc'?substring(0, 1)&#125;
- $&#123;'abc'?substring(0, 2)&#125;
- $&#123;'abc'?substring(0, 3)&#125;

- $&#123;'abc'?substring(0, 1)&#125;
- $&#123;'abc'?substring(1, 2)&#125;
- $&#123;'abc'?substring(2, 3)&#125;</pre></div>

          <p>The output:</p>

<pre>          
<div style="border:1px solid green;">
- ${'abc'?substring(0)}
- ${'abc'?substring(1)}
- ${'abc'?substring(2)}
- ${'abc'?substring(3)}

- ${'abc'?substring(0, 0)}
- ${'abc'?substring(0, 1)}
- ${'abc'?substring(0, 2)}
- ${'abc'?substring(0, 3)}

- ${'abc'?substring(0, 1)}
- ${'abc'?substring(1, 2)}
- ${'abc'?substring(2, 3)}
</div>
</pre>          
          



<h2 class="content-header header-section2" id="ref_builtin_trim">trim</h2>


          

          <p>The string without leading and trailing white-space.
          Example:</p>

         

<div class="code-wrapper"><pre class="code-block code-template">($&#123;"  green mouse  "?trim&#125;)</pre></div>

          <p>The output:</p>

<pre>          
<div style="border:1px solid green;">
(${"  green mouse  "?trim})

</div>
</pre>           

        
          



<h2 class="content-header header-section2" id="ref_builtin_truncate">truncate, truncate_...</h2>


          

          

          

          

          

          

          <p>Cuts off the end of a string if that's necessary to keep it
          under a the length given as parameter, and appends a terminator
          string (<code class="inline-code">[...]</code> by default) to indicate that the
          string was truncated. Example (assuming default FreeMarker
          configuration settings):</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign shortName='This is short'&gt;
&lt;#assign longName='This is a too long name'&gt;
&lt;#assign difficultName='This isoneveryverylongword'&gt;

No truncation needed:
$&#123;shortName?truncate(16)&#125; 

Truncated at word boundary:
$&#123;longName?truncate(16)&#125;

Truncated at "character boundary":
$&#123;difficultName?truncate(16)&#125;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">No truncation needed:
This is short

Truncated at word boundary:
This is a [...]

Truncated at "character boundary":
This isonev[...]</pre></div>

          <p>Things to note above:</p>

          <ul>
            <li>
              <p>The string is returned as is if its length doesn't exceed
              the specified length (16 in this case).</p>
            </li>

            <li>
              <p>When the string exceeded that length, its end was cut off
              in a way so that together with the added terminator string
              (<code class="inline-code">[...]</code> here) its length won't exceed 16. The
              result length is possibly shorter than 16, for the sake of
              better look (see later). Actually, the result length can also be
              longer than the parameter length, when the desired length is
              shorter than the terminator string alone, in which case the
              terminator is still returned as is. Also, an algorithms other
              than the default might choses to return a longer string, as the
              length parameter is in principle just hint for the desired
              visual length.</p>
            </li>

            <li>
              <p><code class="inline-code">truncate</code> prefers cutting at word
              boundary, rather than mid-word, however, if doing so would give
              a result that's shorter than the 75% of the length specified
              with the argument, it falls back to cut mid-word. In the last
              line of the above example, "This [...]" would be
              too short (11 &lt; 16 * 75%), so it was cut mid-word
              instead.</p>
            </li>

            <li>
              <p>If the cut happened at word boundary, there's a space
              between the word end and the terminator string, otherwise
              there's no space between them. Only whitespace is treated as
              word separator, not punctuation, so this generally gives
              intuitive results.</p>
            </li>
          </ul>

          
            



<h3 class="content-header header-simplesect" id="autoid_76">Adjusting truncation rules</h3>


            <p>Truncation rules are highly configurable by setting the
            <code class="inline-code">truncate_builtin_algorithm</code> configuration
            setting. This can be done by the programmers, not template
            authors, so for more details and examples please see the JavaDoc
            of <a href="api/freemarker/core/Configurable.html#setTruncateBuiltinAlgorithm-freemarker.core.TruncateBuiltinAlgorithm-">Configurable.setTruncateBuiltinAlgorithm</a>.</p>

            <p>Truncation rules can also be influenced right in the
            template to a smaller extent:</p>

            <ul>
              <li>
                <p>Specifying if the truncation should happen at word
                boundary or not:</p>

                <ul>
                  <li>
                    <p><code class="inline-code">truncate_w</code> will always truncate
                    at word boundary. For example,
                    <code class="inline-code">difficultName?truncate_w(16)</code> returns
                    "This [...]", rather than "This
                    isonev[...]" (as saw in earlier example).</p>
                  </li>

                  <li>
                    <p><code class="inline-code">truncate_c</code> will truncate at any
                    character, not just at word ends. For example,
                    <code class="inline-code">longName?truncate_c(16)</code> returns
                    "This is a t[...]", rather than "This
                    is a [...]" (as saw in earlier example). This tends
                    to give a string length closer to the length specified,
                    but still not an exact length, as it removes white-space
                    before the terminator string, and re-adds a space if we
                    are just after the end of a word, etc.</p>
                  </li>
                </ul>
              </li>

              <li>
                <p>Specifying the terminator string (instead of relying on
                its default): <code class="inline-code">truncate</code> and all
                <code class="inline-code">truncate_<em class="code-color">...</em></code>
                built-ins have an additional optional parameter for it. After
                that, a further optional parameter can specify the assumed
                length of the terminator string (otherwise its real length
                will be used). If you find yourself specifying the terminator
                string often, then certainly the defaults should be configured
                instead (via <code class="inline-code">truncate_builtin_algorithm
                configuration</code> - see earlier). Example:</p>

                

<div class="code-wrapper"><pre class="code-block code-template">$&#123;longName?truncate(16, '...')&#125;
$&#123;longName?truncate(16, '...', 1)&#125;</pre></div>

                

<div class="code-wrapper"><pre class="code-block code-output">This is a ...
This is a too ...</pre></div>

                <p>When the terminator string starts with dot
                (<code class="inline-code">.</code>) or ellipsis (<code class="inline-code">…</code>), the
                default algorithm will remove the dots and ellipses that the
                terminator touches, to prevent ending up with more than 3 dots
                at the end:</p>

                

<div class="code-wrapper"><pre class="code-block code-template">$&#123;'Foo bar.baaz'?truncate(11, '---')&#125;
$&#123;'Foo bar.baaz'?truncate(11, '...')&#125; (Not "Foo bar....")
$&#123;'Fo bar. baaz'?truncate(11, '...')&#125; (Word separator space prevents touching)</pre></div>

                

<div class="code-wrapper"><pre class="code-block code-output">Foo bar.---
Foo bar... (Not "Foo bar....")
Fo bar. ... (Word separator space prevents touching)</pre></div>
              </li>
            </ul>
          

          
            



<h3 class="content-header header-simplesect" id="autoid_77">Using markup as terminator string</h3>


            <p>Each truncation built-in has a variation whose name ends
            with <code class="inline-code">_m</code> (for markup). These allow using markup
            (like HTML) as terminator, which is useful if you want the
            terminator to be styled differently than the truncated text. By
            default the markup terminator is <code class="inline-code">&lt;span
            class='truncateTerminator'&gt;[&amp;#8230;]&lt;/span&gt;</code>,
            (where <code class="inline-code">&amp;#8230;</code> prints an ellipsis
            character), but of course this can be changed with the
            <code class="inline-code">truncate_builtin_algorithm</code> configuration
            setting (see earlier). Example (see the variables used in earlier
            example):</p>

            

<div class="code-wrapper"><pre class="code-block code-template">$&#123;longName?truncate_m(16)&#125;
$&#123;difficultName?truncate_w_m(16)&#125;
$&#123;longName?truncate_c_m(16)&#125;</pre></div>

            

<div class="code-wrapper"><pre class="code-block code-output">This is a &lt;span class='truncateTerminator'&gt;[&amp;#8230;]&lt;/span&gt;
This &lt;span class='truncateTerminator'&gt;[&amp;#8230;]&lt;/span&gt;
This is a to&lt;span class='truncateTerminator'&gt;[&amp;#8230;]&lt;/span&gt;</pre></div>

            <p>Note above that the terminator string was considered to be
            only 3 characters long (<code class="inline-code">'['</code>,
            <code class="inline-code">'…'</code>, <code class="inline-code">']'</code>) by the truncation
            built-ins, because inside the terminator string they only count
            the characters outside HTML/XML tags and comments, and they can
            also interpret numeric character references (but not other entity
            references). (The same applies when they decide if the terminator
            starts with dot or ellipsis; preceding tags/comments are skipped,
            etc.)</p>

            <p>If a markup terminator is used (like above), the return
            value of the
            <code class="inline-code">truncate<em class="code-color">...</em>_m</code>
            built-in will be markup as well, which means that <a href="dgui_misc_autoescaping.html">auto-escaping</a> won't escape
            it. Of course, the content of the truncated string itself will be
            still auto-escaped:</p>

            

<div class="code-wrapper"><pre class="code-block code-template">&lt;#ftl output_format='HTML'&gt;
$&#123;'This is auto-escaped: &lt;span&gt;'&#125;
$&#123;'This is auto-escaped: &lt;span&gt;, but not the terminator string'?truncate_m(41)&#125;</pre></div>

            

<div class="code-wrapper"><pre class="code-block code-output">This is auto-escaped: &amp;lt;span&amp;gt;
This is auto-escaped: &amp;lt;span&amp;gt;, but not &lt;span class='truncateTerminator'&gt;[&amp;#8230;]&lt;/span&gt;</pre></div>
          
        
          



<h2 class="content-header header-section2" id="ref_builtin_uncap_first">uncap_first</h2>


          

          <p>The opposite of <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_cap_first"><code>cap_first</code></a>.
          The string with the very first word of the string
          un-capitalized.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_upper_case">upper_case</h2>


          

          <p>The upper case version of the string. For example
          <code class="inline-code">"GrEeN MoUsE"</code> will be <code class="inline-code">"GREEN
          MOUSE"</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_url">url</h2>


          

          

          

          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.1. It
            doesn't exist in 2.3.</p>
            </div>


          <p>The string after URL escaping. This means that all
          non-US-ASCII and reserved URL characters will be escaped with
          <code class="inline-code">%<em class="code-color">XX</em></code>. For
          example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign x = 'a/b c'&gt;
$&#123;x?url&#125;</pre></div>

          <p>The output will be (assuming that the charset used for the
          escaping is an US-ASCII compatible charset):</p>

          

<div class="code-wrapper"><pre class="code-block code-output">a%2Fb%20c</pre></div>

          <p>Note that it escapes <em>all</em> reserved URL
          characters (<code class="inline-code">/</code>, <code class="inline-code">=</code>,
          <code class="inline-code">&amp;</code>, ...etc), so this encoding can be used for
          encoding query parameter values, for example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;a href="foo.cgi?x=$&#123;x?url&#125;&amp;y=$&#123;y?url&#125;"&gt;Click here...&lt;/a&gt;</pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>Above no HTML encoding (<code class="inline-code">?html</code>) was
            needed, because URL escaping escapes all reserved HTML characters
            anyway. But watch: always quote the attribute value, and always
            with normal quotation mark (<code class="inline-code">"</code>), never with
            apostrophe quotation mark (<code class="inline-code">'</code>), because
            apostrophe quotation mark is not escaped by the URL
            escaping.</p>
            </div>


          <p>To do URL escaping a <a href="gloss.html#gloss.charset">charset</a> must be chosen that will be
          used for calculating the escaped parts
          (<code class="inline-code">%<em class="code-color">XX</em></code>). If you are HTML
          page author and you don't really understand this, don't worry: the
          programmers should configure FreeMarker so that it uses the proper
          charset by default (<span class="marked-for-programmers">programmers: see
          more below...</span>). If you are a more technical minded user,
          then you may want to know that the charset used is specified by the
          <code class="inline-code">url_escaping_charset</code> setting, that can be set in
          template execution time (or, preferably, earlier by the
          programmers). For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#--
  This will use the charset specified by the programmers
  before the template execution has started.
--&gt;
&lt;a href="foo.cgi?x=$&#123;x?url&#125;"&gt;foo&lt;/a&gt;

&lt;#-- Use UTF-8 charset for URL escaping from now: --&gt;
<strong>&lt;#setting url_escaping_charset="UTF-8"&gt;</strong>

&lt;#-- This will surely use UTF-8 charset --&gt;
&lt;a href="bar.cgi?x=$&#123;x?url&#125;"&gt;bar&lt;/a&gt;</pre></div>

          <p>Furthermore, you can explicitly specify a charset for a single
          URL escaping as the parameter to the built-in:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;a href="foo.cgi?x=$&#123;x?url<strong>('ISO-8895-2')</strong>&#125;"&gt;foo&lt;/a&gt;</pre></div>

          <p><span class="marked-for-programmers">If the <code class="inline-code">url</code> built-in has no
          parameter, then it will use the charset specified as the value of
          the <code class="inline-code">url_escaping_charset</code> setting. This setting
          should be set by the software that encloses FreeMarker (e.g. a Web
          application framework), because it is not set
          (<code class="inline-code">null</code>) by default. If it is not set, then
          FreeMarker falls back using the value of the
          <code class="inline-code">output_encoding</code> setting, which is also not set by
          default, so it is again the task of the enclosing software. If the
          <code class="inline-code">output_encoding</code> setting is not set either, then
          the parameterless <code class="inline-code">url</code> built-in can't be executed,
          and it will cause execution time error. Of course, the
          <code class="inline-code">url</code> built-in with parameter always
          works.</span></p>

          <p><span class="marked-for-programmers">It's possible to set
          <code class="inline-code">url_escaping_charset</code> in the template with the
          <code class="inline-code">setting</code> directive, but it is bad practice, at
          least in true MVC applications. The
          <code class="inline-code">output_encoding</code> setting can't be set with the
          <code class="inline-code">setting</code> directive, so that's surely the task of
          the enclosing software. You may find more information regarding this
          <a href="pgui_misc_charset.html">here...</a></span></p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_url_path">url_path</h2>


          

          

          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.21.</p>
            </div>


          <p>This is the same as <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_url">the
          <code>url</code> built-in</a>, except that it doesn't
          escape slash (<code class="inline-code">/</code>) characters. This meant to be
          used for converting paths (like paths coming from the OS or some
          content repository) that use slash (not backslash!) to a path the
          can be inserted into an URL. The most common reason why this
          conversion is needed is that folder names or file names might
          contain non-US-ASCII letters ("national"
          characters).</p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>Just like with <a href="https://freemarker.apache.org/docs/ref_builtins_string.html#ref_builtin_url">the
            <code>url</code> built-in</a>, the desired URL escaping
            charset (or as a fall back, the output encoding) must be set in
            the FreeMarker configuration settings, or else the built-in will
            give error. Or, you you have to specify the charset like
            <code class="inline-code">somePath?url_path('utf-8')</code>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_word_list">word_list</h2>


          

          <p>A sequence that contains all words of the string in the order
          as they appear in the string. Words are continual character
          sequences that contain any character but <a href="gloss.html#gloss.whiteSpace">white-space</a>. Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign words = "   a bcd, .   1-2-3"?word_list&gt;
&lt;#list words as word&gt;[$&#123;word&#125;]&lt;/#list&gt;</pre></div>

          <p>will output:</p>

<pre>          
<div style="border:1px solid green;">
<#assign words = "   a bcd, .   1-2-3"?word_list>
<#list words as word>[${word}]</#list>
</div>
</pre>           

        
          



<h2 class="content-header header-section2" id="ref_builtin_xhtml">xhtml (deprecated)</h2>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is <em>deprecated</em> by the
            <a href="dgui_misc_autoescaping.html">auto-escaping
            mechanism</a> introduced in 2.3.24. To prevent double escaping
            and confusion in general, using this built-in on places where
            auto-escaping is active is a <a href="gloss.html#gloss.parseTimeError">parse-time error</a>. To help
            migration, this built-in silently bypasses HTML <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup output
            values</a> without changing them.</p>
            </div>


          

          

          <p>The string as XHTML text. That is, the string with all:</p>

          <ul>
            <li>
              <code class="inline-code">&lt;</code> replaced with
              <code class="inline-code">&amp;lt;</code>
            </li>

            <li>
              <code class="inline-code">&gt;</code> replaced with
              <code class="inline-code">&amp;gt;</code>
            </li>

            <li>
              <code class="inline-code">&amp;</code> replaced with
              <code class="inline-code">&amp;amp;</code>
            </li>

            <li>
              <code class="inline-code">"</code> replaced with
              <code class="inline-code">&amp;quot;</code>
            </li>

            <li>
              <code class="inline-code">'</code> replaced with
              <code class="inline-code">&amp;#39;</code>
            </li>
          </ul>

          <p>The only difference between this built-in and the
          <code class="inline-code">xml</code> built-in is that the <code class="inline-code">xhtml</code>
          built-in escapes <code class="inline-code">'</code> as
          <code class="inline-code">&amp;#39;</code> instead of as
          <code class="inline-code">&amp;apos;</code>, because some older browsers don't
          know <code class="inline-code">&amp;apos;</code>.</p>

            <div class="callout warning">
    <strong class="callout-label">Warning!</strong>

            <p>When inserting the value of an attribute, always quote it,
            or else it can be exploited by attacker! This is WRONG:
            <code class="inline-code">&lt;input name="user" value=$&#123;user?xhtml&#125;/&gt;</code>.
            These are good: <code class="inline-code">&lt;input name="user"
            value="$&#123;user?xhtml&#125;"/&gt;</code>, <code class="inline-code">&lt;input
            name="user" value='$&#123;user?xhtml&#125;'/&gt;</code>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_xml">xml (deprecated)</h2>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is <em>deprecated</em> by the
            <a href="dgui_misc_autoescaping.html">auto-escaping
            mechanism</a> introduced in 2.3.24. To prevent double escaping
            and confusion in general, using this built-in on places where
            auto-escaping is active is a <a href="gloss.html#gloss.parseTimeError">parse-time error</a>. To help
            migration, this built-in silently bypasses XML and HTML <a href="dgui_misc_autoescaping.html#dgui_misc_autoescaping_movalues">markup output
            values</a> without changing them.</p>
            </div>


          

          

          <p>The string as XML text. That is, the string with all:</p>

          <ul>
            <li>
              <code class="inline-code">&lt;</code> replaced with
              <code class="inline-code">&amp;lt;</code>
            </li>

            <li>
              <code class="inline-code">&gt;</code> replaced with
              <code class="inline-code">&amp;gt;</code>
            </li>

            <li>
              <code class="inline-code">&amp;</code> replaced with
              <code class="inline-code">&amp;amp;</code>
            </li>

            <li>
              <code class="inline-code">"</code> replaced with
              <code class="inline-code">&amp;quot;</code>
            </li>

            <li>
              <code class="inline-code">'</code> replaced with
              <code class="inline-code">&amp;apos;</code>
            </li>
          </ul>

            <div class="callout warning">
    <strong class="callout-label">Warning!</strong>

            <p>When inserting the value of an attribute, always quote it,
            or else it can be exploited by attackers! This is WRONG:
            <code class="inline-code">&lt;input name="user" value=$&#123;user?xml&#125;/&gt;</code>.
            These are good: <code class="inline-code">&lt;input name="user"
            value="$&#123;user?xml&#125;"/&gt;</code>, <code class="inline-code">&lt;input name="user"
            value='$&#123;user?xml&#125;'/&gt;</code>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_string_flags">Common flags</h2>


          <p>Many string built-ins accept an optional string parameter, the
          so called "flags". In this string, each letter
          influences a certain aspect of the behavior of the built-in. For
          example, letter <code class="inline-code">i</code> means that the built-in should
          not differentiate the lower and upper-case variation of the same
          letter. The order of the letters in the flags string is not
          significant.</p>

          <p>This is the complete list of letters (flags):</p>

          <ul>
            <li>
              <p><code class="inline-code">i</code>: Case insensitive: do not
              differentiate the lower and upper-case variation of the same
              letter.</p>
            </li>

            <li>
              <p><code class="inline-code">f</code>: First only. That is,
              replace/find/etc. only the first occurrence of something.</p>
            </li>

            <li>
              <p> <code class="inline-code">r</code>: The substring to find is a
              <a href="gloss.html#gloss.regularExpression">regular
              expression</a>. FreeMarker uses the variation of regular
              expressions described at <a href="http://docs.oracle.com/javase/7/docs/api/java/util/regex/Pattern.html">http://docs.oracle.com/javase/7/docs/api/java/util/regex/Pattern.html</a>
              (note that the presence of some pattern features depends on the
              Java version used).</p>
            </li>

            <li>
              <p><code class="inline-code">m</code>: Multi-line mode for regular
              expressions. In multi-line mode the expressions
              <code class="inline-code">^</code> and <code class="inline-code">$</code> match just after
              or just before, respectively, a line terminator or the end of
              the string. By default these expressions only match at the
              beginning and the end of the entire string. Note that
              <code class="inline-code">^</code> and <code class="inline-code">$</code> doesn't match the
              line-break character itself.</p>
            </li>

            <li>
              <p><code class="inline-code">s</code>: Enables dot-all mode for regular
              expressions (same as Perl singe-line mode). In dot-all mode, the
              expression <code class="inline-code">.</code> matches any character, including
              a line terminator. By default this expression does not match
              line terminators.</p>
            </li>

            <li>
              <p><code class="inline-code">c</code>: Permits whitespace and comments in
              regular expressions.</p>
            </li>
          </ul>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign s = 'foo bAr baar'&gt;
$&#123;s?replace('ba', 'XY')&#125;
i: $&#123;s?replace('ba', 'XY', 'i')&#125;
if: $&#123;s?replace('ba', 'XY', 'if')&#125;
r: $&#123;s?replace('ba*', 'XY', 'r')&#125;
ri: $&#123;s?replace('ba*', 'XY', 'ri')&#125;
rif: $&#123;s?replace('ba*', 'XY', 'rif')&#125;</pre></div>

          <p>This outputs this:</p>

<pre>          
<div style="border:1px solid green;">
<#assign s = 'foo bAr baar'>
${s?replace('ba', 'XY')}
i: ${s?replace('ba', 'XY', 'i')}
if: ${s?replace('ba', 'XY', 'if')}
r: ${s?replace('ba*', 'XY', 'r')}
ri: ${s?replace('ba*', 'XY', 'ri')}
rif: ${s?replace('ba*', 'XY', 'rif')}

</div>
</pre>            

          <p>This is the table of built-ins that use these common flags,
          and which supports which flags:</p>

            <div class="table-responsive">
    <table class="table">

            <thead>
              <tr>
                <th>Built-in</th>


                <th><code class="inline-code">i</code> (ignore case)</th>


                <th><code class="inline-code">r</code> (reg. exp.)</th>


                <th><code class="inline-code">m</code> (multi-line mode)</th>


                <th><code class="inline-code">s</code> (dot-all mode)</th>


                <th><code class="inline-code">c</code> (whitesp. and comments)</th>


                <th><code class="inline-code">f</code> (first only)</th>

              </tr>

            </thead>


            <tbody>
              <tr>
                <td><code class="inline-code">replace</code></td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Only with <code class="inline-code">r</code></td>


                <td>Only with <code class="inline-code">r</code></td>


                <td>Only with <code class="inline-code">r</code></td>


                <td>Yes</td>

              </tr>


              <tr>
                <td><code class="inline-code">split</code></td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Only with <code class="inline-code">r</code></td>


                <td>Only with <code class="inline-code">r</code></td>


                <td>Only with <code class="inline-code">r</code></td>


                <td>No</td>

              </tr>


              <tr>
                <td><code class="inline-code">matches</code></td>


                <td>Yes</td>


                <td>Ignored</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>No</td>

              </tr>


              <tr>
                <td><code class="inline-code">keep_after</code></td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Ignored</td>

              </tr>


              <tr>
                <td><code class="inline-code">keep_after_last</code></td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Ignored</td>

              </tr>


              <tr>
                <td><code class="inline-code">keep_before</code></td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Ignored</td>

              </tr>


              <tr>
                <td><code class="inline-code">keep_before_last</code></td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Ignored</td>

              </tr>


              <tr>
                <td><code class="inline-code">ensure_starts_with</code></td>


                <td>Yes</td>


                <td>Ignored</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Yes</td>


                <td>Ignored</td>

              </tr>

            </tbody>

              </table>
  </div>

        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_alphaidx.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_number.html"><span>Next</span></a></div></div></div></div>
</body>
</html>