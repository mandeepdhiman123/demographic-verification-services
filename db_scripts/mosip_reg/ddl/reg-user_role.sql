
-- object: reg.user_role | type: TABLE --
-- DROP TABLE IF EXISTS reg.user_role CASCADE;
CREATE TABLE reg.user_role(
	usr_id character varying(256) NOT NULL,
	role_code character varying(36) NOT NULL,
	lang_code character varying(3) NOT NULL,
	is_active boolean NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean,
	del_dtimes timestamp,
	CONSTRAINT pk_usrrol_usr_id PRIMARY KEY (usr_id,role_code)

);
-- ddl-end --
