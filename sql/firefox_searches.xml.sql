
insert or replace into moz_bookmarks (id,type,parent,title) values ((Select id from moz_bookmarks where type=2 and title='search shortcuts'), 2, 2,'search shortcuts');

	
	
	
	
	

	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s"),"http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "w"),"w",(SELECT id FROM moz_places WHERE url = "http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Wikipedia"),1,(SELECT id FROM moz_places WHERE url = "http://en.wikipedia.org/w/index.php?title=Special:Search&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Wikipedia",(SELECT id FROM moz_keywords WHERE keyword = "w"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definition/%s"),"http://www.wordreference.com/definition/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "en"),"en",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definition/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Wordref Eng"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definition/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Wordref Eng",(SELECT id FROM moz_keywords WHERE keyword = "en"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "https://www.google.com/maps/place/%s"),"https://www.google.com/maps/place/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "map"),"map",(SELECT id FROM moz_places WHERE url = "https://www.google.com/maps/place/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google maps"),1,(SELECT id FROM moz_places WHERE url = "https://www.google.com/maps/place/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google maps",(SELECT id FROM moz_keywords WHERE keyword = "map"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.linkedin.com/search/fpsearch?type=people&pplSearchOrigin=GLHD&pageKey=member-home&search=Search&keywords=%s"),"http://www.linkedin.com/search/fpsearch?type=people&pplSearchOrigin=GLHD&pageKey=member-home&search=Search&keywords=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ln"),"ln",(SELECT id FROM moz_places WHERE url = "http://www.linkedin.com/search/fpsearch?type=people&pplSearchOrigin=GLHD&pageKey=member-home&search=Search&keywords=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Linked in"),1,(SELECT id FROM moz_places WHERE url = "http://www.linkedin.com/search/fpsearch?type=people&pplSearchOrigin=GLHD&pageKey=member-home&search=Search&keywords=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Linked in",(SELECT id FROM moz_keywords WHERE keyword = "ln"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "https://www.google.com/search?tbm=isch&q=%s"),"https://www.google.com/search?tbm=isch&q=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "gi"),"gi",(SELECT id FROM moz_places WHERE url = "https://www.google.com/search?tbm=isch&q=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google images"),1,(SELECT id FROM moz_places WHERE url = "https://www.google.com/search?tbm=isch&q=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google images",(SELECT id FROM moz_keywords WHERE keyword = "gi"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "https://scholar.google.co.uk/scholar?hl=en&btnG=&as_sdt=1%2C5&as_sdtp=&q=%s"),"https://scholar.google.co.uk/scholar?hl=en&btnG=&as_sdt=1%2C5&as_sdtp=&q=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "gsc"),"gsc",(SELECT id FROM moz_places WHERE url = "https://scholar.google.co.uk/scholar?hl=en&btnG=&as_sdt=1%2C5&as_sdtp=&q=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google scholar"),1,(SELECT id FROM moz_places WHERE url = "https://scholar.google.co.uk/scholar?hl=en&btnG=&as_sdt=1%2C5&as_sdtp=&q=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google scholar",(SELECT id FROM moz_keywords WHERE keyword = "gsc"));
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/#tbm=shop&q=%s"),"https://www.google.co.uk/#tbm=shop&q=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "gsh"),"gsh",(SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/#tbm=shop&q=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google shopping"),1,(SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/#tbm=shop&q=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google shopping",(SELECT id FROM moz_keywords WHERE keyword = "gsh"));
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/#tbm=bks&q=%s"),"https://www.google.co.uk/#tbm=bks&q=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "gbk"),"gbk",(SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/#tbm=bks&q=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google books"),1,(SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/#tbm=bks&q=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google books",(SELECT id FROM moz_keywords WHERE keyword = "gbk"));
	

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/search?q=%s"),"https://www.google.co.uk/search?q=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "g"),"g",(SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/search?q=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google"),1,(SELECT id FROM moz_places WHERE url = "https://www.google.co.uk/search?q=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google",(SELECT id FROM moz_keywords WHERE keyword = "g"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.ebay.co.uk/sch/i.html?_nkw=%s&_sacat=0"),"http://www.ebay.co.uk/sch/i.html?_nkw=%s&_sacat=0");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ebay"),"ebay",(SELECT id FROM moz_places WHERE url = "http://www.ebay.co.uk/sch/i.html?_nkw=%s&_sacat=0"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "eBay UK"),1,(SELECT id FROM moz_places WHERE url = "http://www.ebay.co.uk/sch/i.html?_nkw=%s&_sacat=0"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"eBay UK",(SELECT id FROM moz_keywords WHERE keyword = "ebay"));

	
	

