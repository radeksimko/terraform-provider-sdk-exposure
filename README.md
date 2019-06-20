# Terraform Provider SDK exposure

## Tooling

The following tools were used to produce this report.

- `curl`
- `git`
- `ls`
- `go list -json`
- `jq`
- `xargs`
- https://github.com/radeksimko/go-refs

## Providers included

Total of `88` - all actively maintained and supporting Go Modules.

```
terraform-provider-acme
terraform-provider-archive
terraform-provider-arukas
terraform-provider-aws
terraform-provider-azuread
terraform-provider-azurerm
terraform-provider-azurestack
terraform-provider-bigip
terraform-provider-bitbucket
terraform-provider-brightbox
terraform-provider-chef
terraform-provider-circonus
terraform-provider-ciscoasa
terraform-provider-cloudflare
terraform-provider-cloudscale
terraform-provider-cloudstack
terraform-provider-cobbler
terraform-provider-consul
terraform-provider-datadog
terraform-provider-digitalocean
terraform-provider-dns
terraform-provider-dnsimple
terraform-provider-docker
terraform-provider-dyn
terraform-provider-external
terraform-provider-fastly
terraform-provider-flexibleengine
terraform-provider-fortios
terraform-provider-github
terraform-provider-gitlab
terraform-provider-google
terraform-provider-google-beta
terraform-provider-grafana
terraform-provider-gridscale
terraform-provider-hcloud
terraform-provider-helm
terraform-provider-heroku
terraform-provider-http
terraform-provider-icinga2
terraform-provider-ignition
terraform-provider-influxdb
terraform-provider-jdcloud
terraform-provider-kubernetes
terraform-provider-linode
terraform-provider-local
terraform-provider-logicmonitor
terraform-provider-mysql
terraform-provider-netlify
terraform-provider-newrelic
terraform-provider-nomad
terraform-provider-ns1
terraform-provider-nsxt
terraform-provider-null
terraform-provider-nutanix
terraform-provider-oci
terraform-provider-oneandone
terraform-provider-opc
terraform-provider-openstack
terraform-provider-opentelekomcloud
terraform-provider-oraclepaas
terraform-provider-ovh
terraform-provider-packet
terraform-provider-pagerduty
terraform-provider-panos
terraform-provider-postgresql
terraform-provider-profitbricks
terraform-provider-rabbitmq
terraform-provider-rancher
terraform-provider-rancher2
terraform-provider-random
terraform-provider-rightscale
terraform-provider-rundeck
terraform-provider-runscope
terraform-provider-scaleway
terraform-provider-selectel
terraform-provider-skytap
terraform-provider-spotinst
terraform-provider-statuscake
terraform-provider-template
terraform-provider-tencentcloud
terraform-provider-tfe
terraform-provider-tls
terraform-provider-ucloud
terraform-provider-vault
terraform-provider-vcd
terraform-provider-vra7
terraform-provider-vsphere
terraform-provider-yandex
```

## Packages

Which packages from `github.com/hashicorp/terraform` are imported by providers?

```
 159 github.com/hashicorp/terraform/helper/schema
  94 github.com/hashicorp/terraform/terraform
  88 github.com/hashicorp/terraform/plugin
  54 github.com/hashicorp/terraform/helper/validation
  49 github.com/hashicorp/terraform/helper/hashcode
  42 github.com/hashicorp/terraform/helper/resource
  25 github.com/hashicorp/terraform/helper/logging
  13 github.com/hashicorp/terraform/helper/mutexkv
  10 github.com/hashicorp/terraform/helper/structure
   8 github.com/hashicorp/terraform/helper/pathorcontents
   8 github.com/hashicorp/terraform/helper/customdiff
   7 github.com/hashicorp/terraform/httpclient
   4 github.com/hashicorp/terraform/helper/encryption
   2 github.com/hashicorp/terraform/helper/acctest

   2 github.com/hashicorp/terraform/flatmap
   1 github.com/hashicorp/terraform/svchost/disco
   1 github.com/hashicorp/terraform/svchost/auth
   1 github.com/hashicorp/terraform/svchost
   1 github.com/hashicorp/terraform/lang
```

Packages above empty newline are considered to be part of SDK (`14`) and packages below (`5`) are considered
"special cases" I paid no further attention to in the rest of this report.

Detailed report (which provider imports what package) is in `report-provider-imports.csv`.

## Dependencies

Each of these 14 SDK packages listed above has its own dependency tree
within Terraform and outside of it. Go stdlib dependencies are omitted.

These are just **direct imports**, **not transitive** dependencies.

### `helper/schema`

```
github.com/hashicorp/terraform/config
github.com/hashicorp/terraform/config/hcl2shim
github.com/hashicorp/terraform/configs/configschema
github.com/hashicorp/terraform/helper/hashcode
github.com/hashicorp/terraform/terraform
github.com/hashicorp/terraform/tfdiags
```

