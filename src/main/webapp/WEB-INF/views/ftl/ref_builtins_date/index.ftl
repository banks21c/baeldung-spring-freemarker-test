<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_number.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_boolean.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_date" itemprop="headline">Built-ins for date/time/date-time values</h1>
</div></div><div class="page-menu">
<div class="page-menu-title">Page Contents</div>
<ul><li><a class="page-menu-link" href="#ref_builtin_date_datetype" data-menu-target="ref_builtin_date_datetype">date, time, datetime (when used with a date/time/date-time
value)</a></li><li><a class="page-menu-link" href="#ref_builtin_date_if_unknown" data-menu-target="ref_builtin_date_if_unknown">date_if_unknown, time_if_unknown, datetime_if_unknown</a></li><li><a class="page-menu-link" href="#ref_builtin_date_iso" data-menu-target="ref_builtin_date_iso">iso_...</a></li><li><a class="page-menu-link" href="#ref_builtin_string_for_date" data-menu-target="ref_builtin_string_for_date">string (when used with a date/time/date-time value)</a></li></ul> </div>
          



<h2 class="content-header header-section2" id="ref_builtin_date_datetype">date, time, datetime (when used with a date/time/date-time
          value)</h2>


          

          

          

          

          

          <p>These built-ins can be used to specify which parts of the
          date-like variable are in use:</p>

          <ul>
            <li>
              <p><code class="inline-code">date</code>: Date only, no time of the
              day.</p>
            </li>

            <li>
              <p><code class="inline-code">time</code>: Only the time of the day, no date
              part</p>
            </li>

            <li>
              <p><code class="inline-code">datetime</code>: Both date and time</p>
            </li>
          </ul>

          <p>Ideally, you do not need to use these built-ins.
          Unfortunately, because of the technical limitations of the Java
          platform, FreeMarker sometimes can't find out which parts of a
          date-like value is a date, a time or a date-time; ask the
          programmers which variables has this problem. If FreeMarker has to
          execute an operation where this information is needed -- such as
          displaying the value as text -- but it does not know which parts are
          in use, it will stop with error. This is when you have to use these
          built-ins. For example, assume <code class="inline-code">openingTime</code> is a
          such problematic variable:</p>

          

<div class="code-wrapper">
<pre class="code-block code-template">

&lt;#assign x = openingTime&gt; &lt;#-- no problem can occur here --&gt;
$&#123;openingTime?time&#125; &lt;#-- without ?time it would fail --&gt;
&lt;#-- For the sake of better understanding, consider this: --&gt;
&lt;#assign openingTime = openingTime?time&gt;
$&#123;openingTime&#125; &lt;#-- this will work now --&gt;

localDate : ${localDate}
formattedLocalDate : ${formattedLocalDate}

localTime : ${localTime}
formattedLocalTime1 : ${formattedLocalTime1}
formattedLocalTime2 : ${formattedLocalTime2}
formattedLocalTime3 : ${formattedLocalTime3}

localDateTime : ${localDateTime}
formattedDateTime : ${formattedDateTime}

formattedDateTime : $ {localDate?time}
Unparseable date: "2019-12-04"
formattedDateTime : $ {localTime?time}
Unparseable date: "17:22:49.313"
formattedDateTime : $ {localDateTime?time}
Unparseable date: "2019-12-04T17:22:32.201"
formattedDateTime : $ {formattedDateTime?time}
Unparseable date: "04-12-2019 17:22:10"

<#assign openingTime = openingTime?datetime("MM/dd/yyyy HH:mm:ss a")> 
<#-- no problem can occur here -->
${openingTime?time} 
<#-- without ?time it would fail -->
<#-- For the sake of better understanding, consider this: -->
<#assign openingTime = openingTime?time>
${openingTime} <#-- this will work now -->

</pre></div>

          <p>These built-ins can also be used to convert date-time values
          to date or time. For example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">
Last updated: $&#123;lastUpdated&#125; &lt;#-- assume that lastUpdated is a date-time value --&gt;
Last updated date: $&#123;lastUpdated?date&#125;
Last updated time: $&#123;lastUpdated?time&#125;
</pre></div>

          <p>will output something like:</p>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#-- assume that lastUpdated is a date-time value -->
<#-- 
Last updated: ${lastUpdated} 
Last updated date: ${lastUpdated?date}
Last updated time: ${lastUpdated?time}
 -->
