---
layout: personal
title: Talks
permalink: /talks/
backpath: ../../
---

<h1 id="talks">Talks</h1>

<ol class="publications">
{% for talk in site.data.talks.main %}

    <li>

        <div class="header">
            {% if talk.slides %}
                <a href="{{ talk.slides }}">{{ talk.title }}</a>&nbsp;({{ talk.year }})
            {% else %}
                <nametitle>{{ talk.title }}</nametitle>&nbsp;({{ talk.year }})
            {% endif %}
        </div>
        <div class="venue">
            {% if talk.link %}
                <a href="{{ talk.link }}">{{ talk.venue }}</a> ({{ talk.kind }}; {{ talk.place }})
            {% else %}
                {{ talk.venue }} ({{ talk.kind }}; {{ talk.place }})
            {% endif %}
        </div>
        <div class="links">
            {% if talk.slides %}
                <a class="btn" href="{{ talk.slides }}">Slides</a>
            {% endif %}
            {% if talk.recording %}
                <a class="btn" href="{{ talk.recording }}">Recording</a>
            {% endif %}
        </div>

    </li>

{% endfor %}
</ol>

