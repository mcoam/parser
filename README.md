# Use

#### Export and copy Zimbra Ldap


```ruby
su - zimbra -c "/opt/zimbra/libexec/zmslapcat -c /var/tmp"
scp /var/tmp/ldap.ldif root@remoteServer:/path
```


#### Parser ldif 

```ruby
./parser.pl ldap.ldif > zm_provision
```

#### Execute

```ruby
zmprov < zm_provision

```

#### Output file

```
ca aacunav@exmple.com 12345678 zimbraId 1d89e61d-448f-4d31-b696-df94a2eeaea9
ma aacunav@exmple.com cn "Alejandra Acuña Vidal" sn "Acuña Vidal" givenName "Alejandra" displayName "Alejandra Acuña Vidal" telephoneNumber "" zimbraNotes "" userPassword "{SSHA}Qa035IO9yBQi1uNzwLBe7m560JZyCxFW" zimbraMailQuota "" co "" ou "" company "" physicalDeliveryOfficeName ""
```
