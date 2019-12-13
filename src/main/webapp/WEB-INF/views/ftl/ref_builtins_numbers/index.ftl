<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_string.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_date.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_number" itemprop="headline">Built-ins for numbers</h1>
</div></div><div class="page-menu">
<div class="page-menu-title">Page Contents</div>
<ul><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_abs" data-menu-target="ref_builtin_abs">abs</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_c" data-menu-target="ref_builtin_c">c (when used with numerical value)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_is_infinite" data-menu-target="ref_builtin_is_infinite">is_infinite</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_is_nan" data-menu-target="ref_builtin_is_nan">is_nan</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_lower_abc" data-menu-target="ref_builtin_lower_abc">lower_abc</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_rounding" data-menu-target="ref_builtin_rounding">round, floor, ceiling</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_string_for_number" data-menu-target="ref_builtin_string_for_number">string (when used with a numerical value)</a></li><li><a class="page-menu-link" href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_upper_abc" data-menu-target="ref_builtin_upper_abc">upper_abc</a></li></ul> </div><p>Related FAQs: Do you have things like 1,000,000 or 1&nbsp;000&nbsp;000
        instead of 1000000, or something like 3.14 instead of 3,14 or vice
        versa? See <a href="app_faq.html#faq_number_grouping">this</a> and <a href="app_faq.html#faq_number_decimal_point">this</a> FAQ entry, also note
        the <code class="inline-code">c</code> built-in above.</p>
          


