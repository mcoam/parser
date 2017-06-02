# Use

#### Export and copy Zimbra Ldap
```
su - zimbra -c "/opt/zimbra/libexec/zmslapcat -c /var/tmp"
scp /var/tmp/ldap.ldif root@remoteServer:/path
``

#### Parser ldif 
```
./parser.pl ldap.ldif
```
