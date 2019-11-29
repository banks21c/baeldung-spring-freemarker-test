&lt;#if animals.python.price == 0&gt;
  Pythons are free today!
&lt;/#if&gt;

&lt;#if animals.python.price != 0&gt;
  Pythons are not free today!
&lt;/#if&gt;

&lt;#if animals.python.price &lt; animals.elephant.price&gt;
  Pythons are cheaper than elephants today.
&lt;/#if&gt;

&lt;#if animals.python.price &lt; animals.elephant.price&gt;
  Pythons are cheaper than elephants today.
&lt;#else&gt;
  Pythons are not cheaper than elephants today.
&lt;/#if&gt;

&lt;#if animals.python.price &lt; animals.elephant.price&gt;
  Pythons are cheaper than elephants today.
&lt;#elseif animals.elephant.price &lt; animals.python.price&gt;
  Elephants are cheaper than pythons today.
&lt;#else&gt;
  Elephants and pythons cost the same today.
&lt;/#if&gt;

&lt;#if animals.python.isProtected&gt;
  Pythons are protected animals!
&lt;/#if&gt;

