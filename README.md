MyWebSQL
========

This is forked from MyWebSQL. A Cloudformation to install LAMP and then MyWebSQL to access the database on the server side.

Database Support
================
As of the current version, MyWebSQL works with MySQL4 / MySQL5 ,SQLite and PostgreSQL databases.

Features
========
- Application and context menus
- Multiple syntax highlighted sql editors
- Quick Inplace multi-record editing
- Zero configuration installation
- Multi dialog interface to allow multitasking
- Multiple server login supported
- Excellent support for major browsers
- WYSIWYG Table creator/editor
- Batch Import/Export modules
- Multilingual Interface
- UI Themes supported
- Other Datbaase tools (e.g. repair tables, alter indexes)

Launch SQL Admin Server
==================================
```
git clone https://github.com/changli3/LAMP-SQL-ADMIN.git

cd LAMP-SQL-ADMIN

aws cloudformation deploy --stack-name AdminSvr01 --parameter-overrides \
	Ami=ami-43a15f3e  \
    InstanceTypeParameter=t2.small \
    InstanceSubnet=subnet-2b976000 \
    SecurityGroupId=sg-58e1fc3d \
    InstanceKeyPairParameter=TreaEBSLab \
    mysqlRootPassword=mysqlRootPassword \
    --template-file cf.yml
```

Once the server start, go to http://PRIVATE-IP/sqladmin and login as root and the provided mysqlRootPassword.

#### Login Screen
![Login Screen](https://raw.githubusercontent.com/changli3/LAMP-SQL-ADMIN/master/login.png "Login Screen")

#### SQL Admin UI
![SQL Admin UI](https://raw.githubusercontent.com/changli3/LAMP-SQL-ADMIN/master/sqlui.png "SQL Admin UI")