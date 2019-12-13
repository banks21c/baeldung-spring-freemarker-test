<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css">
<link rel="stylesheet" type="text/css" href="/resources/docgen.min.css">
</head>
<body>
<div class="col-right"><div class="page-content"><div class="page-title"><div class="pagers top"><a class="paging-arrow previous" href="ref_builtins_node.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_type_independent.html"><span>Next</span></a></div><div class="title-wrapper">
<h1 class="content-header header-section1" id="ref_builtins_loop_var" itemprop="headline">Loop variable built-ins</h1>
</div></div><div class="page-menu">
<div class="page-menu-title">Page Contents</div>
<ul><li><a class="page-menu-link" href="#ref_builtin_counter" data-menu-target="ref_builtin_counter">counter</a></li><li><a class="page-menu-link" href="#ref_builtin_has_next" data-menu-target="ref_builtin_has_next">has_next</a></li><li><a class="page-menu-link" href="#ref_builtin_index" data-menu-target="ref_builtin_index">index</a></li><li><a class="page-menu-link" href="#ref_builtin_is_even_item" data-menu-target="ref_builtin_is_even_item">is_even_item</a></li><li><a class="page-menu-link" href="#ref_builtin_is_first" data-menu-target="ref_builtin_is_first">is_first</a></li><li><a class="page-menu-link" href="#ref_builtin_is_last" data-menu-target="ref_builtin_is_last">is_last</a></li><li><a class="page-menu-link" href="#ref_builtin_is_odd_item" data-menu-target="ref_builtin_is_odd_item">is_odd_item</a></li><li><a class="page-menu-link" href="#ref_builtin_item_cycle" data-menu-target="ref_builtin_item_cycle">item_cycle</a></li><li><a class="page-menu-link" href="#ref_builtin_item_parity" data-menu-target="ref_builtin_item_parity">item_parity</a></li><li><a class="page-menu-link" href="#ref_builtin_item_parity_cap" data-menu-target="ref_builtin_item_parity_cap">item_parity_cap</a></li></ul> </div>  <div class="callout note">
    <strong class="callout-label">Note:</strong>

          <p>Loop variable built-ins only exists since FreeMarker
          2.3.23.</p>
          </div>
<p>These built-ins you can only use with the loop variable of the
        <a href="ref_directive_list.html"><code>list</code> and
        <code>items</code> directives</a> (and of the deprecated
        <code class="inline-code">foreach</code> directive). Some explanation of that
        follows (<code class="inline-code"><em class="code-color">loopVar</em>?index</code>
        returns the 0-based index in the listable value we iterate
        through):</p>

<div class="code-wrapper"><pre class="code-block code-template">&lt;#-- Note: x is a loop variable --&gt;
&lt;#list ['a', 'b', 'c'] as x&gt;
  &#36;{x?index}
&lt;/#list&gt;</pre></div>

<div class="code-wrapper">
<pre class="code-block code-output">
<#-- Note: x is a loop variable -->
<#list ['a', 'b', 'c'] as x>
  ${x?index}
</#list>
</pre>
</div>


<p>When the <code class="inline-code">list</code> directive doesn't specify the
        loop variable, these built-ins are used with the loop variable of the
        <code class="inline-code">items</code> directive:</p>

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c']&gt;
  &lt;ul&gt;
   &lt;#items as x&gt;
     &lt;li&gt;&#36;{x?index}&lt;/li&gt;
   &lt;/#items&gt;
  &lt;/ul&gt;
&lt;/#list&gt;</pre></div>

<div class="code-wrapper">
<pre class="code-block code-output">
<#list ['a', 'b', 'c']>
  <ul>
   <#items as x>
     <li>${x?index}</li>
   </#items>
  </ul>
</#list>
</pre>
</div>

<p>Loop variable built-ins only use the <em>name</em>
        of loop variable, so that they can identify the related ongoing
        iteration. They don't read the <em>value</em> of the loop
        variable. Hence, this is a parsing error:</p>

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c'] as x&gt;
  &lt;#assign y = x&gt;
  &#36;{y?index} &lt;#-- ERROR: y isn't a loop variable --&gt;
&lt;/#list&gt;</pre></div>
          
<div class="code-wrapper">
<pre class="code-block code-output">
</pre>
</div>


<h2 class="content-header header-section2" id="ref_builtin_counter">counter</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Returns the 1-based index where the iteration (which is
          identified by the loop variable name) currently stands.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c'] as i&gt;
  &#36;{i?counter}: &#36;{i}
&lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#list ['a', 'b', 'c'] as i>
  ${i?counter}: ${i}
</#list>
</pre>
</div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>For the 0-based index, use the <a href="#ref_builtin_index"><code>index</code>
            built-in</a>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_has_next">has_next</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Tells if the item where the iteration (which is identified by
          the loop variable name) currently stands is not the last
          item.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c'] as i&gt;&#36;{i?has_next?c} &lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['a', 'b', 'c'] as i>${i?has_next?c} </#list>

</pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>For separating items with commas and such, use
            <code class="inline-code">&lt;#sep&gt;<em class="code-color">separator</em>&lt;/#sep&gt;</code>
            instead of <code class="inline-code">&lt;#if
            <em class="code-color">var</em>?has_next&gt;<em class="code-color">separator</em>&lt;/#if&gt;</code>,
            as it's more readable. (Furthermore the
            <code class="inline-code">&lt;/#sep&gt;</code> can be often omitted, like in
            <code class="inline-code">&lt;#list <em class="code-color">...</em> as
            <em class="code-color">var</em>&gt;<em class="code-color">...</em>&#36;{<em class="code-color">var</em>}<em class="code-color">...</em>&lt;#sep&gt;<em class="code-color">separator</em>&lt;/#list&gt;</code>)</p>
            </div>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>If you need the inverse of this built-in, use
            <code class="inline-code"><em class="code-color">var</em>?is_last</code> instead
            of <code class="inline-code">!<em class="code-color">var</em>?has_next</code>,
            because it's more readable.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_index">index</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Returns the 0-based index where the iteration (which is
          identified by the loop variable name) currently stands.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c'] as i&gt;
  &#36;{i?index}: &#36;{i}
&lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['a', 'b', 'c'] as i>
  ${i?index}: ${i}
</#list>
  
</pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>For the 1-based index, use the <a href="#ref_builtin_counter"><code>counter</code>
            built-in</a>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_is_even_item">is_even_item</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Tells if the item where the iteration (which is identified by
          the loop variable name) currently stands has an even 1-based
          index.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c', 'd'] as i&gt;&#36;{i?is_even_item?c} &lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['a', 'b', 'c', 'd'] as i>${i?is_even_item?c} </#list>

</pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>To make tables with alternating row colors and such, use
            <a href="#ref_builtin_item_parity"><code><em>var</em>?item_parity</code></a>
            or <a href="#ref_builtin_item_cycle"><code><em>var</em>?item_cycle(...)</code></a>
            instead.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_is_first">is_first</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Tells if the item where the iteration (which is identified by
          the loop variable name) currently stands is the first item.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c'] as i&gt;&#36;{i?is_first?c} &lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['a', 'b', 'c'] as i>${i?is_first?c} </#list>

</pre></div>
        
          



<h2 class="content-header header-section2" id="ref_builtin_is_last">is_last</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Tells if the item where the iteration (which is identified by
          the loop variable name) currently stands is the last item.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c'] as i&gt;&#36;{i?is_last?c} &lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['a', 'b', 'c'] as i>${i?is_last?c} </#list>

</pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>If you need the inverse of this built-in, use
            <code class="inline-code"><em class="code-color">var</em>?has_next</code> instead
            of <code class="inline-code">!<em class="code-color">var</em>?is_last</code>,
            because it's more readable.</p>
            </div>


            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>For separating items with commas and such, use
            <code class="inline-code">&lt;#sep&gt;<em class="code-color">separator</em>&lt;/#sep&gt;</code>
            instead of <code class="inline-code">&lt;#if
            <em class="code-color">var</em>?has_next&gt;<em class="code-color">separator</em>&lt;/#if&gt;</code>,
            as it's more readable. (Furthermore the
            <code class="inline-code">&lt;/#sep&gt;</code> can be often omitted, like in
            <code class="inline-code">&lt;#list <em class="code-color">...</em> as
            <em class="code-color">var</em>&gt;<em class="code-color">...</em>&#36;{<em class="code-color">var</em>}<em class="code-color">...</em>&lt;#sep&gt;<em class="code-color">separator</em>&lt;/#list&gt;</code>)</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_is_odd_item">is_odd_item</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Tells if the item where the iteration (which is identified by
          the loop variable name) currently stands has an odd 1-based
          index.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c', 'd'] as i&gt;&#36;{i?is_odd_item?c} &lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['a', 'b', 'c', 'd'] as i>${i?is_odd_item?c} </#list>

</pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>To make tables with alternating row colors and such, use
            <a href="#ref_builtin_item_parity"><code><em>var</em>?item_parity</code></a>
            or <a href="#ref_builtin_item_cycle"><code><em>var</em>?item_cycle(...)</code></a>
            instead.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_item_cycle">item_cycle</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>This is a more generic version of the <a href="#ref_builtin_item_parity"><code>item_parity</code>
          built-in</a>, where you can specify what value to use instead of
          <code class="inline-code">"odd"</code> and <code class="inline-code">"even"</code>. It also
          allows more than 2 values that it will cycle through.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c', 'd', 'e', 'f', 'g'] as i&gt;
  &lt;tr class="&#36;{i?item_cycle('row1', 'row2', 'row3')}"&gt;&#36;{i}&lt;/tr&gt;
&lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">

<#list ['a', 'b', 'c', 'd', 'e', 'f', 'g'] as i>
  &lt;tr class="${i?item_cycle('row1', 'row2', 'row3')}">${i}&lt;/tr>
</#list>
  
  </pre></div>

          <p>Some details:</p>

          <ul>
            <li>
              <p>The number of arguments must be at least 1, and has no
              upper limit.</p>
            </li>

            <li>
              <p>The type of the arguments can be anything, they doesn't
              have to be strings.</p>
            </li>
          </ul>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>Use the <a href="#ref_builtin_item_parity"><code>item_parity</code>
            built-in</a> instead if the values you need are
            <code class="inline-code">"odd"</code> and <code class="inline-code">"even"</code>.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_item_parity">item_parity</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Returns <code class="inline-code">"odd"</code> or <code class="inline-code">"even"</code>
          string value, depending on the parity of the 1-based index where the
          iteration (which is identified by the loop variable name) currently
          stands. This is commonly used for alternating color for table
          rows:</p>

          

<div class="code-wrapper"><pre class="code-block code-template">

&lt;#list ['a', 'b', 'c', 'd'] as i&gt;
  &lt;tr class="&#36;{i?item_parity}Row"&gt;&#36;{i}&lt;/tr&gt;
&lt;/#list&gt;

</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">


<#list ['a', 'b', 'c', 'd'] as i>
  &lt;tr class="${i?item_parity}Row">${i}&lt;/tr>
</#list>
  
  </pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>Use the <a href="#ref_builtin_item_parity"><code>item_parity_cap</code>
            built-in</a> for capitalized <code class="inline-code">"Odd"</code> and
            <code class="inline-code">"Even"</code>. Use the <a href="#ref_builtin_item_cycle"><code>item_cycle</code>
            built-in</a> to specify custom values, or more then two
            values.</p>
            </div>

        
          



<h2 class="content-header header-section2" id="ref_builtin_item_parity_cap">item_parity_cap</h2>


          

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>This built-in is available since FreeMarker 2.3.23.</p>
            </div>


          <p>Returns <code class="inline-code">"Odd"</code> or <code class="inline-code">"Even"</code>
          string value (note the capitalization), depending on the parity of
          the 1-based index where the iteration (which is identified by the
          loop variable name) currently stands.</p>

          

<div class="code-wrapper"><pre class="code-block code-template">&lt;#list ['a', 'b', 'c', 'd'] as i&gt;
  &lt;tr class="row&#36;{i?item_parity_cap}"&gt;&#36;{i}&lt;/tr&gt;
&lt;/#list&gt;</pre></div>

          

<div class="code-wrapper"><pre class="code-block code-output">
<#list ['a', 'b', 'c', 'd'] as i>
  &lt;tr class="row${i?item_parity_cap}">${i}&lt;/tr>
</#list>
  
  </pre></div>

            <div class="callout note">
    <strong class="callout-label">Note:</strong>

            <p>Use the <a href="#ref_builtin_item_parity"><code>item_parity</code>
            built-in</a> for lower case <code class="inline-code">"odd"</code> and
            <code class="inline-code">"even"</code>.</p>
            </div>

        <div class="bottom-pagers-wrapper"><div class="pagers bottom"><a class="paging-arrow previous" href="ref_builtins_node.html"><span>Previous</span></a><a class="paging-arrow next" href="ref_builtins_type_independent.html"><span>Next</span></a></div></div></div></div>
</body>
</html>