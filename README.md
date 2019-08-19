# Use

#### Export and copy Zimbra Ldap


```ruby
su - zimbra -c "/opt/zimbra/libexec/zmslapcat /var/tmp"
scp /var/tmp/ldap.bak root@remoteServer:/path
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
ca aacunav@exmple.com 12345678 zimbraId 1d89e61d-448f-4d31-b696-df94a2eeabb9
ma aacunav@exmple.com cn "Alejandra Acuña Vidal" sn "Acuña Vidal" givenName "Alejandra" displayName "Alejandra Acuña Vidal" telephoneNumber "" zimbraNotes "" userPassword "{SSHA}Qa035IO9yBQi1uNzwLBe7m560JZyCxzz" zimbraMailQuota "" co "" ou "" company "" physicalDeliveryOfficeName ""
```

### Fix UTF8 characters

1. Open Zimbra `.bash_profile` and put 

```ruby
export LC_ALL=nb_NO.UTF-8
```

2. Modify the output file and set `zmprov ma .....`

```ruby
zmprov ma aacunav@exmple.com cn "Alejandra Acuña Vidal" sn "Acuña Vidal" givenName "Alejandra" displayName "Alejandra Acuña Vidal" 
```

3. Run output file

```ruby
sh zm_mod_account
```

