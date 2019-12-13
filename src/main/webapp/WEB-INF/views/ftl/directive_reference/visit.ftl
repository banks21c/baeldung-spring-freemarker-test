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
   <a class="paging-arrow previous" href="ref_directive_userDefined.html"><span>Previous</span></a>
   <a class="paging-arrow next" href="ref_specvar.html"><span>Next</span></a>
  </div>
  <div class="title-wrapper"> 
   <h1 class="content-header header-section1" id="ref_directive_visit" itemprop="headline">visit, recurse, fallback</h1> 
  </div>
 </div>
 <div class="page-menu"> 
  <div class="page-menu-title">
   Page Contents
  </div> 
  <ul>
   <li><a class="page-menu-link" href="#autoid_130" data-menu-target="autoid_130">Synopsis</a></li>
   <li><a class="page-menu-link" href="#autoid_131" data-menu-target="autoid_131">Description</a>
    <ul>
     <li><a class="page-menu-link" href="#autoid_132" data-menu-target="autoid_132">Visit</a></li>
     <li><a class="page-menu-link" href="#autoid_133" data-menu-target="autoid_133">Recurse</a></li>
     <li><a class="page-menu-link" href="#autoid_134" data-menu-target="autoid_134">Fallback</a></li>
    </ul></li>
  </ul> 
 </div>
 <a name="ref.directive.visit"></a> 
 <h2 class="content-header header-section2" id="autoid_130">Synopsis</h2> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#visit <em class="code-color">node</em> using <em class="code-color">namespace</em>&gt;</code>
or
<code class="inline-code">&lt;#visit <em class="code-color">node</em>&gt;</code></pre> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#recurse <em class="code-color">node</em> using <em class="code-color">namespace</em>&gt;</code>
or
<code class="inline-code">&lt;#recurse <em class="code-color">node</em>&gt;</code>
or
<code class="inline-code">&lt;#recurse using <em class="code-color">namespace</em>&gt;</code>
or
<code class="inline-code">&lt;#recurse&gt;</code></pre> 
 <pre class="metaTemplate"><code class="inline-code">&lt;#fallback&gt;</code></pre> 
 <p>Where:</p> 
 <ul> 
  <li> <code class="inline-code"><em class="code-color">node</em></code>: Expression evaluates to a <a href="xgui_expose_dom.html">node variable</a>. </li> 
  <li> <code class="inline-code"><em class="code-color">namespace</em></code>: A <a href="dgui_misc_namespace.html">namespace</a>, or a sequence of namespaces. A namespace can be given with the namespace hash (a.k.a. gate hash), or with a string literal that store the path of template that could be imported. Instead of namespace hashes, you can use plain hashes as well. </li> 
 </ul> 
 <h2 class="content-header header-section2" id="autoid_131">Description</h2> 
 <p>The <code class="inline-code">visit</code> and <code class="inline-code">recurse</code> directives are used for the recursive processing of trees. In practice, this will mostly be used for <a href="xgui.html">processing XML.</a></p> 
 <h3 class="content-header header-section3" id="autoid_132">Visit</h3> 
 <p>When you call <code class="inline-code">&lt;#visit <em class="code-color">node</em>&gt;</code>, it looks for a user-defined directive (like a macro) to invoke that has the name deducted from the node's name (<code class="inline-code"><em class="code-color">node</em>?node_name</code>) and namespace (<code class="inline-code"><em class="code-color">node</em>?node_namespace</code>). The rules of name deduction:</p> 
 <ul> 
  <li> <p>If the node doesn't support node namespaces (as text nodes in XML), then the directive name is simply the name of the node (<code class="inline-code"><em class="code-color">node</em>?node_name</code>). <span class="marked-for-programmers">A node does not support node namespaces if the <code class="inline-code">getNodeNamespace</code> method returns <code class="inline-code">null</code>.</span></p> </li> 
  <li> <p>If the node does support node namespaces (as element nodes in XML), then a prefix deduced from the node namespace maybe appended before the node name with a colon used as separator (e.g. <code class="inline-code">e:book</code>). The prefix, and if there is a prefix used at all, depends on what prefixes has been registered with the <code class="inline-code">ns_prefixes</code> parameter of the <code class="inline-code">ftl</code> directive in the <a href="dgui_misc_namespace.html">FTL namespace</a> where <code class="inline-code">visit</code> looks for the handler directive (which is not necessary the same as the FTL namespace where <code class="inline-code">visit</code> was called from, as you will see later). Concretely, if there was no default namespace registered with <code class="inline-code">ns_prefixes</code> then for nodes that does not belong to any namespace (<span class="marked-for-programmers">when <code class="inline-code">getNodeNamespace</code> returns <code class="inline-code">""</code></span>) no prefix is used. If there was a default namespace registered with <code class="inline-code">ns_prefixes</code> then for nodes that does not belong to any namespace prefix <code class="inline-code">N</code> is used, and for nodes that belong to the default node namespace no prefix is used. Otherwise, in both case, the prefix associated to the node namespace with the <code class="inline-code">ns_prefixes</code> is used. If there is not prefix associated to the node namespace of the node, then <code class="inline-code">visit</code> simply behave as if there was no directive found with the proper name.</p> </li> 
 </ul> 
 <p>The node for which the user-defined directive was invoked is available for it as special variable <code class="inline-code">.node</code>. Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#-- Assume that nodeWithNameX?node_name is "x" --&gt;
