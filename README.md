# radius_aaa
Device management system
Docker image name **vkushnir/radiusd:aaa**

## Environment variables for container


    DB_DRIVER=mysql
>Set the database driver to one of:
>- **oracle** *not implemented yet*
>- **mysql**
>- **mssql** *not implemented*
>- **postgresql** *not implemented*


    DB_SERVER=localhost
    DB_USER=username
    DB_PASSWORD=password
    DB_NAME=database
    DB_PORT=3306
>*connection info*


    RAD_ACCT1=radacct
    RAD_ACCT2=radacct
>*If you want both stop and start records logged to the same SQL table, leave this as is.  If you want them in different tables, put the start table in acct_table1 and stop table in acct_table2*


    RAD_POSTAUTH=radpostauth
>*Allow for storing data after authentication*


    RAD_CHECK=radcheck
>*Store users and passwords*
>*use '&lt;username&gt;', '&lt;password-type&gt;', ':=', '&lt;password&gt;'*
>>***Example:***
>>
>> |username|attribute|op|value|
>> |---|---|---|---|
>> |user1|Cleartext-Password|:=|password|
>> |user2|MD5-Password|:=|X03MO1qnZdYdgyfeuILPmQ==|
>>
>Supported password hashes:
>* Cleartext-Password &mdash; no hash, just password
>* Crypt-Password &mdash; unix hash
>* MD5-Password &mdash; MD5 hash
>* SMD5-Password &mdash; MD5 hash with salt
>* SHA-Password &mdash; SHA1 hash
>* SSHA-Password &mdash; SHA1 hash with salt
>* NT-Password &mdash; LM hash
>* LM-Password &mdash; NTLM hash


    RAD_REPLY=radreply

    RAD_GROUPCHECK=radgroupcheck
>*List of huntgroup names for devices*
>*use 'Devices:&lt;group_name&gt;:&lt;user_privilegie&gt;', 'Huntgroup-Name', '==', '&lt;group_name&gt;'*
>>***Example:***
>>
>> |groupname|attribute|op|value|
>> |---|---|---|---|
>> |Devices:Core:Administrator|Huntgroup-Name|==|Core|
>> |Devices:VoIP:Manager|Huntgroup-Name|==|VoIP|

    RAD_GROUPREPLY=radgroupreply
>*use '&lt;vendor&gt;:&lt;user_privilegie&gt;', '&lt;attribute&gt;', ':=', '&lt;value&gt;'*
>>***Example:***
>>
>> |groupname|attribute|op|value|
>> |---|---|---|---|
>> |CISCO:Administrator|Service-Type|:=|Login-User|
>> |CISCO:Administrator|Cisco-AVPair|:=|shell:priv-lvl=15|
>> |ZyXEL:Manager|Service-Type|:=|Login-User|
>> |ZyXEL:Manager|Cisco-AVPair|:=|shell:priv-lvl=13|

    RAD_USERGROUP=radusergroup
>*Table to keep group info*
>*use '&lt;username&gt;', 'Devices:&lt;group_name&gt;:&lt;user_privilegie&gt;'*
>*groupname '**Super**' means access to all devices*
>>***Example:***
>>
>> |username|groupname|
>> |---|---|
>> |user1|Devices:Super:Administrator|
>> |user2|Devices:VoIP:Manager|

    READ_GROUPS=yes
>*If set to 'yes' (default) we read the group tables*
>*If set to 'no' the user MUST have Fall-Through = Yes in the **radreply** table*


    DELETE_STALE=yes
>*Remove stale session if **checkrad** does not see a double login*


    SQL_TRACE=yes
>*Print all SQL statements when in debug mode (-x) to ${logdir}/sql*race.sql*


    SQL_SOCKS=10
>*Number of sql connections to make to server*
>*Setting this to LESS than the number of threads means that some threads may starve, and you will see errors like "No connections available and at max connection limit"*
>*Setting this to MORE than the number of threads means that there are more connections than necessary.*


    SQL_DELAY=60
>*Number of seconds to dely retrying on a failed database connection (per_socket)*


    SQL_LIFETIME=0
>*Lifetime of an SQL socket.  If you are having network issues such as TCP sessions expiring, you may need to set the socket lifetime.  If set to non-zero, any open connections will be closed "lifetime" seconds after they were first opened.*


    SQL_QUERIES=0
>*Maximum number of queries used by an SQL socket.  If you are having issues with SQL sockets lasting "too long", you can limit the number of queries performed over one socket.  After "max_qeuries", the socket will be closed.*
>*Use **0** for "no limit".*


    READ_CLIENTS=yes
>*Set to 'yes' to read radius clients from the database ('nas' table)*
>*Clients will ONLY be read on server startup.  For performance and security reasons, finding clients via SQL queries CANNOT be done "live" while the server is running.*

    VENDOR=radvendor
>*Table to store vendor types for all devices. Must contain all NAS-IP-Address clients and it's types. Used to select correct vendor specific responses.*
>*use '&lt;nas-ip-address&gt;', '&lt;nas-vendor-type&gt;'
>>***Example:***
>>
>> |nasipaddress|nasvendortype|
>> |---|---|
>> |172.16.2.2|CISCO|
>> |172.16.2.6|ZyXEL|

    HUNTGROUP=radhuntgroup
>*Device groups*
>*use '&lt;group-name&gt;', '&lt;nas-ip-address&gt;'*
>>***Example:***
>>
>> |groupname|nasipaddress|
>> |---|---|
>> |Core|172.16.2.2|
>> |VoIP|172.16.2.6|

    NAS=nas
>*Table to keep radius client info*

Environment variables from **vkushnir/freeradius:2-oracle**

    ENV RADIUS_USER="freerad"
    ENV RADIUS_GROUP="freerad"
>*Username and group used to run FreeRADIUS server*


    ENV RADIUS_UID="105"
    ENV RADIUS_GID="107"
>*UID and GID set according to host system*
