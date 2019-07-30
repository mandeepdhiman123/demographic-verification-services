-- create table section -------------------------------------------------
-- schema 		: master	    	- Master reference Module
-- table 		: reg_center_user	- MOSIP Application registration center  and users mapping
-- table alias  : cntrusr
 
-- schemas section -------------------------------------------------
 
-- create schema if master schema for Master reference Module is not exists
create schema if not exists master
;

-- table section -------------------------------------------------
create table master.reg_center_user (

	regcntr_id character varying (10) not null,	 -- master.registration_center.id
	usr_id  character varying (256) not null,	 -- master.user_detail.id
	
	lang_code 	character varying (3) not null ,		-- master.language.code	
		
	is_active 	boolean not null,
	cr_by 		character varying (256) not null,
	cr_dtimes	timestamp not null,
	upd_by  	character varying (256),
	upd_dtimes  timestamp,
	is_deleted 	boolean,
	del_dtimes  timestamp
)
;

-- keys section -------------------------------------------------
 alter table master.reg_center_user add constraint pk_cntrusr_usr_id primary key (regcntr_id, usr_id)
 ;

-- indexes section -------------------------------------------------
-- create index idx_cntrusr_<colX> on master.reg_center_user (colX )
-- ;

