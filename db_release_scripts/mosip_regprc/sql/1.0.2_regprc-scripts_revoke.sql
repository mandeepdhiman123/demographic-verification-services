-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_regprc
-- Release Version 	: 1.0.2
-- Purpose    		: Revoking Database Alter deployement done for release in Registration ProcessorDB.       
-- Create By   		: Sadanandegowda DM
-- Created Date		: 11-Dec-2019
-- 
-- Modified Date        Modified By         Comments / Remarks
-- -------------------------------------------------------------------------------------------------

\c mosip_regprc sysadmin

ALTER TABLE regprc.individual_demographic_dedup DROP COLUMN mobile_number;

ALTER TABLE regprc.individual_demographic_dedup DROP COLUMN email;

ALTER TABLE regprc.individual_demographic_dedup DROP COLUMN pincode;