# Use

#### Export and copy Zimbra Ldap


```ruby
su - zimbra -c "/opt/zimbra/libexec/zmslapcat -c /var/tmp"
scp /var/tmp/ldap.ldif root@remoteServer:/path
```


#### Parser ldif 

```ruby
./parser.pl ldap.ldif
```