<#-- Settings you need -->
<#setting date_format="dd-MM-yyyy">
<#setting locale="en_US">

<#-- The string that comes from somewhere: -->
<#assign createdOn = 'Jan 08 2015 20:40:56 GMT+0530 (IST)'>

<#--
  1. Tell FreeMarker to convert string to real date-time value
  2. Convert date-time value to date-only value
  3. Let FreeMarker format it according the date_format setting
-->
${createdOn?datetime("MMM dd yyyy HH:mm:ss 'GMT'Z")?date}
 
<#assign createOn = lastUpdated >
<#assign lastUpdated = lastUpdated?datetime("MM/dd/yyyy HH:mm:ss a") >
Last updated: ${lastUpdated} 
Last updated date: ${lastUpdated?date}
Last updated time: ${lastUpdated?time}

Last updated: ${createOn} 
Last updated date: ${createOn?datetime("MM/dd/yyyy HH:mm:ss a")?date}
Last updated time: ${createOn?datetime("MM/dd/yyyy HH:mm:ss a")?time}
<br/><br/>
<#-- 
 -->
Last updated: 04/25/2003 08:00:54 PM
Last updated date: 04/25/2003
Last updated time: 08:00:54 PM



</pre></div>

          <p>If the left side of the <code class="inline-code">?</code> is string, then
          these built-ins <a href="ref_builtins_string.html#ref_builtin_string_date">convert
          strings to date/time/date-time</a>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_date_if_unknown">date_if_unknown, time_if_unknown, datetime_if_unknown</h2>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.21.</p>
            </div>


          <p>The <code class="inline-code">date_if_unknown</code>,
          <code class="inline-code">time_if_unknown</code>,
          <code class="inline-code">datetime_if_unknown</code> built-ins mark a date-like
          value with some of the sub-types: date without time, time, or
          date-time, respectively. However, if the value already holds this
          information, the built-in has no effect. That is, it will never
          convert the sub-type of a value, it only adds the sub-type if it was
          unknown.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_date_iso">iso_...</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p><em>These built-ins are deprecated</em> since
            FreeMarker 2.3.21, where the <code class="inline-code">date_format</code>,
            <code class="inline-code">time_format</code> and
            <code class="inline-code">datetime_format</code> settings understand
            <code class="inline-code">"iso"</code> (for ISO 8601:2004 format) and
            <code class="inline-code">"xs"</code> (for XML Schema format) in additionally to
            the Java <code class="inline-code">SimpleDateFormat</code> patterns. Thus the
            default format can be set to ISO 8601, or for one time ISO
            formatting you can use <code class="inline-code">myDate?string.iso</code>. <a href="ref_directive_setting.html#topic.dateTimeFormatSettings">See more
            here...</a></p>
            </div>


          <p>These built-ins convert a date, time or date-time value to
          string that follows ISO 8601:2004 "extended" format.</p>

          <p>This built-in has several variations:
          <code class="inline-code">iso_utc</code>, <code class="inline-code">iso_local</code>,
          <code class="inline-code">iso_utc_nz</code>, <code class="inline-code">iso_local_nz</code>,
          <code class="inline-code">iso_utc_m</code>, <code class="inline-code">iso_utc_m_nz</code>, etc.
          The name is constructed from the following words in this order, each
          separated with a <code class="inline-code">_</code> from the next:</p>

          <div class="orderedlist"><ol type="1">
            <li>
              <p><code class="inline-code">iso</code> (required)</p>
            </li>

            <li>
              <p>Either <code class="inline-code">utc</code> or <code class="inline-code">local</code>
              (required (except when it's given with a parameter, but see that
              later)): Specifies whether you want to print the
              date/time/date-time according to UTC or according the current
              time zone. The current time zone is decided by the
              <code class="inline-code">time_zone</code> FreeMarker setting and is normally
              configured by the programmers outside the templates (but it can
              also be set in a template, like <code class="inline-code">&lt;#setting
              time_zone="America/New_York"&gt;</code> for example). Note
              that if the <code class="inline-code">sql_date_and_time_time_zone</code>
              FreeMarker setting is set and non-<code class="inline-code">null</code>, then
              for <code class="inline-code">java.sql.Date</code> and
              <code class="inline-code">java.sql.Time</code> values (i.e., for date-only and
              time-only values that are coming from database via SQL)
              <code class="inline-code">local</code> will mean that time zone instead of the
              value of the <code class="inline-code">time_zone</code> setting.</p>
            </li>

            <li>
              <p>Either <code class="inline-code">h</code> or <code class="inline-code">m</code> or
              <code class="inline-code">ms</code> (optional): The accuracy of the time part.
              When omitted, it defaults to seconds accuracy (like
              <code class="inline-code">12:30:18</code>). <code class="inline-code">h</code> means hours
              accuracy (like <code class="inline-code">12</code>), <code class="inline-code">m</code>
              means minutes accuracy (<code class="inline-code">12:30</code>), and
              <code class="inline-code">ms</code> means milliseconds accuracy
              (<code class="inline-code">12:30:18.25</code>, where we have 250 ms). Note
              that when using <code class="inline-code">ms</code>, the milliseconds are
              displayed as fraction seconds (following the standard) and will
              not have trailing <code class="inline-code">0</code>-s. Thus, if the the
              millisecond part happens to be <code class="inline-code">0</code>, the whole
              fraction second part will be omitted. Also note that the
              fraction seconds are always separated with a dot , not with
              comma (to follow the Web conventions and XML Schema
              time/dateTime canonical format).</p>
            </li>

            <li>
              <p><code class="inline-code">nz</code> (optional): <code class="inline-code">nz</code>
              (like in <code class="inline-code">$&#123;foo?utc_local_nz&#125;</code>) stands for
              "no zone", which means that the time zone offset
              (like <code class="inline-code">+02:00</code> or or <code class="inline-code">-04:30</code>
              or <code class="inline-code">Z</code>) will not be displayed. If this part is
              omitted (like in <code class="inline-code">$&#123;foo?utc_local&#125;</code>) the zone
              will be displayed, except in two cases:</p>

              <ul>
                <li>
                  <p>If the value is a date (no time part) value (again,
                  ISO 8901 doesn't allow it then)</p>
                </li>

                <li>
                  <p>If the value is a <code class="inline-code">java.sql.Time</code> and
                  the <code class="inline-code">incompatible_improvements</code> (often set
                  via the Java <code class="inline-code">Configuration</code> constructor
                  parameter) FreeMarker configuration setting is at least
                  2.3.21 (or 2.3.24 when you are inside a string literal).
                  This is because most databases store time values that aren't
                  in any time zone, but just store hour, minute, second, and
                  decimal second field values, so showing the time zone
                  doesn't make sense.</p>
                </li>
              </ul>

              <p>Note that since FreeMarker 2.3.19, the offset always
              contains the minutes for XML Schema date/time/dateTime format
              compliance. (However, if you primarily generate for the XML
              Schema format, use the xs format.)</p>
            </li>
          </ol></div>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign aDateTime = .now&gt;
&lt;#assign aDate = aDateTime?date&gt;
&lt;#assign aTime = aDateTime?time&gt;

Basic formats:
$&#123;aDate?iso_utc&#125;
$&#123;aTime?iso_utc&#125;
$&#123;aDateTime?iso_utc&#125;

Different accuracies:
$&#123;aTime?iso_utc_ms&#125;
$&#123;aDateTime?iso_utc_m&#125;

Local time zone:
$&#123;aDateTime?iso_local&#125;</pre></div>

          <p>A possible output (depends on current time and time
          zone):</p>

          

<div class="code-wrapper"><pre class="code-block code-output">Basic formats:
2011-05-16
21:32:13Z
2011-05-16T21:32:13Z

Different accuracies:
21:32:13.868Z
2011-05-16T21:32Z

Local time zone:
2011-05-16T23:32:13+02:00</pre></div>

          <p>There is yet another group of <code class="inline-code">iso_...</code>
          built-in variants, where you omit the <code class="inline-code">local</code> or
          <code class="inline-code">utc</code> word from the name and instead specify the
          time zone as a parameter to the built-in. Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign aDateTime = .now&gt;
$&#123;aDateTime?iso("UTC")&#125;
$&#123;aDateTime?iso("GMT-02:30")&#125;
$&#123;aDateTime?iso("Europe/Rome")&#125;

The usual variations are supported:
$&#123;aDateTime?iso_m("GMT+02")&#125;
$&#123;aDateTime?iso_m_nz("GMT+02")&#125;
$&#123;aDateTime?iso_nz("GMT+02")&#125;</pre></div>

          <p>A possible output (depends on current time and time
          zone):</p>

          

<div class="code-wrapper"><pre class="code-block code-output">2011-05-16T21:43:58Z
2011-05-16T19:13:58-02:30
2011-05-16T23:43:58+02:00

The usual variations are supported:
2011-05-16T23:43+02:00
2011-05-16T23:43
2011-05-16T23:43:58</pre></div>

          <p>If the time zone parameter can't be interpreted, the template
          processing will be terminated with error.</p>

          <p class="programmers-note">The parameter can be a
          <code class="inline-code">java.util.TimeZone</code> object too (which is possibly
          the return value of a Java method, or it's in the data-model), not
          just a string.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_string_for_date">string (when used with a date/time/date-time value)</h2>


          

          

          

          

          

          

          

          

          

          

          

          <p>This built-in converts a date to a string, with the specified
          formatting.</p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>You should need this built-in rarely, as the default format
            of date/time/date-time values can be specified globally <a href="ref_directive_setting.html#topic.dateTimeFormatSettings">with the
            <code>date_format</code>, <code>time_format</code> and
            <code>datetime_format</code> settings</a> of FreeMarker.
            Use this built-in only at the places where the desired format
            differs from the one normally used. For the other places the
            default format should be set properly by the programmers, outside
            the templates.</p>
            </div>


          <p>The desired format can be specified like
          <code class="inline-code">?string.<em class="code-color">format</em></code> or
          <code class="inline-code">?string["<em class="code-color">format</em>"]</code>(or
          the historical equivalent,
          <code class="inline-code">?string("<em class="code-color">format</em>")</code>).
          These are equivalent, except that with the quoted formats you can
          include any characters in the
          <code class="inline-code"><em class="code-color">format</em></code>, like spaces.
          The syntax of <code class="inline-code"><em class="code-color">format</em></code>
          is exactly the same as of the <code class="inline-code">date_format</code>,
          <code class="inline-code">time_format</code> and
          <code class="inline-code">datetime_format</code> configuration settings; <a href="ref_directive_setting.html#topic.dateTimeFormatSettings">see the documentation of the
          possible values there</a>.</p>

          <p>Example: If the locale of the output is U.S. English, and the
          time zone is the U.S. Pacific Time zone, and
          <code class="inline-code">openingTime</code> is a
          <code class="inline-code">java.sql.Time</code>, <code class="inline-code">nextDiscountDay</code>
          is <code class="inline-code">java.sql.Date</code> and
          <code class="inline-code">lastUpdated</code> is
          <code class="inline-code">java.sql.Timestamp</code> or
          <code class="inline-code">java.util.Date</code> then this:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#-- Predefined format names: --&gt;

$&#123;openingTime?string.short&#125;
$&#123;openingTime?string.medium&#125;
$&#123;openingTime?string.long&#125;
$&#123;openingTime?string.full&#125;
$&#123;openingTime?string.xs&#125; &lt;#-- XSD xs:time --&gt;
$&#123;openingTime?string.iso&#125; &lt;#-- ISO 8601 time --&gt;

$&#123;nextDiscountDay?string.short&#125;
$&#123;nextDiscountDay?string.medium&#125;
$&#123;nextDiscountDay?string.long&#125;
$&#123;nextDiscountDay?string.full&#125;
$&#123;nextDiscountDay?string.xs&#125; &lt;#-- XSD xs:date --&gt;
$&#123;nextDiscountDay?string.iso&#125; &lt;#-- ISO 8601 date --&gt;

$&#123;lastUpdated?string.short&#125;
$&#123;lastUpdated?string.medium&#125;
$&#123;lastUpdated?string.long&#125;
$&#123;lastUpdated?string.full&#125;
$&#123;lastUpdated?string.medium_short&#125; &lt;#-- medium date, short time --&gt;
$&#123;lastUpdated?string.xs&#125; &lt;#-- XSD xs:dateTime --&gt;
$&#123;lastUpdated?string.iso&#125; &lt;#-- ISO 8601 combined date and time --&gt;

&lt;#-- <a href="pgui_config_custom_formats.html">Programmer-defined named format</a> (@ + name): --&gt;
$&#123;lastUpdated?string.@fileDate&#125;

&lt;#-- Advanced ISO 8601 and XSD formatting: --&gt;
$&#123;lastUpdated?string.iso_m_u&#125;
$&#123;lastUpdated?string.xs_ms_nz&#125;

&lt;#-- SimpleDateFormat patterns: --&gt;
$&#123;lastUpdated?string["dd.MM.yyyy, HH:mm"]&#125;
$&#123;lastUpdated?string["EEEE, MMMM dd, yyyy, hh:mm a '('zzz')'"]&#125;
$&#123;lastUpdated?string["EEE, MMM d, ''yy"]&#125;
$&#123;lastUpdated?string.yyyy&#125; &lt;#-- Same as $&#123;lastUpdated?string["yyyy"]&#125; --&gt;</pre></div>

          <p>will print something like this:</p>

          

<div class="code-wrapper"><pre class="code-block code-output">01:45 PM
01:45:09 PM
01:45:09 PM PST
01:45:09 PM PST
13:45:09-08:00
13:45:09-08:00

2/20/07
Apr 20, 2007
April 20, 2007
Friday, April 20, 2007
2007-02-20-08:00
2007-02-20

2/20/07 01:45 PM
Feb 20, 2007 01:45:09 PM
February 20, 2007 01:45:09 PM PST
Friday, February 20, 2007 01:45:09 PM PST
Feb 8, 2003 9:24 PM
2007-02-20T13:45:09-08:00
2007-02-20T13:45:09-08:00

Apr/20/2007 13:45

2007-02-20T21:45Z
2007-02-20T13:45:09.000

08.04.2003 21:24
Tuesday, April 08, 2003, 09:24 PM (PDT)
Tue, Apr 8, '03
2003</pre></div>

          <p>Note that with custom formats like in
          <code class="inline-code">lastUpdated?string.@fileDate</code> above, templates can
          just refer to the application-domain meaning, and the exact format
          can be specified outside the templates, on a central place.
          (Programmers can read about <a href="pgui_config_custom_formats.html">defining such named formats
          here...</a>)</p>

            <div class="callout warning">
    <strong class="callout-label">Warning!</strong>

            <p>Unfortunately, because of the limitations of the Java
            platform, it can happen that you have date-like variables in the
            data-model, where FreeMarker can't decide if the variable is a
            date (year, month, day), or a time (hour, minute, second,
            millisecond) or a date-time. In this case, FreeMarker doesn't know
            how to display the value when you write something like
            <code class="inline-code">$&#123;lastUpdated?string.short&#125;</code> or
            <code class="inline-code">$&#123;lastUpdated?string.xs&#125;</code>, i.e., a format that
            doesn't specify the exact fields to display, or if you simply use
            <code class="inline-code">$&#123;lastUpdated&#125;</code>. Then it will have to stop with
            error. To prevent this, you can help FreeMarker with the <a href="#ref_builtin_date_datetype"><code>?date</code>,
            <code>?time</code> and <code>?datetime</code>
            built-ins</a>. For example:
            <code class="inline-code">$&#123;lastUpdated?datetime?string.short&#125;</code>. Ask the
            programmers if certain variables of the data-model have this
            problem, or always use <code class="inline-code">?date</code>,
            <code class="inline-code">?time</code> and <code class="inline-code">?datetime</code>
            built-ins to be on the safe side.</p>
            </div>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>You never need to use <code class="inline-code">?date</code>,
            <code class="inline-code">?time</code> or <code class="inline-code">?datetime</code> with
            format patterns like <code class="inline-code">"yyyy.MM.dd HH:mm"</code>, since
            with the pattern you tell FreeMarker what parts of the date to
            show. However, FreeMarker will trust you blindly, so you can show
            "noise" if you display parts that are actually not stored in the
            variable. For example, <code class="inline-code">$&#123;openingTime?string["yyyy-MM-dd
            hh:mm:ss a"]&#125;</code>, where <code class="inline-code">openingTime</code>
            stores only time, will display <code class="inline-code">1970-01-01 09:24:44
            PM</code>.</p>
            </div>


          <p>To prevent misunderstandings, the format need not be a string
          literal, it can be a variable or any other expression as far as it
          evaluates to a string. For example, it can be like
          <code class="inline-code">"<em class="code-color">...</em>"?string[myFormat]</code>.</p>

          <p>See also: <a href="dgui_template_valueinsertion.html#dgui_template_valueinserion_universal_date">the
          interpolation of dates</a></p>
        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_number.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_boolean.html"><span>Next</span></a></div></div></div></div>
</body>
</html>