&lt;#visit nodeWithNameX&gt;
Done.
&lt;#macro x&gt;
   Now I'm handling a node that has the name "x".
   Just to show how to access this node: this node has &#36;{.node?children?size} children.
&lt;/#macro&gt;</pre>
 </div> 
 <p>The output will be something like:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">   Now I'm handling a node that has the name "x".
   Just to show how to access this node: this node has 3 children.
Done.</pre>
 </div> 
 <p>If one or more namespaces is specified using the optional <code class="inline-code">using</code> clause, then <code class="inline-code">visit</code> will look for the directives in those namespaces only, with the earlier specified namespaces in the list getting priority. If no <code class="inline-code">using</code> clause is specified, the namespace or sequence of namespaces specified with the <code class="inline-code">using</code> clause of the last uncompleted <code class="inline-code">visit</code> call is reused. If there is no such pending <code class="inline-code">visit</code> call, then the current namespace is used. For example, if you execute this template:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#import "n1.ftl" as n1&gt;
&lt;#import "n2.ftl" as n2&gt;

&lt;#-- This will call n2.x (because there is no n1.x): --&gt;
&lt;#visit nodeWithNameX using [n1, n2]&gt;

&lt;#-- This will call the x of the current namespace: --&gt;
&lt;#visit nodeWithNameX&gt;

&lt;#macro x&gt;
  Simply x
&lt;/#macro&gt;</pre>
 </div> 
 <p>and this is <code class="inline-code">n1.ftl</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro y&gt;
  n1.y
&lt;/#macro&gt;</pre>
 </div> 
 <p>and this is <code class="inline-code">n2.ftl</code>:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#macro x&gt;
  n2.x
  &lt;#-- This callc n1.y as it inherits the "using [n1, n2]" from the pending visit call: --&gt;
  &lt;#visit nodeWithNameY&gt;
  &lt;#-- This will call n2.y: --&gt;
  &lt;#visit nodeWithNameY using .namespace&gt;
&lt;/#macro&gt;

&lt;#macro y&gt;
  n2.y
