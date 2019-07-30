-- create table section -------------------------------------------------
-- schema 		: reg	    		- Registration client, referenced from master data 
-- table 		: process_list		- MOSIP Application process master list
-- table alias  : prclst	

-- table section -------------------------------------------------
create table reg.process_list (
	
	id 		character varying (36) not null,   
	
	name 	character varying (64) not null,
	descr 	character varying (256),
	
	lang_code 	character varying (3) not null,   -- master.language.code 
	
	is_active 	boolean not null,
	cr_by 		character varying (256) not null,
	cr_dtimes	timestamp not null,
	upd_by  	character varying (256),
	upd_dtimes timestamp,
	is_deleted 	boolean,
	del_dtimes timestamp
	
)
;

-- keys section -------------------------------------------------
 alter table reg.process_list add constraint pk_prclst_id primary key (id, lang_code)
 ;

