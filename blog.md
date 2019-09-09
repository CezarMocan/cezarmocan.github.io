---
layout: default
permalink: /blog/
---
<div class="blog-container">
  <div class="blog-title"> 
    <h1>🔮</h1> 
  </div>

  {% for post in site.posts %}  
    <div class="blog-post-listing-container">      
      <a class="blog-post-listing-container-tap-area" href="{{ post.url }}">
        <h1>  {{ post.title }} </h1>
        <div class="blog-post-listing-date">
          <h3>{{ post.date | date_to_string }}</h3>
        </div>
        <div class="blog-post-listing-categories">
          <h3>
            Posted under: 
            {% for c in post.tags %}
              <span class="blog-post-listing-category">{{c}};</span>
            {% endfor %}
          </h3>
        </div>
      </a>
      <div class="blog-post-listing-excerpt">
        {{ post.excerpt }}
      </div>
      <a class="blog-post-listing-container-read-more" href="{{ post.url }}">
        Read more &rarr;
      </a>
    </div>
  {% endfor %}
</div>