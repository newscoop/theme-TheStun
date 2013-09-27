{{ include file='_tpl/_header.tpl' }}

  <div id="page_content">

  <div id="article-headline">
    <p>{{ $gimme->article->name }}</p>
  </div>

{{ if $gimme->article->type_name == "debate" }}

  <div id="article-debate">
  <h3>PRO: {{ $gimme->article->pro_title }}</h3>
  <div>{{ $gimme->article->pro_text }}</div>

  <h3>CONTRA: {{ $gimme->article->contra_title }}</h3>
  <div>{{ $gimme->article->contra_text }}</div>
  </div>

{{ else }}

  <div id="article-mainimage">
    {{ image rendition="articlebig" }}
      <p><img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->caption }}" /></p>
      <p id="caption">{{ $image->caption }}</p>
    {{ /image }}
  </div>

  <div id="article-deck">
    {{ $gimme->article->deck }}
  </div>

  <div id="article-authors">
  <p><em>{{ list_article_authors }}

         {{ if $gimme->current_list->at_beginning }}By {{ /if }}

         {{ if $gimme->current_list->at_end }}
            {{ if $gimme->current_list->index > 1 }} and {{ /if }}

         {{ else }}

         {{ if $gimme->current_list->index > 1 }}, {{ /if }}
         {{ /if }}

         {{ if $gimme->author->user->defined }}<a href="{{ $view->url(['username' => $gimme->author->user->uname], 'user') }}">{{ /if }}
         {{ $gimme->author->name }}{{ if $gimme->author->user->defined }}</a>{{ /if }}{{ if $gimme->current_list->at_end }}. {{ /if }}

         {{ /list_article_authors }}</em></p>
  </div>

  <div id="article-body">
    {{ $gimme->article->full_text }}
  </div>

{{ /if }}

  </div> <!-- end #page_content -->

{{ include file='_tpl/_footer.tpl' }}
