---
layout: personal
title: Teaching
permalink: /teaching/
backpath: ../../
---

<h1 id="teaching">Teaching</h1>

<ol class="teaching">

{% for semester in site.data.teaching.main %}

<li>{{ semester.semester }}</li>

<ul class="semester">

{% for course in semester.courses %}

<li><a href="{{ course.link }}">{{ course.course }}</a>&nbsp;({{ course.university }})</li>

{% endfor %}

</ul>

{% endfor %}

</ol>
