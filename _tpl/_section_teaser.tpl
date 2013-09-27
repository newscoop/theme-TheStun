      <br />

{{ if $gimme->section->name == "Dialogue" }}

      <span class="time">
        {{ $article['time'] }}
      </span>
      <br />

      <span class="header">
        <a href="{{ $article['url'] }}" >{{ $article['title'] }}</a>
      </span>

{{ else }}

      <a href="{{ $article['url'] }}">
        <img src="{{ $article['img'] }}" alt="{{ $article['img_alt'] }}" width="250" height="167">
      </a>

      <span class="time">
        {{ $article['time'] }}
      </span>
      <br />

      <span class="header">
        <a href="{{ $article['url'] }}" >{{ $article['title'] }}</a>
      </span>

      <span class="desc">
        <a href="{{ $article['url'] }}" rel="nofollow" >  
          {{ $article['deck'] }}
        </a>
      </span>

{{ /if }}

      <br clear=all />
