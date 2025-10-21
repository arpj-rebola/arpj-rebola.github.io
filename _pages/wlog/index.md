---
layout: wlog
permalink: /wlog
backpath: ../../
---

<h1 id="teaching">Verifying Without Loss of Generality</h1>

<div class="summary">
This project works towards extending techniques for reasoning and certification without loss of generality from SAT and combinatorial optimization (e.g. redundance, dominance) to hardware model checking. We target a tighter integration of user input in model checkers
as a middle ground between push-button model checking and proof assistant-based verification.
</div>

{% for category in site.categories %}
{% if category[0] == "wlog-notices" %}
{% for post in category[1] %}
{{ post.content }}
{% endfor %}
{% endif %}
{% endfor %}

<h2>News</h2>

{% for category in site.categories %}
{% if category[0] == "wlog-news" %}
{% for post in category[1] %}
<div class="newspiece">
    <div class="date">
        {{ post.date | date: "%-d/%m/%Y" }}
    </div>
    <div class="newsmain">
        <div class="headline">
            {{ post.title }}
        </div>
        {{ post.content }}
    </div>
</div>
{% endfor %}
{% endif %}
{% endfor %}

<h2>Project description</h2>

A recent surge in custom silicon design for general purpose CPUs, as well as accelerators, led to an increased demand for rigorous and scalable verification techniques. Formal verification can provide strong correctness guarantees and is widely deployed in electronic design automation. However, automated formal verification techniques (such as model checking) suffer from scalability challenges. Whenever these techniques time out or run out of memory, no guarantees are obtained. Tools often feature hard-coded search heuristics and reductions that can alleviate this issue, so long as they can automatically identify the right reduction.

Crucially, this approach fails to leverage the expertise of chip designers, whose deep understanding of their design can aid the verification process. We argue that using the engineer's insight, it is often possible to narrow the search "without loss of generality" (WLOG), thus increasing scalability significantly. Off-the-shelf model checking tools, however, do not provide means to deploy non-standard reductions that are not already built-in. Technically, the developer could modify the original design to obtain a reduced model - at the risk of introducing errors or pruning relevant cases.

To enable the developer to safely exploit their insights about the design, we will extend existing high-level description languages (e.g., Verilog) to enable engineers to express WLOG in a familiar language, and provide tools and techniques to rigorously and automatically validate the assumptions underlying the WLOG reduction (as failure to do so may lead to incorrect verification verdicts). Finally, we will evaluate our approach using existing openly available designs and model checking tools.