&lt;/#macro&gt;</pre>
 </div> 
 <p>then this will print:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">  n2.x
  n1.y
  n2.y

  Simply x
 </pre>
 </div> 
 <p>If <code class="inline-code">visit</code> doesn't find a user-defined directive in either FTL namespaces with the name identical to the name deduced with the rules described earlier, then it tries to find an user-defined directive with name <code class="inline-code">@<em class="code-color">node_type</em></code>, or if the node does not support node type property (i.e. <code class="inline-code"><em class="code-color">node</em>?node_type</code> returns undefined variable), then with name <code class="inline-code">@default</code>. For the lookup, it uses the same mechanism as was explained earlier. If it still doesn't find an user-defined directive to handle the node, then <code class="inline-code">visit</code> stops template processing with error. Some XML specific node types have special handling in this regard; see: <a href="xgui_declarative_details.html">XML Processing Guide/Declarative XML processing/Details</a>. Example:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#-- Assume that nodeWithNameX?node_name is "x" --&gt;
&lt;#visit nodeWithNameX&gt;

&lt;#-- Assume that nodeWithNameY?node_type is "foo" --&gt;
&lt;#visit nodeWithNameY&gt;

&lt;#macro x&gt;
Handling node x
&lt;/#macro&gt;

&lt;#macro @foo&gt;
There was no specific handler for node &#36;{node?node_name}
&lt;/#macro&gt;</pre>
 </div> 
 <p>This would print:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-output">Handling node x

There was no specific handler for node y

 </pre>
 </div> 
 <h3 class="content-header header-section3" id="autoid_133">Recurse</h3> 
 <a name="ref.directive.recurse"></a> 
 <p>The <code class="inline-code">&lt;#recurse&gt;</code> directive is really syntactic sugar. It visits all children nodes of the node (and not the node itself). So, to write:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#recurse <em>someNode</em> using <em>someLib</em>&gt;</pre>
 </div> 
 <p>is equivalent to writing:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list <em>someNode</em>?children as <em>child</em>&gt;&lt;#visit <em>child</em> using <em>someLib</em>&gt;&lt;/#list&gt;</pre>
 </div> 
 <p>However, target node is optional in the <code class="inline-code">recurse</code> directive. If the target node is unspecified, it simply uses the <code class="inline-code">.node</code>. Thus, the terse instruction <code class="inline-code">&lt;#recurse&gt;</code> is equivalent to:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#list .node?children as child&gt;&lt;#visit child&gt;&lt;/#list&gt;</pre>
 </div> 
 <p>As a side comment for those who are familiar with XSLT, <code class="inline-code">&lt;#recurse&gt;</code> is pretty much exactly analogous to the <code class="inline-code">&lt;xsl:apply-templates/&gt;</code> instruction in XSLT.</p> 
 <h3 class="content-header header-section3" id="autoid_134">Fallback</h3> 
 <a name="ref.directive.fallback"></a> 
 <p>As you could learn earlier, in the documentation of the <code class="inline-code">visit</code> directive, the user-defined directive that handles the node is maybe searched in multiple FTL name-spaces. The <code class="inline-code">fallback</code> directive can be used in a user-defined directive that was invoked to handle a node. It directs FreeMarker to continue the searching for the user-defined directive in the further name-spaces (that is, in the name-spaces that are after the name-space of the currently invoked user-defined directive in the list of name-spaces). If a handler for the node is found then it is invoked, otherwise <code class="inline-code">fallback</code> does nothing.</p> 
 <p>A typical usage of this to write customization layer over a handler library, that sometimes passes the handling to the customized library:</p> 
 <div class="code-wrapper">
  <pre class="code-block code-template">&lt;#import "/lib/docbook.ftl" as docbook&gt;

&lt;#--
  We use the docbook library, but we override some handlers
  in this namespace.
--&gt;
&lt;#visit document using [.namespace, docbook]&gt;

&lt;#--
  Override the "programlisting" handler, but only in the case if
  its "role" attribute is "java"
--&gt;
&lt;#macro programlisting&gt;
  &lt;#if .node.@role[0]!"" == "java"&gt;
    &lt;#-- Do something special here... --&gt;
    ...
  &lt;#else&gt;
    &lt;#-- Just use the original (overidden) handler --&gt;
    &lt;#fallback&gt;
  &lt;/#if&gt;
&lt;/#macro&gt;</pre>
 </div> 

</div>
</body>
</html>
