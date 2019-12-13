<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_loop_var.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_expert.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_type_independent" itemprop="headline">Type independent built-ins</h1>
</div></div><p>These are the built-ins that don't care (much) about the type of
        their left hand argument.</p>
          



<h2 class="content-header header-section2" id="ref_builtin_switch">switch</h2>


          

          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in exists since FreeMarker 2.3.23.</p>
            </div>


          <p>This is basically the in-line (expression) version of the
          <a href="ref_directive_switch.html"><code>switch</code>-<code>case</code>-<code>default</code>
          directives</a>. Its generic format is like
          <code class="inline-code"><em class="code-color">matchedValue</em>?switch(<em class="code-color">case1</em>,
          <em class="code-color">result1</em>,
          <em class="code-color">case2</em>,
          <em class="code-color">result2</em>, ...
          <em class="code-color">caseN</em>,
          <em class="code-color">resultN</em>,
          <em class="code-color">defaultResult</em>)</code>, where
          <code class="inline-code"><em class="code-color">defaultResult</em></code> can be
          omitted. Example:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['r', 'w', 'x', 's'] as flag&gt;
  &#36;{flag<strong>?switch('r', 'readable', 'w' 'writable', 'x', 'executable', 'unknown flag: ' + flag)</strong>}
&lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['r', 'w', 'x', 's'] as flag>
  ${flag?switch('r', 'readable', 'w' 'writable', 'x', 'executable', 'unknown flag: ' + flag)}
</#list>
  
  </pre></div>

          <p>That is, <code class="inline-code">switch</code> will find the first
          <code class="inline-code"><em class="code-color">case</em></code> parameter (left
          to right) whose value equals to
          <code class="inline-code"><em class="code-color">matchedValue</em></code>, then it
          returns the value of the
          <code class="inline-code"><em class="code-color">result</em></code> parameter
          that's directly after that
          <code class="inline-code"><em class="code-color">case</em></code> parameter. If it
          doesn't find an equal
          <code class="inline-code"><em class="code-color">case</em></code>, then it will
          return the value of the
          <code class="inline-code"><em class="code-color">defaultResult</em></code>, or if
          there's no
          <code class="inline-code"><em class="code-color">defaultResult</em></code>
          parameter (i.e., if the number of parameters is even) then it stops
          the template processing with error.</p>

          <p>Further details:</p>

          <ul>
            <li>
              <p>The comparison of
              <code class="inline-code"><em class="code-color">matchedValue</em></code> to
              the <code class="inline-code"><em class="code-color">case</em></code> parameter
              value behaves exactly like <a href="dgui_template_exp.html#dgui_template_exp_comparison">the <code>==</code>
              operator</a>. Hence it only compares scalars and only
              same-type values. Thus, something like <code class="inline-code">x?switch(1,
              "r1", "c2", "r2")</code> doesn't make sense, as if
              <code class="inline-code">x</code> is non-numerical then the first case will
              cause error, and if <code class="inline-code">x</code> is numerical then the
              second case will cause error (unless <code class="inline-code">x</code> is
              <code class="inline-code">1</code>, as then we won't do further comparisons
              after the first one).</p>
            </li>

            <li>
              <p>Unlike with normal method calls, only those parameters of
              <code class="inline-code">switch(<em class="code-color">...</em>)</code> are
              evaluated that are indeed needed. For example, in
              <code class="inline-code">two()?switch(c1(), r1(), c2(), r2(), c3(),
              r3())</code>, if <code class="inline-code">two()</code> returns
              <code class="inline-code">2</code>, <code class="inline-code">c1()</code> returns
              <code class="inline-code">1</code>, and <code class="inline-code">c2()</code> returns
              <code class="inline-code">2</code>, then only the following functions will be
              called, and in this order: <code class="inline-code">m()</code>,
              <code class="inline-code">c1()</code>, <code class="inline-code">c2()</code>,
              <code class="inline-code">r2()</code>. (Naturally, arguments that aren't
              evaluated can refer to missing variables without causing error.)
              It's guaranteed that the
              <code class="inline-code"><em class="code-color">case</em></code> parameter
              expressions are evaluated left to right, and only until the
              first match was found. It's also guaranteed that only the
              <code class="inline-code"><em class="code-color">result</em></code> expression
              that belongs to the first matching
              <code class="inline-code"><em class="code-color">case</em></code> will be
              evaluated. It's also guaranteed that the
              <code class="inline-code"><em class="code-color">defaultResult</em></code>
              expression will only be evaluated if there was no matching
              <code class="inline-code"><em class="code-color">case</em></code>
              parameter.</p>
            </li>

            <li>
              <p>The <code class="inline-code"><em class="code-color">case</em></code>
              parameter expressions need not be constant values, they can be
              arbitrary complex expressions. Of course, the same goes for and
              the <code class="inline-code"><em class="code-color">result</em></code>,
              <code class="inline-code"><em class="code-color">defaultResult</em></code>, and
              <code class="inline-code"><em class="code-color">matchedValue</em></code>.</p>
            </li>

            <li>
              <p>There's no restriction regarding the type of the
              <code class="inline-code"><em class="code-color">case</em></code> parameter
              values, like they can be strings, or numbers, or dates, etc.
              However, because of how the <code class="inline-code">==</code> operator
              works, it doesn't make sense to use
              <code class="inline-code"><em class="code-color">case</em></code> parameters of
              different types inside the <em>same</em>
              <code class="inline-code">switch</code> (see earlier why).</p>
            </li>

            <li>
              <p>Unlike with the <a href="ref_directive_switch.html"><code>case</code>
              directive</a>, there's no fall-through behavior there, that
              is, there's no need for an equivalent of the
              <code class="inline-code">break</code> directive.</p>
            </li>
          </ul>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>If you need to switch by a boolean value, you should use the
            <a href="ref_builtins_boolean.html#ref_builtin_then"><code>then</code>
            built-in</a> instead, like
            <code class="inline-code"><em class="code-color">matchedBoolean</em>?then(<em class="code-color">whenTrue</em>,
            <em class="code-color">whenFalse</em>)</code>.</p>
            </div>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>If you need to do arbitrary logical tests instead of simple
            equality comparisons at the
            <code class="inline-code"><em class="code-color">case</em></code> parameters, you
            can do something like this (here we tests for ranges):
            <code class="inline-code">true?switch(priority &lt;= 1, "low", priority == 2,
            "medium", priority &gt;= 3, "high")</code></p>
            </div>

        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_loop_var.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_expert.html"><span>Next</span></a></div></div></div></div>
</body>
</html>