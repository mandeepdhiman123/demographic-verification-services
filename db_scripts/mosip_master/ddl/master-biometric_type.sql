-- create table section --------------------------------------------------------
-- schema 		: master  - Master Reference schema
-- table 		: biometric_type  - Master biometric_type list
-- table alias  : bmtyp	
 
-- schemas section ---------------------------------------------------------------

-- create schema if master reference schema not exists
create schema if not exists master
;
 
-- table section -------------------------------------------------------------------------------

	create table master.biometric_type (
	
		code  character varying(36) not null ,
	
		name  character varying (64) not null ,
		descr  character varying (128) ,
		
		lang_code  character varying(3) not null ,  -- master.language.code
	
		is_active 	boolean not null,
		cr_by 		character varying (256) not null,
		cr_dtimes 	timestamp  not null,
		upd_by  	character varying (256),
		upd_dtimes timestamp ,
		is_deleted 	boolean,
		del_dtimes	timestamp 
	)
;
		

-- keys section -------------------------------------------------------------------------------
alter table master.biometric_type add constraint pk_bmtyp_code primary key (code, lang_code)
 ;

-- indexes section -----------------------------------------------------------------------
-- create index idx_bmtyp_<col> on master.biometric_type (col)
-- ;

-- comments section -------------------------------------------------------------------------- 
comment on table master.biometric_type is 'Master biometric_type table'
;

