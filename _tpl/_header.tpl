<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
<title>The Stun!</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link href="{{ url static_file='_css/fonts/fonts.css' }}" media="screen" rel="stylesheet" type="text/css" />

<link href="{{ url static_file='_css/general.css' }}" media="screen" rel="stylesheet" type="text/css" />

</head>
<body>

 <div id="wrapper">

    <div id="masthead">
      <p><a href="/">The Stun!</a></p>
      <img id="topimg" src="{{ url static_file='_img/nikola-cutout.png' }}">
    </div>

    <div id="advert">
      <p>Play Celebrity Bingo<br> and Win Big Cash!</p>
    </div>

    <div id="strapline">
      <p>Quality independent tabloid journalism since 2014</p>
    </div>

    <div id="nav">
      <ul>
      {{ list_sections }}
        <li><a class="navlinks {{ if $gimme->section->number == $gimme->default_section->number }} current_page_item{{ /if }}" href="{{ uri options="section" }}" title="View all articles in {{ $gimme->section->name }}">{{ $gimme->section->name }}</a></li>
      {{ /list_sections }}
      </ul>
    </div>

<!-- header end -->
