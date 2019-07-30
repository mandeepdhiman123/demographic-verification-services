-- create table section --------------------------------------------------------
-- schema 		: reg				- Registration schema
-- table 		: key_store  		- Key store table
-- table alias  : keystr

-- table section -------------------------------------------------------------------
create table reg.key_store (

	id 					character varying(36) not null ,   
    public_key			blob not null,
	valid_from_dtimes 	timestamp not null,
	valid_till_dtimes 	timestamp not null,
	ref_id				character varying(64) , 	-- Ref id is received from key requester, This can be machine id, TPS id...etc.
	
	status_code    		character varying(36),		-- master.status_list.code
	
	lang_code 	character varying(3),				-- master.language.code	
	cr_by 		character varying (256) not null ,
	cr_dtimes 	timestamp not null ,
	upd_by  	character varying (256) ,
	upd_dtimes 	timestamp ,
	is_deleted	boolean ,
	del_dtimes 	timestamp
	
)
;

-- keys section -------------------------------------------------------------------------------
alter table reg.key_store add constraint pk_keystr_id primary key (id)
 ;


