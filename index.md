---
layout: personal
permalink: /
backpath: ./
---

<h1 id="about-me"></h1>

<h2></h2>

I am a Postdoctoral University Assistant in the
[{{ site.data.personal.affiliations[0].department }}]({{ site.data.personal.affiliations[0].department-url }})
at [{{ site.data.personal.affiliations[0].institution }}]({{ site.data.personal.affiliations[0].institution-url }}), as well as in the
[{{ site.data.personal.affiliations[1].department }}]({{ site.data.personal.affiliations[1].department-url }}) at [{{ site.data.personal.affiliations[1].institution }}]({{ site.data.personal.affiliations[1].department-url }}).

My research focuses on **solver certification** and **data extraction from proofs**, especially within the context of reasoning without loss of generality in finite domains (SAT/QBF). As of lately I am transitioning into a broader scope including **model checking**, **interactive software verification** and untapped use cases for logic-based solvers (specifically, **flexible scheduling** and **procedural content generation**). If you are interested in academic collaboration in either of these topics, please send me an email.

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
<strong>Email: </strong>{{ affiliation.email }}
<br />
<strong>Phone: </strong>{{ affiliation.phone }}
<br />

{% endfor %}
