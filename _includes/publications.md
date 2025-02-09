<div class="publications">
<ol class="bibliography">

{% for link in site.data.publications.main %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title"><a href="{{ link.pdf }}">{{ link.title }}</a>&nbsp;({{ link.year }})</div>
      <div class="author">{{ link.authors }}</div>
      {% if link.comment %}
      <div class="periodical"><em>{{ link.conference }}&nbsp;({{ link.conference_short }}, {{ link.comment }})</em></div>
      {% else %}
      <div class="periodical"><em>{{ link.conference }}&nbsp;({{ link.conference_short }})</em></div>
      {% endif %}
      <div class="links">
        {% if link.preprint %}
        <a href="{{ link.preprint }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Preprint</a>
        {% endif %}
        {% if link.pdf %}
        <a href="{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">PDF</a>
        {% endif %}
        {% if link.bibtex %} 
        <a href="{{ link.bibtex }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">BibTex</a>
        {% endif %}
        {% if link.full %}
        <a href="{{ link.full }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Full version</a>
        {% endif %}
      </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>
</div>