```
github.com/hashicorp/go-multierror
github.com/mitchellh/copystructure
github.com/mitchellh/mapstructure
github.com/zclconf/go-cty/cty
github.com/zclconf/go-cty/cty/convert
github.com/zclconf/go-cty/cty/json
```

### `terraform`

```
github.com/hashicorp/terraform/addrs
github.com/hashicorp/terraform/config
github.com/hashicorp/terraform/config/hcl2shim
github.com/hashicorp/terraform/config/module
github.com/hashicorp/terraform/configs
github.com/hashicorp/terraform/configs/configschema
github.com/hashicorp/terraform/dag
github.com/hashicorp/terraform/flatmap
github.com/hashicorp/terraform/helper/didyoumean
github.com/hashicorp/terraform/httpclient
github.com/hashicorp/terraform/lang
github.com/hashicorp/terraform/moduledeps
github.com/hashicorp/terraform/plans
github.com/hashicorp/terraform/plans/objchange
github.com/hashicorp/terraform/plugin/discovery
github.com/hashicorp/terraform/providers
github.com/hashicorp/terraform/provisioners
github.com/hashicorp/terraform/states
github.com/hashicorp/terraform/states/statefile
github.com/hashicorp/terraform/tfdiags
github.com/hashicorp/terraform/version
```

```
github.com/agext/levenshtein
github.com/hashicorp/errwrap
github.com/hashicorp/go-multierror
github.com/hashicorp/go-uuid
github.com/hashicorp/go-version
github.com/hashicorp/hcl
github.com/hashicorp/hcl2/hcl
github.com/hashicorp/hcl2/hcl/hclsyntax
github.com/hashicorp/hcl2/hcldec
github.com/hashicorp/hil
github.com/hashicorp/hil/ast
github.com/mitchellh/copystructure
github.com/mitchellh/reflectwalk
github.com/zclconf/go-cty/cty
github.com/zclconf/go-cty/cty/convert
github.com/zclconf/go-cty/cty/gocty
github.com/zclconf/go-cty/cty/json
```

### `plugin`

```
github.com/hashicorp/terraform/configs/configschema
github.com/hashicorp/terraform/helper/plugin
github.com/hashicorp/terraform/internal/tfplugin5
github.com/hashicorp/terraform/plugin/convert
github.com/hashicorp/terraform/plugin/discovery
github.com/hashicorp/terraform/providers
github.com/hashicorp/terraform/provisioners
github.com/hashicorp/terraform/terraform
github.com/hashicorp/terraform/version
```

```
github.com/hashicorp/go-hclog
github.com/hashicorp/go-plugin
github.com/zclconf/go-cty/cty
github.com/zclconf/go-cty/cty/msgpack
google.golang.org/grpc
```

### `helper/validation`

```
github.com/hashicorp/terraform/helper/schema
github.com/hashicorp/terraform/helper/structure
```

### `helper/hashcode`

Only stdlib dependencies.

### `helper/resource`

```
github.com/hashicorp/terraform/addrs
github.com/hashicorp/terraform/command/format
github.com/hashicorp/terraform/config
github.com/hashicorp/terraform/config/hcl2shim
github.com/hashicorp/terraform/configs
github.com/hashicorp/terraform/configs/configload
github.com/hashicorp/terraform/helper/config
github.com/hashicorp/terraform/helper/logging
github.com/hashicorp/terraform/helper/plugin
github.com/hashicorp/terraform/helper/schema
github.com/hashicorp/terraform/internal/initwd
github.com/hashicorp/terraform/internal/tfplugin5
github.com/hashicorp/terraform/plans
github.com/hashicorp/terraform/plugin
github.com/hashicorp/terraform/providers
github.com/hashicorp/terraform/states
github.com/hashicorp/terraform/terraform
github.com/hashicorp/terraform/tfdiags
```

```
github.com/davecgh/go-spew/spew
github.com/hashicorp/errwrap
github.com/hashicorp/go-multierror
github.com/hashicorp/hcl2/hcl
github.com/hashicorp/hcl2/hcl/hclsyntax
github.com/hashicorp/logutils
github.com/mitchellh/colorstring
github.com/zclconf/go-cty/cty
google.golang.org/grpc
google.golang.org/grpc/test/bufconn
```

### `helper/logging`

```
github.com/hashicorp/logutils
```

### `helper/mutexkv`

Only stdlib dependencies.

### `helper/structure`

```
github.com/hashicorp/terraform/helper/schema
```

### `helper/pathorcontents`

```
github.com/mitchellh/go-homedir
```

### `helper/customdiff`

```
github.com/hashicorp/terraform/helper/schema
```

```
github.com/hashicorp/go-multierror
```

### `httpclient`

