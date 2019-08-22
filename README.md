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
 244 github.com/hashicorp/terraform/helper/schema
 175 github.com/hashicorp/terraform/terraform
 125 github.com/hashicorp/terraform/helper/resource
  86 github.com/hashicorp/terraform/plugin
  54 github.com/hashicorp/terraform/helper/validation
  51 github.com/hashicorp/terraform/helper/hashcode
  49 github.com/hashicorp/terraform/helper/acctest
  24 github.com/hashicorp/terraform/helper/logging
  14 github.com/hashicorp/terraform/helper/mutexkv
  12 github.com/hashicorp/terraform/helper/pathorcontents
  10 github.com/hashicorp/terraform/helper/structure
  10 github.com/hashicorp/terraform/helper/customdiff
   6 github.com/hashicorp/terraform/httpclient
   5 github.com/hashicorp/terraform/helper/encryption

   9 github.com/hashicorp/terraform/config
   1 github.com/hashicorp/terraform/configs/configschema
   3 github.com/hashicorp/terraform/flatmap
   2 github.com/hashicorp/terraform/svchost/disco
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
github.com/hashicorp/terraform/configs/configschema
github.com/hashicorp/terraform/configs/hcl2shim
github.com/hashicorp/terraform/helper/hashcode
github.com/hashicorp/terraform/providers
github.com/hashicorp/terraform/terraform
github.com/hashicorp/terraform/tfdiags
```

```
github.com/davecgh/go-spew/spew
github.com/google/go-cmp/cmp
github.com/google/go-cmp/cmp/cmpopts
github.com/hashicorp/go-multierror
github.com/hashicorp/hil
github.com/hashicorp/hil/ast
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
github.com/hashicorp/terraform/configs
github.com/hashicorp/terraform/configs/configload
github.com/hashicorp/terraform/configs/configschema
github.com/hashicorp/terraform/configs/hcl2shim
github.com/hashicorp/terraform/dag
github.com/hashicorp/terraform/flatmap
github.com/hashicorp/terraform/helper/didyoumean
github.com/hashicorp/terraform/helper/experiment
github.com/hashicorp/terraform/helper/logging
github.com/hashicorp/terraform/httpclient
github.com/hashicorp/terraform/internal/initwd
github.com/hashicorp/terraform/lang
github.com/hashicorp/terraform/moduledeps
github.com/hashicorp/terraform/plans
github.com/hashicorp/terraform/plans/objchange
github.com/hashicorp/terraform/plans/planfile
github.com/hashicorp/terraform/plugin/discovery
github.com/hashicorp/terraform/providers
github.com/hashicorp/terraform/provisioners
github.com/hashicorp/terraform/registry
github.com/hashicorp/terraform/states
github.com/hashicorp/terraform/states/statefile
github.com/hashicorp/terraform/tfdiags
github.com/hashicorp/terraform/version
```

```
github.com/agext/levenshtein
github.com/davecgh/go-spew/spew
github.com/go-test/deep
github.com/google/go-cmp/cmp
github.com/google/go-cmp/cmp/cmpopts
github.com/hashicorp/errwrap
github.com/hashicorp/go-multierror
github.com/hashicorp/go-uuid
github.com/hashicorp/go-version
github.com/hashicorp/hcl2/hcl
github.com/hashicorp/hcl2/hcl/hclsyntax
github.com/hashicorp/hcl2/hcldec
github.com/hashicorp/hcl2/hcltest
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
github.com/hashicorp/terraform/configs/hcl2shim
github.com/hashicorp/terraform/helper/plugin
github.com/hashicorp/terraform/internal/tfplugin5
github.com/hashicorp/terraform/plugin/convert
github.com/hashicorp/terraform/plugin/discovery
github.com/hashicorp/terraform/plugin/mock_proto
github.com/hashicorp/terraform/providers
github.com/hashicorp/terraform/provisioners
github.com/hashicorp/terraform/terraform
github.com/hashicorp/terraform/tfdiags
github.com/hashicorp/terraform/version
```

```
github.com/golang/mock/gomock
github.com/google/go-cmp/cmp
github.com/google/go-cmp/cmp/cmpopts
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
github.com/hashicorp/terraform/configs
github.com/hashicorp/terraform/configs/configload
github.com/hashicorp/terraform/configs/hcl2shim
github.com/hashicorp/terraform/helper/config
github.com/hashicorp/terraform/helper/logging
github.com/hashicorp/terraform/helper/plugin
github.com/hashicorp/terraform/helper/schema
github.com/hashicorp/terraform/internal/initwd
github.com/hashicorp/terraform/internal/tfplugin5
github.com/hashicorp/terraform/plans
github.com/hashicorp/terraform/plugin
github.com/hashicorp/terraform/plugin/discovery
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
github.com/hashicorp/terraform/terraform
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
github.com/apparentlymart/go-cidr/cidr
golang.org/x/crypto/ssh
```

## Package exposure

Which parts of each package are actually in use by providers?

### Methodology

Assuming all providers are cloned into `$GOPATH/src/github.com/terraform-providers/`:

#### Create report of all uses of a package

For package `helper/schema` as below:

```sh
ls -d ../terraform-providers/* | xargs -I{} ./list-package-refs.sh {} github.com/hashicorp/terraform/helper/schema > report-exposure-helper-schema.txt
```

#### Count by exported name

For package `helper/schema` as below, assuming `report-exposure-helper-schema.txt` has been created:

```sh
awk -F: '{print $2}' report-exposure-helper-schema.txt | sort | uniq -c | sort -r -n
```


### `helper/schema`

```
  30659 TypeString
  18293 ResourceData
  12696 Schema
  11251 Resource
   4408 TypeList
   4043 TypeInt
   3401 TypeBool
   3069 Set
   1941 ResourceImporter
   1893 TypeSet
   1439 ImportStatePassthrough
   1288 DefaultTimeout
   1219 TypeMap
   1046 HashString
    685 TimeoutCreate
    572 TimeoutDelete
    524 NewSet
    521 ResourceTimeout
    518 TimeoutUpdate
    463 Provider
    416 EnvDefaultFunc
    175 TypeFloat
    169 SchemaValidateFunc
    128 ResourceDiff
    127 MultiEnvDefaultFunc
     60 TestResourceDataRaw
     51 HashResource
     36 SchemaConfigModeAttr
     27 TimeoutRead
     16 SchemaDiffSuppressFunc
     15 StateFunc
     15 ReadFunc
     14 DeleteFunc
     12 SerializeResourceForHash
     12 Noop
     11 CreateFunc
     10 RemoveFromState
      9 UpdateFunc
      8 StateUpgrader
      8 SchemaDefaultFunc
      7 ConfigureFunc
      5 SchemaSetFunc
      5 MapFieldReader
      5 HashSchema
      5 HashInt
      5 BasicMapReader
      4 ValueType
      4 MapFieldWriter
      4 DataSourceResourceShim
      2 DefaultFunc
      1 ResourceTypes
      1 Label
      1 Equal
      1 DataSources
      1 CopySet
```

Full report: `report-exposure-helper-schema.txt`.

### `terraform`

```
   7651 State
    611 ResourceProvider
    472 InstanceState
     33 NewResourceConfig
     17 VersionString
     14 ResourceState
      7 ResourceProviderFactory
      5 UserAgentString
      2 ProviderSchemaRequest
      1 ResourceConfig
```

Full report: `report-exposure-terraform.txt`.

### `plugin`

```
     87 ServeOpts
     87 Serve
      1 VersionedPlugins
      1 DefaultProtocolVersion
```

Full report: `report-exposure-plugin.txt`.

### `helper/validation`

```
   1557 StringInSlice
    339 IntBetween
    226 StringLenBetween
    186 NoZeroValues
    148 IntAtLeast
     95 StringMatch
     62 ValidateJsonString
     19 ValidateRegexp
     19 SingleIP
     18 ValidateRFC3339TimeString
     16 CIDRNetwork
     12 IntInSlice
     10 IntAtMost
      7 All
      5 Any
      1 FloatBetween
```

Full report: `report-exposure-helper-validation.txt`.

### `helper/hashcode`

```
    342 String
      3 Strings
```

Full report: `report-exposure-helper-hashcode.txt`.

### `helper/resource`

```
  39820 TestCheckResourceAttr
  13141 ComposeTestCheckFunc
  11766 TestStep
  11525 TestCase
   7061 TestCheckResourceAttrSet
   6181 Test
   5303 ParallelTest
   4374 TestCheckFunc
   1828 ComposeAggregateTestCheckFunc
    929 TestMatchResourceAttr
    899 StateChangeConf
    842 TestCheckResourceAttrPair
    749 NonRetryableError
    740 RetryableError
    719 RetryError
    707 Retry
    459 StateRefreshFunc
    348 TestCheckNoResourceAttr
    279 Sweeper
    279 AddTestSweepers
    160 TestCheckResourceAttrPtr
    117 PrefixedUniqueId
     90 UniqueId
     76 TestEnvVar
     41 UnitTest
     37 ImportStateIdFunc
     32 Primary
     19 NotFoundError
     18 UniqueIDSuffixLength
     17 TestMain
     14 DisplayName
      9 TestCheckOutput
      5 RetryFunc
      4 Type
      4 Attributes
      3 UniqueIdPrefix
      3 TimeoutError
      2 Schema
      2 ID
      1 TestMatchOutput
      1 ResourceType
      1 ResourceId
      1 Path
```

Full report: `report-exposure-helper-resource.txt`.

### `helper/logging`

```
     20 NewTransport
      9 IsDebugOrHigher
      1 LogOutput
      1 LogLevel
```

Full report: `report-exposure-helper-logging.txt`.

### `helper/mutexkv`

```
     14 NewMutexKV
```

Full report: `report-exposure-helper-mutexkv.txt`.

### `helper/structure`

```
     58 NormalizeJsonString
     22 SuppressJsonDiff
     19 ExpandJsonFromString
     16 FlattenJsonToString
```

Full report: `report-exposure-helper-structure.txt`.

### `helper/pathorcontents`

```
     23 Read
```

Full report: `report-exposure-helper-pathorcontents.txt`.


### `helper/customdiff`

```
     30 All
     18 ForceNewIfChange
     13 Sequence
     11 ValidateChange
      5 ComputedIf
      2 If
      2 ForceNewIf
```

Full report: `report-exposure-helper-customdiff.txt`.

### `httpclient`

```
      8 UserAgentString
```

Full report: `report-exposure-httpclient.txt`.

### `helper/encryption`

```
      7 RetrieveGPGKey
      7 EncryptValue
```

Full report: `report-exposure-helper-encryption.txt`.

### `helper/acctest`

```
   4412 RandString
   1699 RandInt
   1340 RandomWithPrefix
    436 RandStringFromCharSet
    393 CharSetAlphaNum
     57 RandIntRange
     33 RandSSHKeyPair
     30 CharSetAlpha
```

Full report: `report-exposure-helper-acctest.txt`.

### `config`

```
  24 NewRawConfig
   3 Plaintext
   2 Endpoint
   1 LoadAndValidate
   1 Insecure
```

Full report: `report-exposure-config.txt`.
