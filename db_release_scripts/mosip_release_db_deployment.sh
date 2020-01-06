### -- ---------------------------------------------------------------------------------------------------------
### -- Script Name		: Release DB deployment
### -- Deploy Module 	: MOSIP ALL
### -- Purpose    		: To deploy MOSIP Database alter scripts for the release, Scripts deploy changes for all the databases.       
### -- Create By   		: Sadanandegowda
### -- Created Date		: 25-Oct-2019
### -- 
### -- Modified Date        Modified By         Comments / Remarks
### -- -----------------------------------------------------------------------------------------------------------

### -- -----------------------------------------------------------------------------------------------------------

#! bin/bash
echo "`date` : You logged on to DB deplyment server as : `whoami`"
echo "`date` : MOSIP Database objects deployment for the release started.... Release Number : $1"

echo "=============================================================================================================="
bash ./mosip_master/master_release_db_deploy.sh ./mosip_master/master_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_audit/audit_release_db_deploy.sh ./mosip_audit/audit_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_iam/iam_release_db_deploy.sh ./mosip_iam/iam_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_ida/ida_release_db_deploy.sh ./mosip_ida/ida_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_idrepo/idrepo_release_db_deploy.sh ./mosip_idrepo/idrepo_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_idmap/idmap_release_db_deploy.sh ./mosip_idmap/idmap_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_kernel/kernel_release_db_deploy.sh ./mosip_kernel/kernel_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_prereg/prereg_release_db_deploy.sh ./mosip_prereg/prereg_release_deploy.properties $1
echo "=============================================================================================================="

echo "=============================================================================================================="
bash ./mosip_regprc/regprc_release_db_deploy.sh ./mosip_regprc/regprc_release_deploy.properties $1
echo "=============================================================================================================="


echo "`date` : MOSIP DB Release Deployment for all the databases is completed, Please check the logs at respective logs directory for more information"
 
