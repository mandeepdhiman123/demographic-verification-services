
-- Foreign Key Constraints Same DB/Schema tables.

-- FOREIGN KEY CONSTRAINTS : mosip_prereg database/schema.

alter table prereg.applicant_document add constraint fk_appldoc_appldem foreign key (prereg_id) references prereg.applicant_demographic(prereg_id) on delete no action on update no action ;
alter table prereg.reg_appointment add constraint fk_rappmnt_id foreign key (prereg_id) references prereg.applicant_demographic(prereg_id) on delete no action on update no action ;

alter table prereg.applicant_document_consumed add constraint fk_appldocc_appldem foreign key (prereg_id) references prereg.applicant_demographic_consumed(prereg_id) on delete no action on update no action ;
alter table prereg.reg_appointment_consumed add constraint fk_rappmntc_id foreign key (prereg_id) references prereg.applicant_demographic_consumed(prereg_id) on delete no action on update no action ;
