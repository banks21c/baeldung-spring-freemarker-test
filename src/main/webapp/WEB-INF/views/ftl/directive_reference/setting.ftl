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
   <a class="paging-arrow previous" href="ref_directive_outputformat.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_directive_stop.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_setting" itemprop="headline">setting</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_120" data-menu-target="autoid_120">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_121" data-menu-target="autoid_121">Description</a></li>
  </ul> 
 </div>
 <a name="ref.directive.setting"></a> 
 <h2 class="content-header header-section2" id="autoid_120">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#setting <em class="code-color">name</em>=<em class="code-color">value</em>&gt;</code>
</pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">name</em></code>: name of the setting. It is not expression! </li> 
  <li> <code class="inline-code"><em class="code-color">value</em></code>: New value of the setting. Expression </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_121">Description</h2> 
 <p>Sets a setting for the further part of processing. Settings are values that influence the behavior of FreeMarker. The new value will be present only in the template processing where it was set, and does not touch the template itself. The initial value of settings is set by the programmer <span class="marked-for-programmers">(see: <a href="pgui_config_settings.html">Programmer's Guide/The Configuration/Settings</a>)</span>.</p> 
 <p>The supported settings are:</p> 
 <ul> 
  <li> <p><code class="inline-code">locale</code>: The locale (language) of the output. It can influence the presentation format of numbers, dates, etc. The value is a string which consist of a language code (lowercase two-letter ISO-639 code) plus optional county code (uppercase two-letter ISO-3166 code) separated from the language code with underscore, and if we have specified the country then an optional variant code (not standardized) separated from the country with underscore. Examples of valid values: <code class="inline-code">en</code>, <code class="inline-code">en_US</code>, <code class="inline-code">en_US_MAC</code>. FreeMarker will try to use the most specific available locale, so if you specify <code class="inline-code">en_US_MAC</code> but that is not known, then it will try <code class="inline-code">en_US</code>, and then <code class="inline-code">en</code>, and then the default locale of the computer (which is may set by the programmer).</p> </li> 
  <li> <p><a name="ref.setting.number_format"></a><code class="inline-code">number_format</code>: The number format that is used to convert numbers to strings when no explicit format is specified. Can be one of the following:</p> 
   <ul> 
    <li> <p>Predefined values defined by the Java platform: <code class="inline-code">number</code> (the default), <code class="inline-code">currency</code>, or <code class="inline-code">percent</code></p> </li> 
    <li> <p><code class="inline-code">computer</code>, which formats like <a href="ref_builtins_number.html#ref_builtin_c">the <code>c</code> built-in</a></p> </li> 
    <li> <p>Format pattern written in <a href="http://java.sun.com/j2se/1.4/docs/api/java/text/DecimalFormat.html">Java decimal number format syntax</a>, for example <code class="inline-code">0.###</code>. FreeMarker <a href="ref_builtins_number.html#topic.extendedJavaDecimalFormat">extends this format</a> to allow specifying rounding mode, symbols used, etc.</p> </li> 
    <li> <p>Values starting with <code class="inline-code">@</code> that's also followed by a letter, refer to a <a href="pgui_config_custom_formats.html">custom format</a>. For example, <code class="inline-code">"@price"</code> refers to the custom format registered with the <code class="inline-code">"price"</code> name. The custom format name is possibly followed by space or <code class="inline-code">_</code> and then format parameters, whose interpretation depends on the custom format. For backward compatibility, the initial <code class="inline-code">@</code> only has this new meaning if either <a href="pgui_config_incompatible_improvements.html#pgui_config_incompatible_improvements_how_to_set">the <code>incompatible_improvements</code> setting</a> is at least 2.3.24, or there's any custom formats defined. When the initial <code class="inline-code">@</code> isn't followed by a letter (any UNICODE letter), it's never treated as a reference to a custom format.</p> </li> 
   </ul> </li> 
  <li> <p><code class="inline-code">boolean_format</code>: The comma-separated pair of strings for representing true and false values respectively that is used to convert booleans to strings when no explicit format is specified (like in <code class="inline-code">&#36;{<em class="code-color">booleanValue</em>}</code>). Note that currently white space isn't removed from this string, so don't put space after the comma. Default value is <code class="inline-code">"true,false"</code>, but FreeMarker will deny using that particular value for <code class="inline-code">&#36;{<em class="code-color">booleanValue</em>}</code>, and requires using <code class="inline-code">&#36;{<em class="code-color">booleanValue</em>?c}</code> instead (this works since 2.3.21). For any other value, like <code class="inline-code">"Y,N"</code>, <code class="inline-code">&#36;{<em class="code-color">booleanValue</em>}</code> will work. See also:<a href="ref_builtins_boolean.html#ref_builtin_string_for_boolean"><code>string</code> built-in</a>.</p> </li> 
  <li> <p><a name="topic.dateTimeFormatSettings"></a><a name="topic_date_format_settings"></a> <code class="inline-code">date_format</code>, <code class="inline-code">time_format</code>, <code class="inline-code">datetime_format</code>: The format used to convert date/time/date-time values (Java <code class="inline-code">java.util.Date</code>-s and its subclasses) to strings when no explicit format is specified via the <a href="ref_builtins_date.html#ref_builtin_string_for_date"><code>string</code> built-in</a> (or otherwise), as in the case of <code class="inline-code">&#36;{someDate}</code>. The <code class="inline-code">date_format</code> setting only effects the formatting of date values that store no time part, <code class="inline-code">time_format</code> only effects the formatting of times that store no date part, and <code class="inline-code">datetime_format</code> only effects formatting of date-time values. These settings also effects what format do <a href="ref_builtins_string.html#ref_builtin_string_date"><code>?time</code>, <code>?date</code>, and <code>?datetime</code></a> expect when it's applied on a string value.</p> <p>The possible setting values are (the quotation marks aren't part of the value itself):</p> 
   <ul> 
    <li> <p>Patterns <a href="http://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html">accepted by Java's <code>SimpleDateFormat</code></a>, for example <code class="inline-code">"dd.MM.yyyy HH:mm:ss"</code> (where <code class="inline-code">"HH"</code> means 0-23 hours) or <code class="inline-code">"MM/dd/yyyy hh:mm:ss a"</code> (where <code class="inline-code">"a"</code> prints AM or PM, if the current language is English).</p> 
     <div class="callout warning"> 
      <strong class="callout-label">Warning!</strong> 
      <p>Be careful <em>not</em> to use <code class="inline-code">YYYY</code> (upper case, means "week year") instead of <code class="inline-code">yyyy</code> (lower case, means year)! It's an easy mistake to do, and hard to notice during testing, as "week year" only differs from "year" near the edge of years.</p> 
     </div> </li> 
    <li> <p><code class="inline-code">"xs"</code> for XML Schema format, or <code class="inline-code">"iso"</code> for ISO 8601:2004 format. These formats allow various additional options, separated with space, like in <code class="inline-code">"iso m nz"</code> (or with <code class="inline-code">_</code>, like in <code class="inline-code">"iso_m_nz"</code>; this is useful in a case like <code class="inline-code">lastModified?string.iso_m_nz</code>). The options and their meanings are:</p> 
     <ul> 
      <li> <p>Accuracy options:</p> 
       <ul> 
        <li> <code class="inline-code">ms</code>: Milliseconds, always shown with all 3 digits, even if it's all 0-s. Example: <code class="inline-code">13:45:05.800</code> </li> 
        <li> <code class="inline-code">s</code>: Seconds (fraction seconds are dropped even if non-0), like <code class="inline-code">13:45:05</code> </li> 
        <li> <code class="inline-code">m</code>: Minutes, like <code class="inline-code">13:45</code>. This isn't allowed for <code class="inline-code">"xs"</code>. </li> 
        <li> <code class="inline-code">h</code>: Hours, like <code class="inline-code">13</code>. This isn't allowed for <code class="inline-code">"xs"</code>. </li> 
        <li> Neither: Up to millisecond accuracy, but trailing millisecond 0-s are removed, also the whole milliseconds part if it would be 0 otherwise. Example: <code class="inline-code">13:45:05.8</code> </li> 
       </ul> </li> 
      <li> <p>Time zone offset visibility options:</p> 
       <ul> 
        <li> <code class="inline-code">fz</code>: "Force Zone", always show time zone offset (even for for <code class="inline-code">java.sql.Date</code> and <code class="inline-code">java.sql.Time</code> values). But, because ISO 8601 doesn't allow for dates (means date without time of the day) to show the zone offset, this option will have no effect in the case of <code class="inline-code">"iso"</code> with dates. </li> 
        <li> <code class="inline-code">nz</code>: "No Zone", never show time zone offset </li> 
        <li> Neither: Always show time zone offset, except for <code class="inline-code">java.sql.Date</code> and <code class="inline-code">java.sql.Time</code>, and for <code class="inline-code">"iso"</code> date values. </li> 
       </ul> </li> 
      <li> <p>Time zone options:</p> 
       <ul> 
        <li> <code class="inline-code">u</code>: Use UTC instead of what the <code class="inline-code">time_zone</code> setting suggests. However, <code class="inline-code">java.sql.Date</code> and <code class="inline-code">java.sql.Time</code> aren't affected by this (see <code class="inline-code">sql_date_and_time_time_zone</code> to understand why) </li> 
        <li> <code class="inline-code">fu</code>: "Force UTC", that is, use UTC instead of what the <code class="inline-code">time_zone</code> or the <code class="inline-code">sql_date_and_time_time_zone</code> setting suggests. This also effects <code class="inline-code">java.sql.Date</code> and <code class="inline-code">java.sql.Time</code> values </li> 
        <li> Neither: Use the time zone suggested by the <code class="inline-code">time_zone</code> or the <code class="inline-code">sql_date_and_time_time_zone</code> configuration setting </li> 
       </ul> </li> 
     </ul> <p>Options from the same category are mutually exclusive, like using <code class="inline-code">m</code> and <code class="inline-code">s</code> together is an error.</p> <p>The options can be specified in any order.</p> <p>The accuracy and time zone offset visibility options don't influence parsing, only formatting. For example, even if you use <code class="inline-code">"iso m nz"</code>, <code class="inline-code">"2012-01-01T15:30:05.125+01"</code> will be parsed successfully and with milliseconds accuracy. The time zone options (like <code class="inline-code">"u"</code>) influence what time zone is chosen only when parsing a string that doesn't contain time zone offset.</p> <p>Parsing with <code class="inline-code">"iso"</code> understands both "extend format" and "basic format", like <code class="inline-code">20141225T235018</code>. It doesn't, however, support the parsing of all kind of ISO 8601 strings: if there's a date part, it must use year, month and day of the month values (not week of the year), and the day can't be omitted.</p> <p>The output of <code class="inline-code">"iso"</code> is deliberately so that it's also a good representation of the value with XML Schema format, except for 0 and negative years, where it's impossible. Also note that the time zone offset is omitted for date values in the <code class="inline-code">"iso"</code> format, while it's preserved for the <code class="inline-code">"xs"</code> format.</p> </li> 
    <li> <p><code class="inline-code">"short"</code>, <code class="inline-code">"medium"</code>, <code class="inline-code">"long"</code>, or <code class="inline-code">"full"</code>, which has locale-dependent meaning defined by the Java platform (see in the <a href="http://docs.oracle.com/javase/7/docs/api/java/text/DateFormat.html">documentation of <code>java.text.DateFormat</code></a>). For date-time values, you can specify the length of the date and time part independently, be separating them with <code class="inline-code">_</code>, like <code class="inline-code">"short_medium"</code>. (<code class="inline-code">"medium"</code> means <code class="inline-code">"medium_medium"</code> for date-time values.)</p> </li> 
    <li> <p>Values starting with <code class="inline-code">@</code> that's also followed by a letter, refer to a <a href="pgui_config_custom_formats.html">custom format</a>, like <code class="inline-code">"@worklog"</code> refers to the custom format registered with the <code class="inline-code">"worklog"</code> name. The format name is possibly followed by space or <code class="inline-code">_</code> and then format parameters, whose interpretation depends on the custom format. For backward compatibility, the initial <code class="inline-code">@</code> only has this new meaning if either <a href="pgui_config_incompatible_improvements.html#pgui_config_incompatible_improvements_how_to_set">the <code>incompatible_improvements</code> setting</a> is at least 2.3.24, or there's any custom formats defined. When the initial <code class="inline-code">@</code> isn't followed by a letter (any UNICODE letter), it's never treated as a reference to a custom format.</p> </li> 
   </ul> </li> 
  <li> <p><code class="inline-code">time_zone</code>: The name of the time zone used to format times for display. As with all settings, the default is chosen by the programmers when they set up FreeMarker (<span class="marked-for-programmers">via the <code class="inline-code">Configuration</code> class</span>), but it's most often the default time zone of the JVM. Can be any value that is accepted by <a href="http://docs.oracle.com/javase/7/docs/api/java/util/TimeZone.html">Java TimeZone API</a>, or <code class="inline-code">"JVM default"</code> (since FreeMarker 2.3.21) to use the JVM default time zone. Examples: <code class="inline-code">"GMT"</code>, <code class="inline-code">"GMT+2"</code>, <code class="inline-code">"GMT-1:30"</code>, <code class="inline-code">"CET"</code>, <code class="inline-code">"PST"</code>, <code class="inline-code">"America/Los_Angeles"</code>.</p> 
   <div class="callout warning"> 
    <strong class="callout-label">Warning!</strong> 
    <p>If you change this setting from its default value, you should certainly also set <code class="inline-code">sql_date_and_time_time_zone</code> to "JVM default". <span class="marked-for-programmers">See more in the Java API documentation of <code class="inline-code">Configurable.setSQLDateAndTimeTimeZone(TimeZone)</code>.</span></p> 
   </div> </li> 
  <li> <p><code class="inline-code">sql_date_and_time_time_zone</code> (since FreeMarker 2.3.21): This handles a highly technical issue, so it should usually be set from the Java code by the programmers. <span class="marked-for-programmers">For programmers: If this is set to non-<code class="inline-code">null</code>, for date-only and time-only values coming from SQL database (more precisely, for <code class="inline-code">java.sql.Date</code> and <code class="inline-code">java.sql.Time</code> objects) FreeMarker will use this time zone instead of the time zone specified by the <code class="inline-code">time_zone</code> FreeMarker setting. See more in the Java API documentation of <code class="inline-code">Configurable.setSQLDateAndTimeTimeZone(TimeZone)</code>.</span></p> </li> 
  <li> <p><code class="inline-code">url_escaping_charset</code>: The charset used for URL escaping (e.g. for <code class="inline-code">&#36;{foo?url}</code>) to calculate the escaped (<code class="inline-code">%<em class="code-color">XX</em></code>) parts. Usually the framework that encloses FreeMarker should set it, so you hardly ever should set this setting in templates. <span class="marked-for-programmers">(Programmers can read more about this <a href="pgui_misc_charset.html">here...</a>)</span></p> </li> 
  <li> <p><code class="inline-code">output_encoding</code>: Tells FreeMarker what the charset of the output is. As FreeMarker outputs a stream of UNICODE characters (<span class="marked-for-programmers">it writes into a <code class="inline-code">java.io.Writer</code></span>), it's not affected by the output encoding, but some macros/functions and built-ins may want to use this information.</p> </li> 
  <li> <p><code class="inline-code">classic_compatible</code>: Used for better compatibility with very old FreeMarker versions (mostly 1.7.x). See the documentation of <code class="inline-code">freemarker.template.Configurable.isClassicCompatible()</code> for more information.</p> </li> 
 </ul> 
 <p>Example: Assume that the initial locale of template is <code class="inline-code">de_DE</code> (German). Then this:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&#36;{1.2}
&lt;#setting locale="en_US"&gt;
&#36;{1.2}</pre>
 </div> 
 <p>will output this:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">1,2
1.2</pre>
 </div> 
 <p>because German people use the comma as their decimal separator, while US people use the dot.</p> 

</div>
</body>
</html>
