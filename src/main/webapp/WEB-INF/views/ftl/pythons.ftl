<table border="1">
    <tr>
        <td>
            <pre>
            &lt;#if animals.python.price == 0&gt;
              Pythons are free today!
            &lt;/#if&gt;
            </pre>
        </td>
        <td>
            <#if animals.python.price == 0>
              Pythons are free today!
            </#if>
        </td>

    </tr>
    <tr>
        <td>
            <pre>
            &lt;#if animals.python.price != 0&gt;
              Pythons are not free today!
            &lt;/#if&gt;
            </pre>
        </td>
        <td>
            <#if animals.python.price != 0>
              Pythons are not free today!
            </#if>
        </td>
    </tr>
    <tr>
        <td>
            <pre>
            &lt;#if animals.python.price &lt; animals.elephant.price&gt;
              Pythons are cheaper than elephants today.
            &lt;/#if&gt;
            </pre>
        </td>
        <td>
            <#if animals.python.price < animals.elephant.price>
              Pythons are cheaper than elephants today.
            </#if>
        </td>
    </tr>
    <tr>
        <td>
            <pre>
            &lt;#if animals.python.price &lt; animals.elephant.price&gt;
              Pythons are cheaper than elephants today.
            &lt;#else&gt;
              Pythons are not cheaper than elephants today.
            &lt;/#if&gt;
            </pre>
        </td>
        <td>
            <#if animals.python.price < animals.elephant.price>
              Pythons are cheaper than elephants today.
            <#else>
              Pythons are not cheaper than elephants today.
            </#if>
        </td>
    </tr>
    <tr>
        <td>
            <pre>
            &lt;#if animals.python.price &lt; animals.elephant.price&gt;
              Pythons are cheaper than elephants today.
            &lt;#elseif animals.elephant.price &lt; animals.python.price&gt;
              Elephants are cheaper than pythons today.
            &lt;#else&gt;
              Elephants and pythons cost the same today.
            &lt;/#if&gt;
            </pre>
        </td>
        <td>
            <#if animals.python.price < animals.elephant.price>
              Pythons are cheaper than elephants today.
            <#elseif animals.elephant.price < animals.python.price>
              Elephants are cheaper than pythons today.
            <#else>
              Elephants and pythons cost the same today.
            </#if>
        </td>
    </tr>
    <tr>
        <td>
            <pre>
            &lt;#if animals.python.isProtected&gt;
              Pythons are protected animals!
            &lt;/#if&gt;
            </pre>
        </td>
        <td>
            <#if animals.python.isProtected>
              Pythons are protected animals!
            </#if>
        </td>
    </tr>
</table>

