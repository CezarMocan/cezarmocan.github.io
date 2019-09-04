---
layout: default
permalink: /blog/
---
<div class="blog-container">
  <h1 class="blog-title"> ITP Blog </h1>
  {% for post in site.posts %}
    <div class="blog-post-listing-container">
      <h2> 
        <a href="{{ post.url }}">{{ post.title }}</a>
      </h2>
      <div class="blog-post-listing-date">
          {{ post.date | date_to_string }}
      </div>
      <div class="blog-post-listing-categories">
          Posted under: 
          {% for c in post.categories %}
            <span class="blog-post-listing-category">{{c}}</span>
          {% endfor %}
      </div>
      <div class="blog-post-listing-excerpt">
        {{ post.excerpt }}
      </div>
    </div>
  {% endfor %}
</div>