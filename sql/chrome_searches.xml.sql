
	
	delete from keywords where keyword in ("hi");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("history","hi",1,"","chrome://history/search#q={searchTerms}");

	delete from keywords where keyword in ("bm");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("bookmarks","bm",1,"","chrome://bookmarks/#q={searchTerms}");

	delete from keywords where keyword in ("set");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("settings","set",1,"","chrome://settings/search#{searchTerms}");

	delete from keywords where keyword in ("dn");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("downloads","dn",1,"","chrome://downloads/#{searchTerms}");


	
	delete from keywords where keyword in ("w");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Wikipedia","w",1,"","http://en.wikipedia.org/w/index.php?title=Special:Search&search={searchTerms}");

	delete from keywords where keyword in ("en");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Wordref Eng","en",1,"","http://www.wordreference.com/definition/{searchTerms}");

	delete from keywords where keyword in ("map");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Google maps","map",1,"","https://www.google.com/maps/place/{searchTerms}");

	delete from keywords where keyword in ("ln");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Linked in","ln",1,"","http://www.linkedin.com/search/fpsearch?type=people&pplSearchOrigin=GLHD&pageKey=member-home&search=Search&keywords={searchTerms}");

	delete from keywords where keyword in ("gi");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Google images","gi",1,"","https://www.google.com/search?tbm=isch&q={searchTerms}");

	delete from keywords where keyword in ("gsc");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Google scholar","gsc",1,"","https://scholar.google.co.uk/scholar?hl=en&btnG=&as_sdt=1%2C5&as_sdtp=&q={searchTerms}");
	
	delete from keywords where keyword in ("gsh");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Google shopping","gsh",1,"","https://www.google.co.uk/#tbm=shop&q={searchTerms}");
	
	delete from keywords where keyword in ("gbk");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Google books","gbk",1,"","https://www.google.co.uk/#tbm=bks&q={searchTerms}");
	

	delete from keywords where keyword in ("g");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("Google","g",1,"","https://www.google.co.uk/search?q={searchTerms}");

	delete from keywords where keyword in ("ebay");
insert into keywords (short_name,keyword,show_in_default_list,favicon_url,url) values 
("eBay UK","ebay",1,"","http://www.ebay.co.uk/sch/i.html?_nkw={searchTerms}&_sacat=0");

	
	

