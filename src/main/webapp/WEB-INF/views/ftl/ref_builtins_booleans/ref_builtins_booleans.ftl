<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_date.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_sequence.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_boolean" itemprop="headline">Built-ins for booleans</h1>
</div></div><div class="page-menu">
<div class="page-menu-title">Page Contents</div>
<ul><li><a class="page-menu-link" href="#ref_builtin_c_boolean" data-menu-target="ref_builtin_c_boolean">c (when used with boolean)</a></li><li><a class="page-menu-link" href="#ref_builtin_string_for_boolean" data-menu-target="ref_builtin_string_for_boolean">
string (when used with a boolean value)</a></li>
<li><a class="page-menu-link" href="#ref_builtin_then" data-menu-target="ref_builtin_then">then</a></li></ul> </div>
          
<h2 class="content-header header-section2" id="ref_builtin_c_boolean">c (when used with boolean)</h2>


          

          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.20.</p>
            </div>


          <p>This built-in converts a boolean to string for a
          "computer language" as opposed to for human audience.
          The result will be <code class="inline-code">"true"</code> or
          <code class="inline-code">"false"</code>, regardless of the
          <code class="inline-code">boolean_format</code> configuration setting, as that
          setting is meant to specify the format for human consumption. When
          generating boolean literals for JavaScript and such, this should be
          used.</p>

          <p>If you only generate output that's computer language and isn't
          read by end-users, you may want to set the
          <code class="inline-code">boolean_format</code> configuration setting to
          <code class="inline-code">c</code> (since FreeMarker 2.3.29), in which case
          <code class="inline-code">$&#123;<em class="code-color">aBoolean</em>&#125;</code> will have
          the same output as
          <code class="inline-code">$&#123;<em class="code-color">aBoolean</em>?c&#125;</code>.</p>

          <p>Note that this built-in <a href="ref_builtins_number.html#ref_builtin_c">also
          works on strings</a>.</p>
        
<div class="code-wrapper">
	<pre class="code-block code-template">
&lt;#assign foo = true>
&#36;{foo?c}	
&lt;#assign foo = false>
&#36;{foo?c}	
	</pre>
</div>

<div class="code-wrapper">
	<pre class="code-block code-output">
<#assign foo = true>
${foo?c}	
<#assign foo = false>
${foo?c}	
	</pre>
</div>          



<h2 class="content-header header-section2" id="ref_builtin_string_for_boolean">string (when used with a boolean value)</h2>


          

          

          

          

          

          <p>Converts a boolean to a string. You can use it in two
          ways:</p>

          <ul>
            <li>
              <p>As <code class="inline-code">foo?string("yes", "no")</code>: Formats the
              boolean value to the first parameter (here:
              <code class="inline-code">"yes"</code>) if the boolean is true, and to the
              second parameter (here: <code class="inline-code">"no"</code>) if it's false.
              Unless you only meant to format a boolean with simple literals,
              use <a href="#ref_builtin_then"><code>?then(<em>whenTrue</em>,
              <em>whenFalse</em>)</code></a> instead,
              as that has less type limitations, and it evaluate its
              parameters lazily! The return value of
              <code class="inline-code">?string</code> is always a string (unlike for
              <code class="inline-code">?then</code>), because if the parameters aren't
              strings, they will be converted to strings. Also note that both
              parameters are evaluated (unlike for <code class="inline-code">?then</code>),
              despite that only one of them will be used; this might has
              negative impact if the parameters aren't just literals.</p>
            </li>

            <li>
              <p><code class="inline-code">foo?string</code>: <em>Deprecated
              starting from FreeMarker 2.3.20: use <a href="#ref_builtin_c_boolean"><code>?c</code></a>
              instead, or set the <code class="inline-code">boolean_format</code> <a href="ref_directive_setting.html">setting</a> to something like
              <code class="inline-code">"yes,no"</code> and then the conversion can happen
              automatically</em>. If you still need to know about this,
              this will convert the boolean to string using the default
              strings for representing true and false values. By default, true
              is rendered as <code class="inline-code">"true"</code> and false is rendered
              as <code class="inline-code">"false"</code>. This is mostly only useful if you
              generate source code with FreeMarker <em>(but use
              <code class="inline-code">?c</code> for that starting from 2.3.20)</em>.
              To change these default strings, you can use the
              <code class="inline-code">boolean_format</code> <a href="ref_directive_setting.html">setting</a>.</p>

              <p class="programmers-note">Note that in the very rare case when
              a value is multi-typed and is both a boolean and a string, then
              the string value of the variable will be returned, and so the
              <code class="inline-code">boolean_format</code> setting will have no
              effect.</p>
            </li>
          </ul>
        
