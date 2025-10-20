---
layout: wlog
title: People
permalink: /wlog/people/
backpath: ../../
---

<h1 id="people">People</h1>

<h2>Staff</h2>

{% if site.data.wlog.people.staff != empty %}

{% for person in site.data.wlog.people.staff %}

<div class="person">
    <div class="pfp">
        {% if person.name %}
            <a href="{{ person.url }}"><img src="{{ page.backpath }}{{ person.pfp }}" alt="{{ person.name }}" /></a>
        {% else %}
            <a href="{{ person.url }}"><img style="object-fit: contain;" src="{{ page.backpath }}{{ site.data.wlog.people.opening.pfp }}" alt="{{ site.data.wlog.people.opening.name }}" /></a>
        {% endif %}
    </div>
    <div class = "description">
        {% if person.name %}
            <div class="name"><a href="{{ person.url }}">{{ person.name }}</a></div>
        {% else %}
            <div class="name"><a href="{{ person.url }}">{{ site.data.wlog.people.opening.name }}</a>
            <a class="btn-big" style="margin: 0 0 0 5rem;" href="{{ person.url }}">Apply now</a></div>
        {% endif %}
        <div class="role">{{ person.role }}</div>
    </div>
</div>

{% endfor %}

{% endif %}

{% if site.data.wlog.people.collaborators != empty %}

<h2>Collaborators</h2>

{% endif %}