```
github.com/hashicorp/terraform/version
```

```
github.com/hashicorp/go-cleanhttp
```

### `helper/encryption`

```
github.com/hashicorp/errwrap
github.com/hashicorp/vault/helper/pgpkeys
```

### `helper/acctest`

```
golang.org/x/crypto/ssh
```

## Package exposure

Which parts of each package are actually in use by providers?

### Methodology

Assuming all providers are cloned into `$GOPATH/src/github.com/terraform-providers/`:

#### Create report of all uses of a package

For package `helper/schema` as below:

```sh
for f in $GOPATH/src/github.com/terraform-providers/*; do ./list-package-refs.sh $f github.com/hashicorp/terraform/helper/schema; done > report-exposure-helper-schema.txt
```

#### Count by exported name

For package `helper/schema` as below, assuming `report-exposure-helper-schema.txt` has been created:

```sh
awk -F ":" '{a[$2]++}END{for(i in a)  print a[i],i}' report-exposure-helper-schema.txt | sort -r -g
```


### `helper/schema`

```
28407 TypeString
16840 ResourceData
11417 Schema
10340 Resource
3981 TypeList
3670 TypeInt
3143 TypeBool
2837 Set
1785 ResourceImporter
1774 TypeSet
1323 ImportStatePassthrough
1130 DefaultTimeout
1073 TypeMap
 909 HashString
 619 TimeoutCreate
 530 TimeoutDelete
 470 ResourceTimeout
 465 TimeoutUpdate
 420 EnvDefaultFunc
 417 NewSet
 165 TypeFloat
 146 SchemaValidateFunc
 113 ResourceDiff
  98 Provider
  39 MultiEnvDefaultFunc
  39 HashResource
  28 SchemaConfigModeAttr
  15 StateFunc
  15 SchemaDiffSuppressFunc
  15 ReadFunc
  14 DeleteFunc
  11 SerializeResourceForHash
  11 Noop
  11 CreateFunc
   9 UpdateFunc
   8 TimeoutRead
   8 SchemaDefaultFunc
   7 RemoveFromState
   6 ConfigureFunc
   5 SchemaSetFunc
   5 MapFieldReader
   5 BasicMapReader
   4 ValueType
   4 StateUpgrader
   4 MapFieldWriter
   4 HashInt
   4 DataSourceResourceShim
   3 HashSchema
   2 DefaultFunc
   1 Label
   1 Equal
   1 CopySet
```

Full report: `report-exposure-helper-schema.txt`.

### `terraform`

```
 328 InstanceState
  93 ResourceProvider
  16 VersionString
  13 State
   5 UserAgentString
   2 ResourceState
```

Full report: `report-exposure-terraform.txt`.

### `plugin`

```
  88 ServeOpts
  88 Serve
```

Full report: `report-exposure-plugin.txt`.

### `helper/validation`

```
1437 StringInSlice
 318 IntBetween
 207 StringLenBetween
 182 NoZeroValues
 144 IntAtLeast
  86 StringMatch
  62 ValidateJsonString
  19 ValidateRegexp
  17 SingleIP
  15 ValidateRFC3339TimeString
  15 CIDRNetwork
  11 IntAtMost
   6 IntInSlice
   4 Any
   4 All
```

Full report: `report-exposure-helper-validation.txt`.

### `helper/hashcode`

```
 328 String
   3 Strings
```

Full report: `report-exposure-helper-hashcode.txt`.

### `helper/resource`

```
 835 StateChangeConf
 638 NonRetryableError
 602 RetryableError
 600 RetryError
 588 Retry
 443 StateRefreshFunc
 106 PrefixedUniqueId
  80 UniqueId
  18 UniqueIDSuffixLength
  18 NotFoundError
   5 TestCheckFunc
   5 RetryFunc
   2 TimeoutError
   2 Schema
   1 TestEnvVar
   1 ResourceType
   1 ResourceId
   1 PathPart
   1 Path
   1 ParentId
   1 Id
```

Full report: `report-exposure-helper-resource.txt`.

### `helper/logging`

```
  20 NewTransport
   9 IsDebugOrHigher
```

Full report: `report-exposure-helper-logging.txt`.

### `helper/mutexkv`

```
  13 NewMutexKV
```

Full report: `report-exposure-helper-mutexkv.txt`.

### `helper/structure`

```
  56 NormalizeJsonString
  22 SuppressJsonDiff
  19 ExpandJsonFromString
  15 FlattenJsonToString
```

Full report: `report-exposure-helper-structure.txt`.

### `helper/pathorcontents`

```
 19 Read
```

Full report: `report-exposure-helper-pathorcontents.txt`.


### `helper/customdiff`

```

```

### `httpclient`

```

```

### `helper/encryption`

```

```

### `helper/acctest`

```

```

Full report: ``.
