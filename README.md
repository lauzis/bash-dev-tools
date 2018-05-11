# bash-dev-tools
Some bash scripts, that helps automate some everyday tasks of php developer.
Kind of shortcuts for queries, commands that are used from time to time in the worklfow.

## db shell tools
Several tools with some simple scripts that are used quite often.
To make them work, settings in config.cfg file should be filled.

### drop.sh
- drops givven database
>drop.sh {database_name}

### create.sh
- creates given database
>create.sh {database_name}

### dump.sh
- dumps, exports given database, exports to path that is set in config.cfg
>dump.sh {database_name}


### create_user.sh
- creates user to access db
>create_user.sh {user_name} {password} {database_name}
