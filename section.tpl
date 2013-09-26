{{ include file='_tpl/_header.tpl' }}

<div id="page_content">

<div id="sectionpage-title">
   <h1>{{ $gimme->section->name }}</h1>
</div>

{{ $articles = array() }}	

{{ list_articles length="50" columns="1"}}

  {{ $article = array() }}
  {{ $article['sub_category'] = $gimme->article->section->name }}
  {{ $article['sub_category_url'] = $gimme->article->section->url_name }}
  {{ $article['time'] = $gimme->article->publish_date|camp_date_format:"%H:%i, %D %M %Y" }}
  {{ $article['title'] = $gimme->article->title }}
  {{ $article['deck'] = $gimme->article->deck->first_paragraph|strip_tags }}
  {{ $article['url'] = $gimme->article->url }}

  {{ image rendition="sectionthumb" }}
    {{ $article['img'] = $image->src }}
    {{ $article['img_alt'] = $image->caption }}
  {{ /image }}

  {{ $articles[] = $article }}

{{ /list_articles }}

	<div id="sectionpage-items">

	{{ for $i=0 to count($articles) }}
			{{ $article = $articles[$i] }}
			{{ if $article != null }}
				{{ include file='_tpl/_section_teaser.tpl' }}
			{{ /if }}
	{{ /for }}

	</div>

</div> <!-- end #page_content -->

{{ include file='_tpl/_footer.tpl' }}
