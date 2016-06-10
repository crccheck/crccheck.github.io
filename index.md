---
layout: default
title: Projects
# enable word wrap because Liquid template does cannot whitespace
# https://github.com/Shopify/liquid/issues/216
---

Projects
--------

{% for project in site.data.projects %}
* __{% if project.homepage and project.homepage != project.repository %}[{{ project.name }}]({{ project.homepage }}){% else %}{{ project.name }}{% endif %}__ {% if project.repository %}[![Follow on Github]({{ site.baseurl }}/images/github-x32.png)]({{ project.repository }}){: .repository}{% endif %} {% if project.pypi %}[![Latest Version](https://badge.fury.io/py/{{ project.pypi }}.svg)](https://pypi.python.org/pypi/{{ project.pypi }}/){% endif %} {% if project.npm %}[![Latest Version](https://badge.fury.io/js/{{ project.npm }}.svg)](https://www.npmjs.com/package/{{ project.npm }}/){% endif %}{% if project.travisci %}[![Build Status](https://travis-ci.org/{{ project.travisci }}.svg?branch=master)](https://travis-ci.org/{{ project.travisci }}){% endif %} {% if project.coveralls %}[![Coverage Status](https://coveralls.io/repos/{{ project.coveralls }}/badge.svg?branch=master)](https://coveralls.io/r/{{ project.coveralls }}?branch=master){% endif %}

  {{ project.description }}

  {% for tag in project.tags %}<span class="tag tag-{{ tag }}">{{ tag }}</span>{% endfor %}
{% endfor %}
