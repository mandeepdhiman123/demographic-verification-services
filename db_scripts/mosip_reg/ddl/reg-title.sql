
-- object: reg.title | type: TABLE --
-- DROP TABLE IF EXISTS reg.title CASCADE;
CREATE TABLE reg.title(
	code character varying(16) NOT NULL,
	name character varying(64) NOT NULL,
	descr character varying(128),
	lang_code character varying(3) NOT NULL,
	is_active boolean NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean,
	del_dtimes timestamp,
	CONSTRAINT pk_ttl_code PRIMARY KEY (code,lang_code)

);
-- ddl-end --
