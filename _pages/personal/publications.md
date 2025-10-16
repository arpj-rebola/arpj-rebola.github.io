---
layout: personal
title: Publications
permalink: /publications/
backpath: ../../
---

<h1 id="publications">Publications
    <span class="social-networks">
        {% for social in site.data.personal.socials %}
            {% if social.hint == "DBLP" %}<a href="{{ social.url }}"><i class="{{ social.icon }}"></i></a>{% endif %}
            {% if social.hint == "Google Scholar" %}<a href="{{ social.url }}"><i class="{{ social.icon }}"></i></a>{% endif %}
        {% endfor %}
    </span>
</h1>

<ol class="publications">
{% for publication in site.data.publications.main %}

    <li>

        <div class="header">
            {% if publication.pdf %}
                <a href="{{ publication.pdf }}">{{ publication.title }}</a>&nbsp;({{ publication.year }})
            {% else %}
                <nametitle>{{ publication.title }}</nametitle>&nbsp;({{ publication.year }})
            {% endif %}
        </div>
        <div class="authors">
            {{ publication.authors | join: ", " }}
        </div>
        <div class="venue">
            {{ publication.conference }}&nbsp;({{ publication.conference-short }}{% if publication.comment %},&nbsp;{{ publication.comment }}{% endif %})
        </div>
        {% if publication.award %}
            <div class="award">
                {{ publication.award }}
            </div>
        {% endif %}
        <div class="links">
            {% if publication.preprint %}
                <a class="btn" href="{{ publication.preprint }}">Preprint</a>
            {% endif %}
            {% if publication.pdf %}
                <a class="btn" href="{{ publication.pdf }}">PDF</a>
            {% endif %}
            {% if publication.full %}
                <a class="btn" href="{{ publication.full }}">Full version</a>
            {% endif %}
            {% if publication.bibtex %}
                <a class="btn" href="{{ publication.bibtex }}">BibTeX</a>
            {% endif %}
        </div>

    </li>

{% endfor %}
</ol>