-- create table section -------------------------------------------------
-- schema 		: reg	- Registration (instead of enrolment client or ID issuance client)
-- table 		: registration	- registration client table. 
-- table alias  : reg

-- table section -------------------------------------------------

create table reg.registration (

	id 			character varying(39) not null,

	reg_type 	character varying(64) not null,		-- master.appl_form_type.code
	ref_reg_id 	character varying(39),
	prereg_id 	character varying(64),

	status_code 	character varying(36) not null,	-- reg.status_list.code
	
	lang_code 		character varying(3) not null,	-- master.language.code
	status_comment 	character varying(256),
	status_dtimes timestamp,
	
	ack_filename 		character varying(128),
	client_status_code 	character varying(36),
	server_status_code 	character varying(36),
	client_status_dtime      timestamp, 
	server_status_dtime      timestamp, 
	client_status_comment 	character varying(256),
	server_status_comment 	character varying(256),

	reg_usr_id character varying (256) not null,			-- reg.user_detail.id
	regcntr_id character varying (10) not null,			-- reg.registration_center.id
	approver_usr_id character varying (256) not null,	-- reg.user_detail.id
	
	approver_role_code character varying (36),			-- master.role_list.code

	file_upload_status 	character varying(64),
	upload_count 		smallint,
	upload_dtimes 		timestamp,
	
	latest_regtrn_id  		character varying(36),	
	latest_trn_type_code 	character varying(36),
	latest_trn_status_code 	character varying(36),
	latest_trn_lang_code 	character varying(3),
	latest_regtrn_dtimes 	timestamp,	

	is_active 	boolean not null,
	cr_by 		character varying (256) not null,
	cr_dtimes 	timestamp not null,
	upd_by  	character varying (256),
	upd_dtimes 	timestamp
	
)
;

-- keys section -------------------------------------------------
 alter table reg.registration add constraint pk_reg_id primary key (id)
 ;