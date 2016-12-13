This adds browser address bar keyword search shortcuts to Chrome, Firefox and Internet Explorer on Windows PCs.

These are both useful and a pain to edit manually, hence this project. 

See e.g. http://kb.mozillazine.org/Using_keyword_searches  or http://lifehacker.com/5476033/how-to-set-keyword-bookmarks-in-google-chrome for details. 

![Sample keyword](http://winaero.com/blog/wp-content/uploads/2014/04/Italian-bread-address-bar.png)

Use
===

Run ```addSearchShortcuts.bat``` to add the default file, which is ```searches.xml```. 

Alternatively drag XML files on to ```addSearchShortcuts.bat``` to add other files, such as dictionaries.xml, which adds a load of dictionary
search shortcuts. This probably won't work in the downloads directory, so move the folder somewhere else first.

Chrome and Firefox will be killed when this runs! 

You can also use a ```/s``` switch to run it in silent mode, without keyboard prompts, although admin rights will be required for Internet 
Explorer registry entries

You could create additional XML files for further shortcuts, or edit these.

Data files
==========

There are two XML files. 
* Searches.xml (the default) contains some general purpose search engines (google, wikipedia etc)
* Dictionaries.xml contains a selection of web based dictionaries. 

Workings
========

* ```msmsl.exe``` is used to convert ```searches.xml``` into SQLite commands (for Chrome and Firefox) and registry (for internet explorer) files
containing details of the search shortcuts, using the XSL files in the ```xsl``` directory.
* These are then added to the SQLite databases and registry respectively.
* An HTML file detailing the searches is also generated.

SQL
===

The SQL commands used look like these examples (for searching Wikipedia with "w"). The SQL and .reg files can be generated from the XML without applying them using the makeSQL.bat file.

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
