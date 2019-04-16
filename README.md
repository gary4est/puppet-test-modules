#Puppet: Test Modules

This file use used to test Puppet on a puppet node.

```
puppet apply tests/test.pp
```

## Test Puppet Modules on a Puppet Agent

Sometimes if I have issues with a puppet module, it is best to test out your module on a test server. With a copy of the modules on the test server your can run a test with the following syntax.

```
puppet apply --modulepath=/tmp/modules -e "include ntp" --noop

