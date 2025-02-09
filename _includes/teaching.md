<div class="publications">
<ol class="bibliography">

<li>

{% for semester in site.data.teaching.main %}

<h3 style="margin: 30px 0px 0px;">{{ semester.semester }}</h3>

{% for course in semester.courses %}

<div style="margin: 10px 15px 0px;"><a href="{{ course.link }}">{{ course.course }}</a>&nbsp;({{ course.university }})</div>

{% endfor %}

{% endfor %}

</li>

</ol>
</div>