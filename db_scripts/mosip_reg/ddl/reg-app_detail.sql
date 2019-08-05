-- create table section -------------------------------------------------
-- schema 		: reg	    - Registration client, referenced from master data 
-- table 		: app_detail	- MOSIP Application details
-- table alias  : appdtl	
 

-- table section -------------------------------------------------
create table reg.app_detail (
	
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
 alter table reg.app_detail add constraint pk_appdtl_id primary key (id, lang_code)
 ;

-- indexes section -------------------------------------------------
create unique index idx_appdtl_name on reg.app_detail (name)
;