<div class="code-wrapper">
	<pre class="code-block code-template">
&lt;#assign foo = true>
$&#123;foo?string("yes", "no")}	
&lt;#assign foo = false>
$&#123;foo?string("yes", "no")}		
	</pre>
</div>

<div class="code-wrapper">
	<pre class="code-block code-output">
<#assign foo = true>
${foo?string("yes", "no")}	
<#assign foo = false>
${foo?string("yes", "no")}	
	</pre>
</div>          



<h2 class="content-header header-section2" id="ref_builtin_then">then</h2>


          

          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.23.</p>
            </div>


          <p>Used like
          <code class="inline-code"><em class="code-color">booleanExp</em>?then(<em class="code-color">whenTrue</em>,
          <em class="code-color">whenFalse</em>)</code>, fills the same role
          as the ternary operator in C-like languages (i.e.,
          <code class="inline-code"><em class="code-color">booleanExp</em> ?
          <em class="code-color">whenTrue</em> :
          <em class="code-color">whenFalse</em></code>). If
          <code class="inline-code"><em class="code-color">booleanExp</em></code> evaluates
          to boolean true then it evaluates and returns its first argument, or
          else if <code class="inline-code"><em class="code-color">booleanExp</em></code>
          evaluates to boolean false then it evaluates and return its second
          argument. Off course, all three expression can be arbitrary complex.
          The argument expressions can have any type, even different
          types.</p>

          <p>An important special property of this built-in is that only
          one of the argument expressions will be evaluated. This is unlike
          with normal method calls, where all argument expressions are
          evaluated, regardless if the method will need them. This also means
          that the argument that's not needed can even refer to missing
          variables without causing error. (It still can't be syntactically
          invalid of course.)</p>

          <p>Example:</p>

          

<div class="code-wrapper">
<pre class="code-block code-template">
&lt;#assign foo = true&gt;
$&#123;foo?then('Y', 'N')&#125;

&lt;#assign foo = false&gt;
$&#123;foo?then('Y', 'N')&#125;

&lt;#assign x = 10&gt;
&lt;#assign y = 20&gt;
&lt;#-- Prints 100 plus the maximum of x and y: --&gt;
$&#123;100 + (x &gt; y)?then(x, y)&#125;
</pre>
</div>

          

<div class="code-wrapper">
<pre class="code-block code-output">

<#assign foo = true>
${foo?then('Y', 'N')}

<#assign foo = false>
${foo?then('Y', 'N')}

<#assign x = 10>
<#assign y = 20>
<#-- Prints 100 plus the maximum of x and y: -->
${100 + (x > y)?then(x, y)}

</pre>
</div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>If you need to choose based on a non-boolean value, you
            should use the <a href="ref_builtins_type_independent.html#ref_builtin_switch"><code>switch</code>
            built-in</a> instead of nesting multiple
            <code class="inline-code">then</code>-s into each other, like
            <code class="inline-code">priority?switch(1, "low", 2, "medium", 3,
            "high")</code>, or even <code class="inline-code">true?switch(priority &lt;= 1,
            "low", priority == 2, "medium", priority &gt;= 3,
            "high")</code>.</p>
            </div>

<div class="code-wrapper">
	<pre class="code-block code-template">
&lt;#assign priority = 1>
$&#123;priority?switch(1, "low", 2, "medium", 3, "high")}

&lt;#assign priority = 3>
$&#123;true?switch(priority <= 1, "low", priority == 2, "medium", priority >= 3, "high")}
	</pre>
</div>

<div class="code-wrapper">
	<pre class="code-block code-output">
	
<#assign priority = 1>
${priority?switch(1, "low", 2, "medium", 3, "high")}

<#assign priority = 3>
${true?switch(priority <= 1, "low", priority == 2, "medium", priority >= 3, "high")}
	
	</pre>
</div>

        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_date.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_sequence.html"><span>Next</span></a></div></div></div></div>
</body>
</html>