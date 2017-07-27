Files to help automate the creation of keyword search shortcuts for Chrome, Firefox and Internet Explorer.

XML files are used to specify keywords and URLs, and XSLT is used to generate HTML bookmark files, SQLite commands and registry files from this.

See e.g. http://kb.mozillazine.org/Using_keyword_searches  or http://lifehacker.com/5476033/how-to-set-keyword-bookmarks-in-google-chrome for details. 

![Sample keyword](http://winaero.com/blog/wp-content/uploads/2014/04/Italian-bread-address-bar.png)

Bookmark HTML generation and import - Chrome and Firefox
========================================================

Bookmark HTML files can be used to import search keywords in bulk.

See the htmlBookmarks folder, or generate the files by dragging XML files on to ```makeBookmarkHTMLfiles.bat``` (or ```makeBookmarkHTMLfiles.bat searches.xml``` from command prompt.

You can import these via (Chrome menu) => Bookmarks => Import bookmarks and settings => (select "Bookmarks HTML file") => Choose file

On Mozilla, do "Show all bookmarks" => "Import and Backup" => "Import bookmarks from HTML"

You can edit them within Chrome though by going to Settings => Search Engines (chrome://settings/searchEngines). 

Automated use on Windows
========================

**The Google Chrome database is now encypted, so this won't work in Chrome any more.**

Run ```addSearchShortcuts.bat``` to add the default file, which is ```searches.xml```. 

Alternatively drag XML files on to ```addSearchShortcuts.bat``` to add other files, such as dictionaries.xml, which adds a load of dictionary
search shortcuts. This probably won't work in the downloads directory, so move the folder somewhere else first.

Chrome and Firefox will be killed when this runs! 

You can also use a ```/s``` switch to run it in silent mode, without keyboard prompts, although admin rights will be required for Internet 
Explorer registry entries

You could create additional XML files for further shortcuts, or edit these.

Use on Mac OS X
===============

Run ```addSearchShortcuts.command``` to add the default file, which is ```searches.xml```. 

Alternatively run this file with a parameter from the terminal to add a different file.

Chrome and Firefox will be killed when this runs! 

Data files
==========

There are two XML files provided. You could create more or edit these as necessary 
* Searches.xml (the default) contains some general purpose search engines (google, wikipedia etc)
* Dictionaries.xml contains a selection of web based dictionaries. 

Workings
========

* ```msmsl.exe``` is used to convert ```searches.xml``` into SQLite commands (for Chrome and Firefox) and registry (for internet explorer) files
containing details of the search shortcuts, using the XSL files in the ```xsl``` directory.
** On Mac, this is handled by the ```xsltproc``` command.
* These are then added to the SQLite databases and registry respectively.
* An HTML file detailing the searches is also generated.

Sample bookmark HTML file
=========================

```html
<!DOCTYPE NETSCAPE-Bookmark-file-1>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<TITLE>Bookmarks</TITLE>
<H1>Bookmarks</H1>
<DL>
	<p>
		<DT><A HREF="chrome://history/search#q=%s" SHORTCUTURL="hi">history</A></DT>
		<DT><A HREF="http://en.wikipedia.org/w/index.php?title=Special:Search&amp;search=%s" SHORTCUTURL="w">Wikipedia</A></DT>
		<DT><A HREF="http://www.wordreference.com/definition/%s" SHORTCUTURL="en">Wordref Eng</A></DT>
		<DT><A HREF="https://www.google.com/maps/place/%s" SHORTCUTURL="map">Google maps</A></DT>
		<DT><A HREF="https://www.google.co.uk/search?q=%s" SHORTCUTURL="g">Google</A></DT>
	</p>
</DL>
```

SQL
===

The SQL commands used look like these examples (for searching Wikipedia with "w"). The SQL and .reg files can be generated from the XML without applying them using the makeSQL.bat file.

Look in the SQL directory for the full SQL and reg files.

Chrome:
```sql
delete from keywords where keyword in ("w");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Wikipedia","w",1,"","http://en.wikipedia.org/w/index.php?title=Special:Search&search={searchTerms}");
```

Firefox:
```sql
insert or replace into moz_places (id,url) 
values ( 
  (SELECT id FROM moz_places WHERE url = "http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s"),
  "http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s"
);

insert or replace into moz_keywords (id,keyword, place_id) 
values ( 
  (SELECT id FROM moz_keywords WHERE keyword = "w"),
  "w",
  (SELECT id FROM moz_places WHERE url = "http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s")
);

insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) 
values (
  (SELECT id FROM moz_bookmarks WHERE title = "Wikipedia"),
  1,
  (SELECT id FROM moz_places WHERE url = "http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s"),
  (select id from moz_bookmarks where type=2 and title="search shortcuts"),
  "Wikipedia",
  (SELECT id FROM moz_keywords WHERE keyword = "w")
);
```

For Internet Explorer, the registry modifications look like this:

```
[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchUrl\w]
@="http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s"
```
