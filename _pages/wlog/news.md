---
layout: wlog
title: News
permalink: /wlog/news/
backpath: ../../
---

<h1 id="publications">News</h1>

{% for category in site.categories %}
{% if category[0] == "wlog-notices" %}
{% for post in category[1] %}
{{ post.content }}
{% endfor %}
{% endif %}
{% endfor %}

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