<h2 class="content-header header-section2" id="ref_builtin_abs">abs</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.20.</p>
            </div>


          <p>Gives the absolute value of a number. For example
          <code class="inline-code">x?abs</code> , if <code class="inline-code">x</code> is -5, will
          evaluate to 5.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_c">c (when used with numerical value)</h2>


          

          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.3.</p>
            </div>


          <p>This built-in converts a number to string for a
          "computer language" as opposed to for human audience.
          That is, it formats with the rules that programming languages used
          to use, which is independent of all the locale and number format
          settings of FreeMarker. It always uses dot as decimal separator, and
          it never uses grouping separators (like 3,000,000), nor exponential
          form (like 5E20), nor superfluous leading or trailing 0-s (like 03
          or 1.0), nor + sign (like +1). It will print at most 16 digits after
          the decimal dot, and thus numbers whose absolute value is less than
          1E-16 will be shown as 0. This built-in is crucial because be
          default (like with <code class="inline-code">$&#123;x&#125;</code>) numbers are converted to
          strings with the locale (language, country) specific number
          formatting, which is for human readers (like 3000000 is possibly
          printed as 3,000,000). When the number is printed not for human
          audience (e.g., for a database record ID used as the part of an URL,
          or as invisible field value in a HTML form, or for printing
          CSS/JavaScript numerical literals) this built-in must be used to
          print the number (i.e., use <code class="inline-code">$&#123;x?c&#125;</code> instead of
          <code class="inline-code">$&#123;x&#125;</code>), or else the output will be possibly broken
          depending on the current number formatting settings and locale (like
          the decimal point is not dot, but comma in many countries) and the
          value of the number (like big numbers are possibly
          "damaged" by grouping separators).</p>

          <p>If the <code class="inline-code">incompatible_improvements</code> FreeMarker
          configuration setting is set to 2.3.24 or higher (also if it's set
          to 2.3.20 or higher and you are outside a string literal), this
          built-in will return <code class="inline-code">"INF"</code>,
          <code class="inline-code">"-INF"</code> and <code class="inline-code">"NaN"</code> for
          positive/negative infinity and IEEE floating point Not-a-Number,
          respectively. These are the XML Schema compatible representations of
          these special values. (Earlier it has returned what
          <code class="inline-code">java.text.DecimalFormat</code> did with US locale, none
          of which is understood by any (common) computer language.)</p>

          <p>Note that this built-in <a href="ref_builtins_boolean.html#ref_builtin_c_boolean">also works on
          booleans</a>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_is_infinite">is_infinite</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.20.</p>
            </div>


          <p>Tells if a number is floating point infinite (according to
          IEEE 754). For example, <code class="inline-code">someNumber?is_infinite</code>
          evaluates to <code class="inline-code">true</code> or <code class="inline-code">false</code>
          depending on if the value of <code class="inline-code">someNumber</code> is
          infinite or not. Of course, if the underlying number is not of
          floating point type, this will always return
          <code class="inline-code">false</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_is_nan">is_nan</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.20.</p>
            </div>


          <p>Tells if a number is floating point NaN (according to IEEE
          754). For example, <code class="inline-code">someNumber?is_nan</code> evaluates to
          <code class="inline-code">true</code> or <code class="inline-code">false</code> depending on if
          the value of <code class="inline-code">someNumber</code> is NaN or not. Of course,
          if the underlying number is not of floating point type, this will
          always return <code class="inline-code">false</code>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_lower_abc">lower_abc</h2>


          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.22.</p>
            </div>


          <p>Converts <code class="inline-code">1</code>, <code class="inline-code">2</code>,
          <code class="inline-code">3</code>, etc., to the string <code class="inline-code">"a"</code>,
          <code class="inline-code">"b"</code>, <code class="inline-code">"c"</code>, etc. When reaching
          <code class="inline-code">"z"</code>, it continues like <code class="inline-code">"aa"</code>,
          <code class="inline-code">"ab"</code>, etc. This is the same logic that you can
          see in column labels in spreadsheet applications (like Excel or
          Calc). The lowest allowed number is <code class="inline-code">1</code>. There's no
          upper limit. If the number is <code class="inline-code">0</code> or less or it
          isn't an integer number then the template processing will be aborted
          with error.</p>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list 1..30 as n&gt;$&#123;n?lower_abc&#125; &lt;/#list&gt;</pre></div>

          <p>Prints:</p>


          

<div class="code-wrapper"><pre class="code-block code-output">
<#-- 
The left side operand of to ?lower_abc must be at least 1, but was 0.
<#list 0..30 as n>${n?lower_abc} </#list>
-->
<#list 1..30 as n>${n?lower_abc} </#list>
</pre></div>

          <p>See also: <a href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_upper_abc"><code>upper_abc</code></a></p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_rounding">round, floor, ceiling</h2>


          

          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>The rounding built-ins exist since FreeMarker 2.3.13.</p>
            </div>


          <p>Converts a number to a whole number using the specified
          rounding rule:</p>

          <ul>
            <li>
              <p><code class="inline-code">round</code>: Rounds to the nearest whole
              number. If the number ends with .5, then it rounds upwards
              (i.e., towards positive infinity)</p>
            </li>

            <li>
              <p><code class="inline-code">floor</code>: Rounds the number downwards
              (i.e., towards neagative infinity)</p>
            </li>

            <li>
              <p><code class="inline-code">ceiling</code>: Rounds the number upwards
              (i.e., towards positive infinity)</p>
            </li>
          </ul>

          <p>Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign testlist=[
  0, 1, -1, 0.5, 1.5, -0.5,
  -1.5, 0.25, -0.25, 1.75, -1.75]&gt;
&lt;#list testlist as result&gt;
    $&#123;result&#125; ?floor=$&#123;result?floor&#125; ?ceiling=$&#123;result?ceiling&#125; ?round=$&#123;result?round&#125;
&lt;/#list&gt;</pre></div>

          <p>Prints:</p>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#assign testlist=[
  0, 1, -1, 0.5, 1.5, -0.5,
  -1.5, 0.25, -0.25, 1.75, -1.75]>
<#list testlist as result>
    ${result} ?floor=${result?floor} ?ceiling=${result?ceiling} ?round=${result?round}
</#list>
</pre></div>

          <p>These built-ins may be useful in pagination operations and
          like. If you just want to <em>display</em> numbers in
          rounded form, then you should rather use the <a href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_string_for_number"><code>string</code>
          built-in</a> or the <a href="ref_directive_setting.html#ref.setting.number_format"><code>number_format</code>
          setting</a>.</p>
        
          



<h2 class="content-header header-section2" id="ref_builtin_string_for_number">string (when used with a numerical value)</h2>


          

          

          

          

          <p>Converts a number to a string. In its simplest form
          (<code class="inline-code"><em class="code-color">expression</em>?string</code>) it
          uses the default format that the programmer has specified via the
          <code class="inline-code">number_format</code> and the <code class="inline-code">locale</code>
          configuration settings. You can also specify a number format
          explicitly with this built-in, as it will be shown later.</p>

          <p>There are four predefined number formats:
          <code class="inline-code">computer</code>, <code class="inline-code">currency</code>,
          <code class="inline-code">number</code>, and <code class="inline-code">percent</code>. The exact
          meaning of these is locale (nationality) specific, and is controlled
          by the Java platform installation, not by FreeMarker, except for
          <code class="inline-code">computer</code>, which uses the same formatting as <a href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_c">the <code>c</code> built-in</a>.
          There can also be programmer-defined formats, whose name starts with
          <code class="inline-code">@</code> (programmers <a href="pgui_config_custom_formats.html">see more here...</a>). You
          can use these predefined formats like this:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign x=42&gt;
$&#123;x&#125;
$&#123;x?string&#125;  &lt;#-- the same as $&#123;x&#125; --&gt;
$&#123;x?string.number&#125;
$&#123;x?string.currency&#125;
$&#123;x?string.percent&#125;
$&#123;x?string.computer&#125;</pre></div>

          <p>If your locale is US English, this will print:</p>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#assign x=42>
${x}
${x?string}  <#-- the same as ${x} -->
${x?string.number}
${x?string.currency}
${x?string.percent}
${x?string.computer}
</pre></div>

          <p>The output of first three expressions is identical because the
          first two expressions use the default format, which is
          "number" here. You can change this default using a
          setting:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#setting number_format="currency"&gt;
&lt;#assign x=42&gt;
$&#123;x&#125;
$&#123;x?string&#125;  &lt;#-- the same as $&#123;x&#125; --&gt;
$&#123;x?string.number&#125;
$&#123;x?string.currency&#125;
$&#123;x?string.percent&#125;</pre></div>

          <p>Will now output:</p>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#setting number_format="currency">
<#assign x=42>
${x}
${x?string}  <#-- the same as ${x} -->
${x?string.number}
${x?string.currency}
${x?string.percent}
</pre></div>

          <p>since the default number format was set to
          "currency".</p>

          <p>You can also refer to named custom formats that were defined
          when configuring FreeMarker (programmers <a href="pgui_config_custom_formats.html">see more here</a>),
          like:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">$&#123;x?string.@price&#125;
$&#123;x?string.@weight&#125;</pre></div>

          <p>where the custom format names were "price" and
          "weight". This way the templates can just refer to the
          application-domain meaning, and the exact format can be specified
          outside the templates, on a single central place. (Programmers can
          read about <a href="pgui_config_custom_formats.html">defining such
          named formats here...</a>)</p>

          <p>Beside named formats, you can specify number format patterns
          directly, using the <a href="http://docs.oracle.com/javase/7/docs/api/java/text/DecimalFormat.html">Java
          decimal number format syntax</a> (with some FreeMarker-specific
          extensions; <a href="https://freemarker.apache.org/docs/ref_builtins_number.html#topic.extendedJavaDecimalFormat">see
          later</a>):</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign x = 1.234&gt;
$&#123;x?string["0"]&#125;
$&#123;x?string["0.#"]&#125;
$&#123;x?string["0.##"]&#125;
$&#123;x?string["0.###"]&#125;
$&#123;x?string["0.####"]&#125;

$&#123;1?string["000.00"]&#125;
$&#123;12.1?string["000.00"]&#125;
$&#123;123.456?string["000.00"]&#125;

$&#123;1.2?string["0"]&#125;
$&#123;1.8?string["0"]&#125;
$&#123;1.5?string["0"]&#125; &lt;-- 1.5, rounded towards even neighbor
$&#123;2.5?string["0"]&#125; &lt;-- 2.5, rounded towards even neighbor

$&#123;12345?string["0.##E0"]&#125;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#assign x = 1.234>
${x?string["0"]}
${x?string["0.#"]}
${x?string["0.##"]}
${x?string["0.###"]}
${x?string["0.####"]}

${1?string["000.00"]}
${12.1?string["000.00"]}
${123.456?string["000.00"]}

${1.2?string["0"]}
${1.8?string["0"]}
${1.5?string["0"]} <-- 1.5, rounded towards even neighbor
${2.5?string["0"]} <-- 2.5, rounded towards even neighbor

${12345?string["0.##E0"]}
</pre></div>

          <p>Note that as in FreeMarker <code class="inline-code">foo.bar</code> is
          equivalent with <code class="inline-code">foo["bar"]</code>, you could also write
          <code class="inline-code">x?string.currency</code> as
          <code class="inline-code">x?string["currency"]</code>, but of course that wouldn't
          be practical. But in the above examples we have to use the square
          bracket syntax, because the characters involved (numbers, dot,
          <code class="inline-code">#</code>) aren't allowed syntactically after the dot
          operator.</p>

          <p>For historical reasons, you could also write things like
          <code class="inline-code">x?string("0.#")</code>, which does exactly the same as
          <code class="inline-code">x?string["0.#"]</code>.</p>

          <p>Following the financial and statistics practice, by default
          the rounding goes according the so called half-even rule, which
          means rounding towards the nearest "neighbor", unless
          both neighbors are equidistant, in which case, it rounds towards the
          even neighbor. This was visible in the above example if you look at
          the rounding of 1.5 and of 2.5, as both were rounded to 2, since 2
          is even, but 1 and 3 are odds. The other popular rounding rule,
          where we always round up when the neighbors are equidistant (and so
          2.5 is rounded to 3) is called the half-up rule, and it can be
          activated as <a href="https://freemarker.apache.org/docs/ref_builtins_number.html#topic.extendedJavaDecimalFormat">described
          later</a>.</p>

          <p>As it was shown for the predefined formats earlier, the
          default formatting of the numbers can be set in the template:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#setting number_format="0.##"&gt;
$&#123;1.234&#125;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#setting number_format="0.##">
${1.234}
</pre></div>

          <p>The default number format also can be specified outside the
          templates with the FreeMarker API (like with
          <code class="inline-code">Configuration.setNumberFormat(String)</code>).</p>

          <p>Note that as number formatting is locale sensitive, the locale
          setting also plays role in the formatting:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#setting number_format=",##0.00"&gt;
&lt;#setting locale="en_US"&gt;
US people write:     $&#123;12345678&#125;
&lt;#setting locale="de_DE"&gt;
German people write: $&#123;12345678&#125;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#setting number_format=",##0.00">
<#setting locale="en_US">
US people write:     ${12345678}
<#setting locale="de_DE">
German people write: ${12345678}
</pre></div>

          
            



<h3 class="content-header header-simplesect" id="topic.extendedJavaDecimalFormat">Extended Java decimal format</h3>


            

              <div class="callout note">
    <strong class="callout-label">Note:</strong>

              <p>You need at least FreeMarker 2.3.24 for these to work.
              Before that, extended Java decimal format parts are just
              silently ignored by
              <code class="inline-code">java.text.DecimalFormat</code>.</p>
              </div>


            <p>FreeMarker extends the Java decimal format patterns with
            extra options. These options are name-value pairs, specified after
            two semicolons (<code class="inline-code">;;</code>) at the end of the format
            string, or if you had a negative pattern (which is separated from
            the normal patter with a semicolon, like in <code class="inline-code">"0.0;minus
            0.0"</code>), the after only one semicolon. For example:</p>

            

<div class="code-wrapper"><pre class="code-block code-template">Standard decimal format: $&#123;10002.5?string[",000"]&#125;
Extended decimal format: $&#123;10002.5?string[",000<strong>;; roundingMode=halfUp groupingSeparator=_</strong>"]&#125;</pre></div>

            

<div class="code-wrapper"><pre class="code-block code-output">
Standard decimal format: ${10002.5?string[",000"]}
Extended decimal format: ${10002.5?string[",000;; roundingMode=halfUp groupingSeparator=_"]}
</pre></div>

              <div class="callout warning">
    <strong class="callout-label">Warning!</strong>

              <p>A very easy mistake to make is just using a single
              semicolon instead of two. It won't even result in an error, as
              <code class="inline-code">java.text.DecimalFormat</code> thinks you have just
              specified some weird format for negative numbers. So remember to
              use two semicolons.</p>
              </div>


            <p>Above, in the extended decimal format, we have specified
            half-up rounding mode and group separator <code class="inline-code">"_"</code>.
            The table of all options follows (note that these are defined by
            <code class="inline-code">java.text.DecimalFormat</code> and
            <code class="inline-code">java.text.DecimalFormatSymbols</code>, not by
            FreeMarker):</p>

              <div class="table-responsive">
    <table class="table">

              <thead>
                <tr>
                  <th>Name</th>


                  <th>Meaning / value</th>

                </tr>

              </thead>


              <tbody>
                <tr>
                  <td><code class="inline-code">roundingMode</code></td>


                  <td>The value is one of <code class="inline-code">up</code>,
                  <code class="inline-code">down</code>, <code class="inline-code">ceiling</code>,
                  <code class="inline-code">floor</code>, <code class="inline-code">halfUp</code>,
                  <code class="inline-code">halfDown</code>, <code class="inline-code">halfEven</code>,
                  and <code class="inline-code">unnecessary</code>. The behavior that most
                  people learns in school is <code class="inline-code">halfUp</code>, but
                  the Java default is <code class="inline-code">halfEven</code> (also called
                  bankers' rounding). (See <a href="http://docs.oracle.com/javase/7/docs/api/java/math/RoundingMode.html">the
                  <code>java.math.RoundingMode</code> API</a> for
                  explanations.)</td>

                </tr>


                <tr>
                  <td><code class="inline-code">multiplier</code> since 2.3.29;
                  <code class="inline-code">multipier</code> since 2.3.24</td>


                  <td>The number will be shown after multiplied with this
                  integer number.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">decimalSeparator</code></td>


                  <td>The character separating the integer part from the
                  fraction part (like <code class="inline-code">"."</code> in
                  <code class="inline-code">3.14</code>).</td>

                </tr>


                <tr>
                  <td><code class="inline-code">monetaryDecimalSeparator</code></td>


                  <td>This is used instead of
                  <code class="inline-code">decimalSeparator</code> when the pattern
                  contains parts that make it a monetary format. (See the
                  <a href="http://docs.oracle.com/javase/7/docs/api/java/text/DecimalFormat.html">Java
                  decimal number format documentation</a> for more.)</td>

                </tr>


                <tr>
                  <td><code class="inline-code">groupingSeparator</code></td>


                  <td>The single character used for grouping the integer part
                  (like <code class="inline-code">","</code> in
                  <code class="inline-code">1,000,000</code>) Note that grouping is turned
                  on by using <code class="inline-code">","</code> in the pattern, as shown
                  in the earlier example. If it's not turned on, this option
                  won't have visible effect.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">exponentSeparator</code></td>


                  <td>This string (of arbitrary length) is used to separate
                  the exponent from the part before it. (like
                  <code class="inline-code">"E"</code> in <code class="inline-code">1.23E6</code>). Only
                  has visible effect if the pattern specifies exponential
                  (also known as scientific) format, like
                  <code class="inline-code">"0.##E0"</code>.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">minusSign</code></td>


                  <td>The single character used as minus sign (like
                  <code class="inline-code">"-"</code> in <code class="inline-code">-1</code>).</td>

                </tr>


                <tr>
                  <td><code class="inline-code">infinity</code></td>


                  <td>The string (of arbitrary length) used to show
                  infinity.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">nan</code></td>


                  <td>The string (of arbitrary length) used to show
                  not-a-number (NaN).</td>

                </tr>


                <tr>
                  <td><code class="inline-code">percent</code></td>


                  <td>The single character used as the percent symbol (like
                  <code class="inline-code">"%"</code> in <code class="inline-code">50%</code>). Only has
                  visible effect if the pattern contains
                  <code class="inline-code">%</code>.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">perMill</code></td>


                  <td>The single character used as the per-mill symbol (like
                  <code class="inline-code">"‰"</code> in <code class="inline-code">50021‰</code>). Only
                  has visible effect if the pattern contains
                  <code class="inline-code">‰</code>.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">zeroDigit</code></td>


                  <td>The first character in the 10 character range (of
                  character codes) that contains the digits to be used. For
                  example, if this is <code class="inline-code">A</code>, then 1 will
                  <code class="inline-code">B</code>, 2 will be <code class="inline-code">C</code>, and so
                  on.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">currencyCode</code></td>


                  <td>Currency ISO 4217 code. Only has effect when the pattern
                  contains parts that make it a monetary format. It's an error
                  to specify a code that's not a known ISO 4217 code in the
                  Java installation.</td>

                </tr>


                <tr>
                  <td><code class="inline-code">currencySymbol</code></td>


                  <td>Currency symbol; shown where the localized currency name
                  is present in the pattern. Overrides the symbol determined
                  based on the <code class="inline-code">currencyCode</code>.</td>

                </tr>

              </tbody>

                </table>
  </div>


            <p>Regarding the syntax of the options:</p>

            <ul>
              <li>
                <p>The option name and value are separated by equals
                character (<code class="inline-code">=</code>).</p>
              </li>

              <li>
                <p>Options are separated by whitespace and/or optional
                comma (<code class="inline-code">,</code>)</p>
              </li>

              <li>
                <p>The option value can be quoted with apostrophe
                (<code class="inline-code">'</code>) or normal quotation mark
                (<code class="inline-code">"</code>) , like
                <code class="inline-code">exponentSeparator='*10^'</code> or
                <code class="inline-code">exponentSeparator="*10^"</code>. If the value
                itself has to contain the character used for quotation, then
                it has to be entered twice (like <code class="inline-code">infinity='It''s
                infinite'</code>, but you could also write
                <code class="inline-code">infinity="It's infinite"</code>). Backslash has no
                special meaning.</p>
              </li>

              <li>
                <p>Non-string values must not be quoted. Strings only has
                to be quoted if they contain punctuation or whitespace, or any
                other non-letter non-digit non-<code class="inline-code">"_"</code>
                non-<code class="inline-code">"$"</code> characters. Thus, for example, both
                <code class="inline-code">roundingMode=down</code> and
                <code class="inline-code">roundingMode="down"</code> are legal.</p>
              </li>
            </ul>
          
        
          



<h2 class="content-header header-section2" id="ref_builtin_upper_abc">upper_abc</h2>


          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.22.</p>
            </div>


          <p>Same as <a href="https://freemarker.apache.org/docs/ref_builtins_number.html#ref_builtin_lower_abc"><code>lower_abc</code></a>,
          but converts to upper case letters, like <code class="inline-code">"A"</code>,
          <code class="inline-code">"B"</code>, <code class="inline-code">"C"</code>, …,
          <code class="inline-code">"AA"</code>, <code class="inline-code">"AB"</code>, etc.</p>
        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_string.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_date.html"><span>Next</span></a></div></div></div></div>
        </body>
</html>