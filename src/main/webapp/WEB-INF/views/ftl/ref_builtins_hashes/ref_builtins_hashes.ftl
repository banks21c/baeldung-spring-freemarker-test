<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>

<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_sequence.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_node.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_hash" itemprop="headline">Built-ins for hashes</h1>
</div></div><div class="page-menu">
<div class="page-menu-title">Page Contents</div>
<ul><li><a class="page-menu-link" href="#ref_builtin_keys" data-menu-target="ref_builtin_keys">keys</a></li><li><a class="page-menu-link" href="#ref_builtin_values" data-menu-target="ref_builtin_values">values</a></li></ul> </div>
          



<h2 class="content-header header-section2" id="ref_builtin_keys">keys</h2>


          

          <p>A sequence that contains all the lookup keys in the
          hash.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign myHash = { "name": "mouse", "price": 50 }&gt;
&lt;#list myHash?keys as k&gt;
  &#36;{k}
&lt;/#list&gt;</pre></div>

          

<div class="code-wrapper">
<pre class="code-block code-output">

<#assign myHash = { "name": "mouse", "price": 50 }>
<#list myHash?keys as k>
  ${k}
</#list>

  </pre>
  </div>

          <p>Note that not all hashes support this (ask the programmer if a
          certain hash allows this or not).</p>

          <p>Since hashes do not define an order for their sub variables in
          general, the order in which key names are returned can be arbitrary.
          However, some hashes maintain a meaningful order (ask the programmer
          if a certain hash does that or not). For example, hashes created
          with the above <code class="inline-code">{<em class="code-color">...</em>}</code>
          syntax preserve the same order as you have specified the sub
          variables.</p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>To list both the keys and the values, you can use
            <code class="inline-code">&lt;#list attrs as key,
            value&gt;...&lt;#list&gt;</code>; see the <a href="ref_directive_list.html#ref.directive.list"><code>list</code>
            directive</a>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_values">values</h2>


          

          <p>A sequence that contains all the variables (the values in the
          key-value pairs) in the hash.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#assign myHash = { "name": "mouse", "price": 50 }&gt;
&lt;#list myHash?values as v&gt;
  &#36;{v}
&lt;/#list&gt;</pre></div>

          

<div class="code-wrapper">
<pre class="code-block code-output">

<#assign myHash = { "name": "mouse", "price": 50 }>
<#list myHash?values as v>
  ${v}
</#list>
  
  </pre>
  </div>

          <p>Note that not all hashes support this (ask the programmer if a
          certain hash allows this or not).</p>

          <p>As of the order in which the values are returned, the same
          applies as with the <code class="inline-code">keys</code> built-in; see there.
          Furthermore, it's not guaranteed that the order of the values
          corresponds to the order of the keys returned by the
          <code class="inline-code">keys</code> build-in.</p>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>To list both the keys and the values, you can use
            <code class="inline-code">&lt;#list attrs as key,
            value&gt;...&lt;#list&gt;</code>; see the <a href="ref_directive_list.html#ref.directive.list"><code>list</code>
            directive</a>.</p>
            </div>

        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_sequence.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_node.html"><span>Next</span></a></div></div></div></div>

</body>
</html>