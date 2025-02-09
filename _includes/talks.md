<div class="publications">
<ol class="bibliography">

{% for link in site.data.talks.main %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title"><a href="{{ link.link }}">{{ link.title }}</a>&nbsp;({{ link.place }}, {{ link.year }})</div>
      <div class="periodical"><em>{{ link.venue }}&nbsp;({{ link.kind }})</em></div>
      <div class="links">
        {% if link.slides %}
        <a href="{{ link.slides }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Slides</a>
        {% endif %}
      </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>
</div>