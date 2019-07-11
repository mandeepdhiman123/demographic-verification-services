-- create table section -------------------------------------------------
-- schema 		: master	    	- Master reference Module
-- table 		: machine_master	- Master List of Machines used for registration
-- table alias  : machm
 
-- schemas section -------------------------------------------------
 
-- create schema if master schema for Master reference Module is not exists
create schema if not exists master
;
 
-- table section -------------------------------------------------
create table master.machine_master (

	id 			character varying (10) not null,

	name 		character varying (64) not null,
	mac_address character varying (64) not null,
	serial_num 	character varying (64) not null,
	ip_address 	character varying (17) ,           	-- ip address, usually dynamic, so optional.
	public_key 	bytea , 
	key_index 	character varying (128) , 
	
	validity_end_dtimes timestamp, 

	mspec_id    character varying(36) not null ,	-- master.machine_spec.id ,  spec mapped to machine_type
	
	lang_code   character varying (3) not null,		-- master.language.code
	
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
 alter table master.machine_master add constraint pk_machm_id primary key (id, lang_code)
 ;

-- indexes section -------------------------------------------------
-- create index idx_machm_<colX> on master.machine_master (colX )
-- ;


