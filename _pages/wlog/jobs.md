---
layout: wlog
title: Jobs
permalink: /wlog/jobs/
backpath: ../../
---

<h1 id="teaching">Jobs</h1>

{% if site.data.wlog.jobs == empty %}

We currently have no openings.
<br>
Unfortunately.

{% else %}

We are currently looking for excellent candidates to join our team at the
<a href="{{ site.data.wlog.affiliation-url }}">{{ site.data.wlog.affiliation }}</a>.

{% endif %}

<ol class="jobs">
{% for job in site.data.wlog.jobs %}

    <li>

        <div class="header">
            <a href="{{ job.link }}">{{ job.title }}</a>&#x2001;(deadline: {{ job.deadline }})
        </div>
        <div class="description">
            {{ job.length }}, starting {{ job.start }}
        </div>

    </li>

{% endfor %}
</ol>