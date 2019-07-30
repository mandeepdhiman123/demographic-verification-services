-- create table section -------------------------------------------------
-- schema 		: reg	    - Registration Module
-- table 		: user_role	- Registration user Roles
-- table alias  : usrrol		

-- table section -------------------------------------------------
create table reg.user_role (

	usr_id 		character varying (256) not null,	-- reg.user_detail.id

	role_code 	character varying (36) not null,  	-- master.role_list.code

	lang_code 	character varying (3) not null,		-- master.language.code
	
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
 alter table reg.user_role add constraint pk_usrrol_usr_id primary key (usr_id, role_code)
 ;

