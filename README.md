This stored procedure lets you create a new directory on your PowerBI Report Server (change the DB name on line 1)

It uses the native function that PBIRS uses for creating the dir (CreateObject), it searches/generates the necessary parameters, all you need to set is the name of your new dir(ex: production), the path for your new dir (ex: /bi/marketing) and it will make the final path for you (ex: /bi/marketing/production). You also give it the username of the dir owner, and that's it.

To run it, use the following command:

exec sp_make_new_dir @DIRNAME = 'dir name', @DIRPATH = 'dir path', @USERNAME = 'User name of the creator of the folder'
