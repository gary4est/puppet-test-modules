

$num = regsubst($hostname, '^\w+(\d{3})\w+$','\1')
notify { "host num is ${num}": }

# $i3 = regsubst($ipaddress,'^(\d+)\.(\d+)\.(\d+)\.(\d+)$','\3')

$region = regsubst($ec2_placement_availability_zone, '^(\w+)\-(\w+)\-(\d)\w','\1-\2-\3')
notify { "Region is ${region}": }

$jvar = "jdk1.7.0_71-x86_64.tgz"
$java_dir = "/usr/java"
$jdkver = regsubst($jvar,"-${architecture}.tgz$", '\1')
$jdktype = regsubst($jvar,'^(\w{3}).+$','\1')

notify { "jvar is ${jvar} jdktype is ${jdktype} jdkver is ${jdkver}": }


