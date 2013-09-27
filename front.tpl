{{ include file='_tpl/_header.tpl' }}

<div id="page_content">

{{ list_playlist_articles name="Front page" length="1" }} 

  <div id="frontpage-headline">
    <a href="{{ uri options="article" }}"><h1>{{ $gimme->article->name }}</h1></a>
  </div>

  <div id="frontpage-image">
    {{ image rendition="headline-right" }}
      <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->caption }}" />
      <p id="caption">{{ $image->caption }}</p>
    {{ /image }}
  </div>

  <div id="frontpage-deck">
    {{ $gimme->article->deck }}
  </div>

  <div id="frontpage-authors">
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

  <div id="frontpage-body">
    {{ $gimme->article->full_text }}
  </div>

{{ /list_playlist_articles }}

</div> <!-- end #page_content -->

{{ include file='_tpl/_footer.tpl' }}
