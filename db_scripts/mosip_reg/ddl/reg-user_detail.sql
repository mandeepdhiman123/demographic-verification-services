
-- object: reg.user_detail | type: TABLE --
-- DROP TABLE IF EXISTS reg.user_detail CASCADE;
CREATE TABLE reg.user_detail(
	id character varying(256) NOT NULL,
	reg_id character varying(39),
	name character varying(64) NOT NULL,
	email character varying(256),
	mobile character varying(16),
	salt character varying(64),
	status_code character varying(64) NOT NULL,
	lang_code character varying(3) NOT NULL,
	last_login_dtimes timestamp,
	last_login_method character varying(36),
	unsuccessful_login_count smallint,
	userlock_till_dtimes timestamp,
	is_active boolean NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean,
	del_dtimes timestamp,
	CONSTRAINT pk_usrdtl_id PRIMARY KEY (id)

);
-- ddl-end --
