---
layout: default
title: Projects
# enable word wrap because Liquid template does cannot whitespace
# https://github.com/Shopify/liquid/issues/216
---

Projects
--------

{% for project in site.data.projects %}
* [{{ project.name }}]({{ project.homepage }}) {% if project.repository %}[follow]({{ project.repository }}){% endif %} {% if project.pypi %}[![Latest Version](https://pypip.in/version/{{ project.pypi }}/badge.svg)](https://pypi.python.org/pypi/{{ project.pypi }}/){% endif %}{% if project.travisci %}[![Build Status](https://travis-ci.org/{{ project.travisci }}.svg?branch=master)](https://travis-ci.org/{{ project.travisci }}){% endif %}{% if project.coveralls %}[![Coverage Status](https://coveralls.io/repos/{{ project.coveralls }}/badge.svg?branch=master)](https://coveralls.io/r/{{ project.coveralls }}?branch=master){% endif %}

  {{ project.description }}
{% endfor %}
