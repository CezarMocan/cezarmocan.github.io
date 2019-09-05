---
layout: default
permalink: /blog/
---
<div class="blog-container">
  <div class="blog-title"> 
    <h1> ITP blog&mdash;a living document focused on process</h1> 
    <h1>&mdash;</h1>
  </div>

  {% for post in site.posts %}  
    <div class="blog-post-listing-container">      
      <a href="{{ post.url }}">
        <h1> 
          {{ post.title }}
        </h1>
        <div class="blog-post-listing-date">
            <h3>{{ post.date | date_to_string }}</h3>
        </div>
        <div class="blog-post-listing-categories">
          <h3>
            Posted under: 
            {% for c in post.categories %}
              <span class="blog-post-listing-category">{{c}}</span>
            {% endfor %}
          </h3>
        </div>
        <div class="blog-post-listing-excerpt">
          {{ post.excerpt }}
        </div>
      </a>
    </div>
  {% endfor %}
</div>