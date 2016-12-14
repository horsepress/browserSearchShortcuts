
insert or replace into moz_bookmarks (id,type,parent,title) values ((Select id from moz_bookmarks where type=2 and title='search shortcuts'), 2, 2,'search shortcuts');


	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.etymonline.com/index.php?allowed_in_frame=0&search=%s&searchmode=none"),"http://www.etymonline.com/index.php?allowed_in_frame=0&search=%s&searchmode=none");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "et"),"et",(SELECT id FROM moz_places WHERE url = "http://www.etymonline.com/index.php?allowed_in_frame=0&search=%s&searchmode=none"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Etymonline"),1,(SELECT id FROM moz_places WHERE url = "http://www.etymonline.com/index.php?allowed_in_frame=0&search=%s&searchmode=none"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Etymonline",(SELECT id FROM moz_keywords WHERE keyword = "et"));
	
	
	 
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definicion/%s"),"http://www.wordreference.com/definicion/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "es"),"es",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definicion/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR diccionario español"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definicion/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR diccionario español",(SELECT id FROM moz_keywords WHERE keyword = "es"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definition/%s"),"http://www.wordreference.com/definition/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "en"),"en",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definition/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English dictionary"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definition/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English dictionary",(SELECT id FROM moz_keywords WHERE keyword = "en"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definizione/%s"),"http://www.wordreference.com/definizione/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "it"),"it",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definizione/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR italiano"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/definizione/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR italiano",(SELECT id FROM moz_keywords WHERE keyword = "it"));
	
		
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/sinonimos/%s"),"http://www.wordreference.com/sinonimos/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "esth"),"esth",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/sinonimos/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR sinonimos"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/sinonimos/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR sinonimos",(SELECT id FROM moz_keywords WHERE keyword = "esth"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/thesaurus/%s"),"http://www.wordreference.com/thesaurus/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enth"),"enth",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/thesaurus/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR thesaurus"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/thesaurus/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR thesaurus",(SELECT id FROM moz_keywords WHERE keyword = "enth"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/thesaurus/%s"),"http://www.wordreference.com/thesaurus/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "th"),"th",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/thesaurus/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR thesaurus"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/thesaurus/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR thesaurus",(SELECT id FROM moz_keywords WHERE keyword = "th"));

	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/ESverbs.asp?v=%s"),"http://www.wordreference.com/conj/ESverbs.asp?v=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "esconj"),"esconj",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/ESverbs.asp?v=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Spanish Conjugation"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/ESverbs.asp?v=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Spanish Conjugation",(SELECT id FROM moz_keywords WHERE keyword = "esconj"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/FRverbs.asp?v=%s"),"http://www.wordreference.com/conj/FRverbs.asp?v=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "frconf"),"frconf",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/FRverbs.asp?v=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR French Conjugation"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/FRverbs.asp?v=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR French Conjugation",(SELECT id FROM moz_keywords WHERE keyword = "frconf"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/ITverbs.asp?v=%s"),"http://www.wordreference.com/conj/ITverbs.asp?v=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "itconf"),"itconf",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/ITverbs.asp?v=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Italian Conjugation"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/conj/ITverbs.asp?v=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Italian Conjugation",(SELECT id FROM moz_keywords WHERE keyword = "itconf"));


	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enes/%s"),"http://www.wordreference.com/enes/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enes"),"enes",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enes/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Spanish"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enes/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Spanish",(SELECT id FROM moz_keywords WHERE keyword = "enes"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enfr/%s"),"http://www.wordreference.com/enfr/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enfr"),"enfr",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enfr/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-French"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enfr/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-French",(SELECT id FROM moz_keywords WHERE keyword = "enfr"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enit/%s"),"http://www.wordreference.com/enit/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enit"),"enit",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enit/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Italian"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enit/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Italian",(SELECT id FROM moz_keywords WHERE keyword = "enit"));

	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enpt/%s"),"http://www.wordreference.com/enpt/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enpt"),"enpt",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enpt/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Portuguese"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enpt/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Portuguese",(SELECT id FROM moz_keywords WHERE keyword = "enpt"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esfr/%s"),"http://www.wordreference.com/esfr/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "esfr"),"esfr",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esfr/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR espanol-francais"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esfr/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR espanol-francais",(SELECT id FROM moz_keywords WHERE keyword = "esfr"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/espt/%s"),"http://www.wordreference.com/espt/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "espt"),"espt",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/espt/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR espanol-portugues"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/espt/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR espanol-portugues",(SELECT id FROM moz_keywords WHERE keyword = "espt"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esen/%s"),"http://www.wordreference.com/esen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "esen"),"esen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Spanish-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Spanish-English",(SELECT id FROM moz_keywords WHERE keyword = "esen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fren/%s"),"http://www.wordreference.com/fren/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "fren"),"fren",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fren/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR French-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fren/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR French-English",(SELECT id FROM moz_keywords WHERE keyword = "fren"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/iten/%s"),"http://www.wordreference.com/iten/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "iten"),"iten",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/iten/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Italian-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/iten/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Italian-English",(SELECT id FROM moz_keywords WHERE keyword = "iten"));

	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/pten/%s"),"http://www.wordreference.com/pten/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "pten"),"pten",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/pten/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Portuguese-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/pten/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Portuguese-English",(SELECT id FROM moz_keywords WHERE keyword = "pten"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fres/%s"),"http://www.wordreference.com/fres/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "fres"),"fres",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fres/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR francais-espanol"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fres/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR francais-espanol",(SELECT id FROM moz_keywords WHERE keyword = "fres"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ptes/%s"),"http://www.wordreference.com/ptes/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ptes"),"ptes",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ptes/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR portugues-espanol"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ptes/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR portugues-espanol",(SELECT id FROM moz_keywords WHERE keyword = "ptes"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enru/%s"),"http://www.wordreference.com/enru/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enru"),"enru",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enru/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Russian"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enru/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Russian",(SELECT id FROM moz_keywords WHERE keyword = "enru"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enpl/%s"),"http://www.wordreference.com/enpl/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enpl"),"enpl",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enpl/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Polish"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enpl/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Polish",(SELECT id FROM moz_keywords WHERE keyword = "enpl"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enro/%s"),"http://www.wordreference.com/enro/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enro"),"enro",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enro/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Romanian"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enro/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Romanian",(SELECT id FROM moz_keywords WHERE keyword = "enro"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/encz/%s"),"http://www.wordreference.com/encz/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "encz"),"encz",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/encz/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Czech"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/encz/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Czech",(SELECT id FROM moz_keywords WHERE keyword = "encz"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/engr/%s"),"http://www.wordreference.com/engr/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "engr"),"engr",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/engr/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Greek"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/engr/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Greek",(SELECT id FROM moz_keywords WHERE keyword = "engr"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/entr/%s"),"http://www.wordreference.com/entr/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "entr"),"entr",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/entr/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Turkish"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/entr/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Turkish",(SELECT id FROM moz_keywords WHERE keyword = "entr"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enzh/%s"),"http://www.wordreference.com/enzh/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enzh"),"enzh",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enzh/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Chinese"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enzh/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Chinese",(SELECT id FROM moz_keywords WHERE keyword = "enzh"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enja/%s"),"http://www.wordreference.com/enja/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enja"),"enja",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enja/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Japanese"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enja/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Japanese",(SELECT id FROM moz_keywords WHERE keyword = "enja"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enko/%s"),"http://www.wordreference.com/enko/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enko"),"enko",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enko/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Korean"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enko/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Korean",(SELECT id FROM moz_keywords WHERE keyword = "enko"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enar/%s"),"http://www.wordreference.com/enar/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enar"),"enar",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enar/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Arabic"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enar/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Arabic",(SELECT id FROM moz_keywords WHERE keyword = "enar"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ruen/%s"),"http://www.wordreference.com/ruen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ruen"),"ruen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ruen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Russian-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ruen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Russian-English",(SELECT id FROM moz_keywords WHERE keyword = "ruen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/plen/%s"),"http://www.wordreference.com/plen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "plen"),"plen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/plen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Polish-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/plen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Polish-English",(SELECT id FROM moz_keywords WHERE keyword = "plen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/roen/%s"),"http://www.wordreference.com/roen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "roen"),"roen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/roen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Romanian-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/roen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Romanian-English",(SELECT id FROM moz_keywords WHERE keyword = "roen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/czen/%s"),"http://www.wordreference.com/czen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "czen"),"czen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/czen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Czech-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/czen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Czech-English",(SELECT id FROM moz_keywords WHERE keyword = "czen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/gren/%s"),"http://www.wordreference.com/gren/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "gren"),"gren",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/gren/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Greek-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/gren/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Greek-English",(SELECT id FROM moz_keywords WHERE keyword = "gren"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/tren/%s"),"http://www.wordreference.com/tren/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "tren"),"tren",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/tren/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Turkish-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/tren/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Turkish-English",(SELECT id FROM moz_keywords WHERE keyword = "tren"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/zhen/%s"),"http://www.wordreference.com/zhen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "zhen"),"zhen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/zhen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Chinese-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/zhen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Chinese-English",(SELECT id FROM moz_keywords WHERE keyword = "zhen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/jaen/%s"),"http://www.wordreference.com/jaen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "jaen"),"jaen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/jaen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Japanese-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/jaen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Japanese-English",(SELECT id FROM moz_keywords WHERE keyword = "jaen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/koen/%s"),"http://www.wordreference.com/koen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "koen"),"koen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/koen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Korean-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/koen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Korean-English",(SELECT id FROM moz_keywords WHERE keyword = "koen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/aren/%s"),"http://www.wordreference.com/aren/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "aren"),"aren",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/aren/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Arabic-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/aren/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Arabic-English",(SELECT id FROM moz_keywords WHERE keyword = "aren"));
	

	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enes/%s"),"http://www.wordreference.com/enes/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ensp"),"ensp",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enes/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-Spanish"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/enes/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-Spanish",(SELECT id FROM moz_keywords WHERE keyword = "ensp"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esen/%s"),"http://www.wordreference.com/esen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "spen"),"spen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR Spanish-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR Spanish-English",(SELECT id FROM moz_keywords WHERE keyword = "spen"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esfr/%s"),"http://www.wordreference.com/esfr/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "spfr"),"spfr",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esfr/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR espanol-francais"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/esfr/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR espanol-francais",(SELECT id FROM moz_keywords WHERE keyword = "spfr"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/espt/%s"),"http://www.wordreference.com/espt/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "sppt"),"sppt",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/espt/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR espanol-portugues"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/espt/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR espanol-portugues",(SELECT id FROM moz_keywords WHERE keyword = "sppt"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fres/%s"),"http://www.wordreference.com/fres/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "frsp"),"frsp",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fres/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR francais-espanol"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/fres/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR francais-espanol",(SELECT id FROM moz_keywords WHERE keyword = "frsp"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ptes/%s"),"http://www.wordreference.com/ptes/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ptsp"),"ptsp",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ptes/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR portugues-espanol"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ptes/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR portugues-espanol",(SELECT id FROM moz_keywords WHERE keyword = "ptsp"));

	
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ende/%s"),"http://www.wordreference.com/ende/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "enge"),"enge",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ende/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR English-German"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/ende/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR English-German",(SELECT id FROM moz_keywords WHERE keyword = "enge"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/deen/%s"),"http://www.wordreference.com/deen/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "geen"),"geen",(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/deen/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "WR German-English"),1,(SELECT id FROM moz_places WHERE url = "http://www.wordreference.com/deen/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"WR German-English",(SELECT id FROM moz_keywords WHERE keyword = "geen"));


	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ende/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/ende/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ende"),"ende",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ende/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo English-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ende/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo English-German",(SELECT id FROM moz_keywords WHERE keyword = "ende"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ende/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/ende/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "deen"),"deen",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ende/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-English"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ende/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-English",(SELECT id FROM moz_keywords WHERE keyword = "deen"));
		
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/frde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/frde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "frde"),"frde",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/frde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo French-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/frde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo French-German",(SELECT id FROM moz_keywords WHERE keyword = "frde"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/frde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/frde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "defr"),"defr",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/frde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-French"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/frde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-French",(SELECT id FROM moz_keywords WHERE keyword = "defr"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/esde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/esde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "esde"),"esde",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/esde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo Spanish-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/esde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo Spanish-German",(SELECT id FROM moz_keywords WHERE keyword = "esde"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/esde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/esde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "dees"),"dees",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/esde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-Spanish"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/esde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-Spanish",(SELECT id FROM moz_keywords WHERE keyword = "dees"));
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/itde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/itde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "itde"),"itde",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/itde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo Italian-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/itde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo Italian-German",(SELECT id FROM moz_keywords WHERE keyword = "itde"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/itde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/itde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "deit"),"deit",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/itde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-Italian"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/itde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-Italian",(SELECT id FROM moz_keywords WHERE keyword = "deit"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/chde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/chde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "chde"),"chde",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/chde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo Chinese-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/chde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo Chinese-German",(SELECT id FROM moz_keywords WHERE keyword = "chde"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/chde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/chde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "dech"),"dech",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/chde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-Chinese"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/chde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-Chinese",(SELECT id FROM moz_keywords WHERE keyword = "dech"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/rude/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/rude/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "rude"),"rude",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/rude/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo Russian-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/rude/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo Russian-German",(SELECT id FROM moz_keywords WHERE keyword = "rude"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/rude/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/rude/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "deru"),"deru",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/rude/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-Russian"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/rude/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-Russian",(SELECT id FROM moz_keywords WHERE keyword = "deru"));
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ptde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/ptde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ptde"),"ptde",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ptde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo Portuguese-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ptde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo Portuguese-German",(SELECT id FROM moz_keywords WHERE keyword = "ptde"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ptde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/ptde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "dept"),"dept",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ptde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-Portugese"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/ptde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-Portugese",(SELECT id FROM moz_keywords WHERE keyword = "dept"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/plde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/plde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "plde"),"plde",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/plde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo Polish-German"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/plde/index_de.html#/searchLoc=-1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo Polish-German",(SELECT id FROM moz_keywords WHERE keyword = "plde"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://dict.leo.org/plde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"),"http://dict.leo.org/plde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "depl"),"depl",(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/plde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Leo German-Polish"),1,(SELECT id FROM moz_places WHERE url = "http://dict.leo.org/plde/index_de.html#/searchLoc=1&resultOrder=basic&multiwordShowSingle=on&search=%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Leo German-Polish",(SELECT id FROM moz_keywords WHERE keyword = "depl"));
		

	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://www.oxforddictionaries.com/definition/english/%s"),"http://www.oxforddictionaries.com/definition/english/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "ox"),"ox",(SELECT id FROM moz_places WHERE url = "http://www.oxforddictionaries.com/definition/english/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Oxford English"),1,(SELECT id FROM moz_places WHERE url = "http://www.oxforddictionaries.com/definition/english/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Oxford English",(SELECT id FROM moz_keywords WHERE keyword = "ox"));

	
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://translate.google.com/#auto/en/%s"),"http://translate.google.com/#auto/en/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "tr"),"tr",(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#auto/en/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google trans =>en"),1,(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#auto/en/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google trans =>en",(SELECT id FROM moz_keywords WHERE keyword = "tr"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://translate.google.com/#auto/en/%s"),"http://translate.google.com/#auto/en/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "tren"),"tren",(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#auto/en/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google trans =>en"),1,(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#auto/en/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google trans =>en",(SELECT id FROM moz_keywords WHERE keyword = "tren"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://translate.google.com/#it/en/%s"),"http://translate.google.com/#it/en/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "triten"),"triten",(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#it/en/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google trans it=>en"),1,(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#it/en/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google trans it=>en",(SELECT id FROM moz_keywords WHERE keyword = "triten"));

	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://translate.google.com/#fr/en/%s"),"http://translate.google.com/#fr/en/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "trfren"),"trfren",(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#fr/en/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google trans French=>en"),1,(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#fr/en/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google trans French=>en",(SELECT id FROM moz_keywords WHERE keyword = "trfren"));
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://translate.google.com/#sp/en/%s"),"http://translate.google.com/#sp/en/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "trspen"),"trspen",(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#sp/en/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google trans Spanish=>en"),1,(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#sp/en/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google trans Spanish=>en",(SELECT id FROM moz_keywords WHERE keyword = "trspen"));
	
	insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "http://translate.google.com/#de/en/%s"),"http://translate.google.com/#de/en/%s");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "trdeen"),"trdeen",(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#de/en/%s"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "Google trans German=>en"),1,(SELECT id FROM moz_places WHERE url = "http://translate.google.com/#de/en/%s"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"Google trans German=>en",(SELECT id FROM moz_keywords WHERE keyword = "trdeen"));
	
	
