---
layout: personal
permalink: /
backpath: ./
---

<h1 id="about-me"></h1>

<p>
    I am a Postdoctoral University Assistant in the
    <a href="{{ site.data.personal.affiliations[0].department-url }}">{{ site.data.personal.affiliations[0].department }}</a> at
    <a href="{{ site.data.personal.affiliations[0].institution-url }}">{{ site.data.personal.affiliations[0].institution }}</a>, as well as in the
    <a href="{{ site.data.personal.affiliations[1].department-url }}">{{ site.data.personal.affiliations[1].department }}</a> at
    <a href="{{ site.data.personal.affiliations[1].department-url }}">{{ site.data.personal.affiliations[1].institution }}</a>.
</p>

<p>
    My research focuses on <strong>solver certification</strong> and <strong>data extraction from proofs</strong>, especially within the context of reasoning without loss of generality in finite domains (SAT/QBF). As of lately I am transitioning into a broader scope including <strong>model checking</strong>, <strong>interactive software verification</strong> and untapped use cases for logic-based solvers (specifically, <strong>flexible scheduling</strong> and <strong>procedural content generation</strong>). If you are interested in academic collaboration in either of these topics, please send me an email.
</p>

{% for category in site.categories %}
{% if category[0] == "personal-notices" %}
{% for post in category[1] %}
{{ post }}
{% endfor %}
{% endif %}
{% endfor %}

<h2>News</h2>

{% for category in site.categories %}
{% if category[0] == "personal-news" %}
{% for post in category[1] %}
<div class="newspiece">
    <div class="date">
        {{ post.date | date: "%-d/%m/%Y" }}
    </div>
    <div class="newsmain">
        <div class="headline">
            {{ post.title }}
        </div>
        {{ post }}
    </div>
</div>
{% endfor %}
{% endif %}
{% endfor %}

<h2>Biography</h2>

I completed my PhD in Computer Science at the [Forsyte Research Unit](https://forsyte.at/) at TU Wien under the supervision of [Georg Weissenbacher](https://www.georg.weissenbacher.science/). As a part of the [LogiCS doctoral college](https://www.vcla.at/msca/programme/), I was also co-supervised by [Armin Biere](https://cca.informatik.uni-freiburg.de/biere/). Previously I got my MSc in Computational Logic from [TU Dresden](https://tu-dresden.de/) and [Free University of Bolzano](https://www.unibz.it/). I also spent some time at [Microsoft Research Cambridge](https://www.microsoft.com/en-us/research/lab/microsoft-research-cambridge/) and [the lab formerly known as NICTA](https://research.csiro.au/data61/).

<h2>Contact</h2>

{% for affiliation in site.data.personal.affiliations %}

<h3 style="margin: 20px 0px 10px;">{{ affiliation.institution-short }}</h3>

<p>
<strong>Mailing address: </strong>{{ affiliation.address }}
<br />
<strong>Office location: </strong>{{ affiliation.office }}
<br />
<strong>Email: </strong><email>{{ affiliation.email }}</email>
<br />
<strong>Phone: </strong>{{ affiliation.phone }}
<br />

{% endfor %}
