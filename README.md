The Stun
========

'The Stun' is a theme for online newspapers, intended to work with the <a href="http://www.sourcefabric.org/en/newscoop/">Newscoop</a> content management system from <a href="http://www.sourcefabric.org/">Sourcefabric</a>. It was designed by Peter Bradley.

![Example front page from The Stun theme](https://raw.github.com/danielhjames/theme-TheStun/master/The_Stun-front.png)

This theme is meant to be as simple as possible. It contains just two CSS files and the bare minimum of features needed to display the front page, sections and articles. The idea is to make it easier for new designers to learn how a Newscoop theme works, compared to them looking at the code of full-feature themes. It also contains an
example of how to use a web font from http://www.fontsquirrel.com/ in a Newscoop theme.

Like Newscoop, 'The Stun' theme is &copy; Sourcefabric 2013 and released under the <a href="https://www.gnu.org/licenses/gpl.html">GNU General Public License, version 3</a>.

Please note that the 'Download this repository as a zip file' button on GitHub exports Newscoop theme files within a folder, whereas a working Newscoop theme should have its main template files in the zip file root.

How it works
============

Let's take a look at The Stun's front page template, front.tpl - under 50 lines of code including whitespace, and the biggest block of that code is for creating the list of article authors with the proper punctuation (given that we can't guess how many authors there might be for a dynamically generated article).

This template starts by including _header.tpl from the _tpl folder of sub-templates (there are just three sub-templates in The Stun). Thanks to this sub-template we don't have to deal with the &lt;HEAD&gt; element of HTML, open a &lt;BODY&gt; tag, fiddle with the masthead or deal with navigation buttons. It's all taken care of, so we can focus on front page design.

{{ include file='_tpl/_header.tpl' }}

Next, we'll list articles from the "Front page" featured article playlist, a sequence of the day's most significant stories which has been created by the newspaper's editor in the Newscoop administration interface. All we have to do is tell Newscoop to list the article that the editor has made the top item in this particular playlist, by using a list length of "1":

{{ list_playlist_articles name="Front page" length="1" }}

The next part of the code is for the article headline, which we put in a &lt;div&gt; because we want to style it with CSS. The id of this div should make its function pretty obvious when we are editing the general.css file, found in the _css folder.

&lt;div id="frontpage-headline"&gt;
  &lt;a href="{{ uri options="article" }}"&gt;&lt;h1&gt;{{ $gimme->article->name }}&lt;/h1&gt;&lt;/a&gt;
&lt;/div&gt;

See how we're using two sets of curly brackets on the line above? Within the element created by the &lt;h1&gt; and &lt;/h1&gt; tags we are asking Newscoop for the article name to create our headline, which could be any line of text the editor wants to put there at that moment. We're also wrapping the &lt;h1&gt; element with an &lt;a&gt; element, but this time we're using the curly brackets to get the URI of this article. So we now have a styled headline, and a link to the article inside the publication.

Typically we may wish to provide a shortened version of the story on the front page, and give the full article a different design treatment. This is very easy to do in Newscoop since we have a separate template for full articles, by default called article.tpl (although you can call this file anything you want). There is also a template for listing articles in the sections that the editor has created, such as Politics or Sports. The section template is called section.tpl by default, and just as with front.tpl or article.tpl you can re-use the header, footer or any other sub-template that you have created. You'll soon appreciate how much maintenance time is saved by the efficiency of this approach.

In The Stun, 404.tpl is an empty file. You can put any message to readers that you want in this template, but with an empty 404 template Newscoop will re-direct all requests for non-existent pages to the publication front page, which may be what you wanted anyway.

We hope you have fun playing with The Stun, and if you create new versions of it, please let us take a look at what you've come up with!
