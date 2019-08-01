-- create table section -------------------------------------------------
-- schema 		: master	    	- Master reference Module
-- table 		: reg_center_user_h	- HISTORY :  MOSIP Application registration center  and users mapping
-- table alias  : cntrusr_h
 
-- schema section -------------------------------------------------
 
-- create schema if master schema for Master reference Module is not exists
create schema if not exists master
;

-- table section -------------------------------------------------
create table master.reg_center_user_h (

	regcntr_id character varying (10) not null,	 -- master.registration_center.id
	usr_id  character varying (256) not null,		 -- master.user_detail.id
	
	lang_code 	character varying (3) not null ,		-- master.language.code	
	
	is_active 	boolean not null,
	cr_by 		character varying (256) not null,
	cr_dtimes	timestamp not null,
	upd_by  	character varying (256),
	upd_dtimes  timestamp,
	is_deleted 	boolean,
	del_dtimes  timestamp,
	
	eff_dtimes timestamp not null		-- for history record maintenance including the latest record in base table.

)
;

-- keys section -------------------------------------------------
 alter table master.reg_center_user_h add constraint pk_cntrusr_h_usr_id primary key (regcntr_id, usr_id, eff_dtimes)
 ;
 
-- indexes section -------------------------------------------------
-- create index idx_cntrusr_h_<colX> on master.reg_center_user_h (colX )
-- ;

