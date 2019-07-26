-- create table section --------------------------------------------------------------------
-- schema 		: kernel	    		- Kernel Module
-- table 		: sync_job_def  		- Job defination for sync process between client and server
-- table alias  : syncjob
 
-- schema section --------------------------------------------------------------------------

-- create schema if kernel schema for Kernel Module is not exists
create schema if not exists kernel
;
 
-- table section ----------------------------------------------------------------------------

create table kernel.sync_job_def (
				
		id 		character varying (36) not null,
		
		name 				character varying (64) not null,
		api_name 			character varying (64),
		parent_syncjob_id  	character varying (36),		-- self reference, kernel.sync_job_def.id
		sync_freq 			character varying (36),
		lock_duration 		character varying (36),
		
		lang_code 	character varying (3),		-- master.language.code
		
		is_active 	boolean not null,
		cr_by 		character varying (256) not null,
		cr_dtimes 	timestamp  not null,
		upd_by  	character varying (256),
		upd_dtimes 	timestamp,
		is_deleted 	boolean,
		del_dtimes	timestamp
		
	)
;

-- keys section -------------------------------------------------------------------------------
alter table kernel.sync_job_def add constraint pk_syncjob_id primary key (id)
 ;

-- indexes section -----------------------------------------------------------------------
create unique index idx_syncjob_name on kernel.sync_job_def (name)
;

-- comments section -------------------------------------------------------------------------- 
comment on table kernel.sync_job_def is 'Kernel sync_job_def table which hold all sync job details'
;
