---
layout: default
title: Notes
---

<a href="{{ '/' | relative_url }}"> Home</a> &nbsp;|&nbsp; <a href="{{ '/publications/' | relative_url }}">Publications</a>

# Notes

<div id='posts' class='section'>
  {% for post in site.posts %}
    <div class='post-row'>
      <p class='post-title'>
        <a href="{{ post.url | relative_url }}">
          {{ post.title }}
        </a>
      </p>
      <p class='post-date'>
        {{ post.date | date: "%b %d, %Y" }}
      </p>
    </div>
    {% if post.subtitle %}
      <p class='post-subtitle'>
        {{ post.subtitle }}
      </p>
    {% endif %}
  {% endfor %}
</div>
