This project aims to automate some aspects of the administration of a Power BI Report Server (PBIRS, for short), like giving permissions, revoking access, or even creating a folder with applied permissions.

It uses TSQL for the stored procedures and PowerShell scripts for some of the automation tasks.

Since the administration of a PBIRS is based mostly on databases, there's also stored procedures that call the PowerShell scripts so you can automate it all from a DBMS or any systems that interact with a SQL Server database.

All of the scripts are in the /Scripts/ folder of this project.

createfolderwithpermissionspbi.ps1 - PS script that creates a folder and assigns the Content Manager role for the user that's passed to it (It will be the "owner" of the folder, the user who created it and the one who gets Content Manager as default)

grantaccess.ps1 - PS script that grants the Browser role on a given folder to a given user

revokeaccess.ps1 - PS script that revokes all access from the given folder to a given user

sp_call_create_folder_with_perms.sql - TSQL stored procedure that calls the createfolderwithpermissionspbi.ps1 PS script

sp_call_grant_access.sql - TSQL stored procedure that calls the sp_call_grant_access.sql script

sp_call_revoke_access.sql - TSQL stored procedure that calls the sp_call_revoke_access.sql script

sp_make_new_dir.sql - TSQL stored procedure that makes the dirty work of creating a new folder on said path

With this we automate a few tasks that are usually tedious but frequent and could be automated via some system based on these scripts.

Hope you enjoy this!
