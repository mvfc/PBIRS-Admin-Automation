The stored procedure lets you create a new directory on your PowerBI Report Server (change the DB name on line 1)

It uses the native function that PBIRS uses for creating the dir (CreateObject), it searches/generates the necessary parameters, all you need to set is the name of your new dir(ex: production), the path for your new dir (ex: /bi/marketing) and it will make the final path for you (ex: /bi/marketing/production). You also give it the username of the dir owner, and that's it.

The PS script changes the folder permissions so that the username gets admin access to its own folder (Content Manager role) and invokes the stored procedure, so all you need to do is run the script passing the path, username and name of the new dir to be created.

To run it, use the following command in PowerShell:

CreateFolderWithPermissions.ps1 -username username -path dirpath -name dirname
