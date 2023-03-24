# Audit summary

Summary for [Azure DevOps instance](https://dev.azure.com/ghes-demo/ghes-migration/_build)

- GitHub Actions Importer version: **1.1.16912 (35f586628531ad7d7f0e772abeeda681da325bd4)**
- Performed at: **3/22/23 at 06:50**

## Pipelines

Total: **1**

- Successful: **1 (100%)**
- Partially successful: **0 (0%)**
- Unsupported: **0 (0%)**
- Failed: **0 (0%)**

### Job types

Supported: **1 (100%)**

- YAML: **1**

### Build steps

Total: **12**

Known: **12 (100%)**

- NuGetToolInstaller@1: **2**
- VSBuild@1: **2**
- checkout: **1**
- PowerShell@2: **1**
- powershell: **1**
- myAction@6(custom): **1**
- InlinePowershell@1: **1**
- VSTest@2: **1**
- NuGetCommand@2: **1**
- VisualStudioTestPlatformInstaller@1(custom): **1**

Actions: **17**

- run: **6**
- actions/checkout@v3.3.0: **3**
- nuget/setup-nuget@v1.1.1: **2**
- ./.github/actions/templates_template1: **1**
- microsoft/vstest-action@v1.0.0: **1**
- ./.github/actions/templates_more_template3: **1**
- ./.github/workflows/templates_template2.yml: **1**
- microsoft/setup-msbuild@v1.3.1: **1**
- azure/login@v1.4.6: **1**

### Triggers

Total: **1**

Known: **1 (100%)**

- continuousIntegration: **1**

Actions: **1**

- push: **1**

### Environment

Total: **7**

Known: **7 (100%)**

- AzureKeyVault: **1**
- testPlatformVersion: **1**
- solution: **1**
- serviceUrl: **1**
- isMain: **1**
- buildPlatform: **1**
- buildConfiguration: **1**

Actions: **6**

- testPlatformVersion: **1**
- solution: **1**
- serviceUrl: **1**
- isMain: **1**
- buildPlatform: **1**
- buildConfiguration: **1**

### Other

Total: **1**

Known: **1 (100%)**

- RunSomething: **1**

Actions: **1**

- RunSomething: **1**

### Manual tasks

Total: **1**

Secrets: **1**

- `${{ secrets.AZURE_CREDENTIALS }}`: **1**

### Successful

#### ghes-migration/ghes-migration

- [pipelines/ghes-migration/ghes-migration/.github/workflows/ghes-migration.yml](pipelines/ghes-migration/ghes-migration/.github/workflows/ghes-migration.yml)
- [pipelines/ghes-migration/ghes-migration/.github/workflows/templates_template2.yml](pipelines/ghes-migration/ghes-migration/.github/workflows/templates_template2.yml)
- [pipelines/ghes-migration/ghes-migration/.github/actions/templates_template1/action.yml](pipelines/ghes-migration/ghes-migration/.github/actions/templates_template1/action.yml)
- [pipelines/ghes-migration/ghes-migration/.github/actions/templates_more_template3/action.yml](pipelines/ghes-migration/ghes-migration/.github/actions/templates_more_template3/action.yml)
- [pipelines/ghes-migration/ghes-migration/config.json](pipelines/ghes-migration/ghes-migration/config.json)
- [pipelines/ghes-migration/ghes-migration/source.yml](pipelines/ghes-migration/ghes-migration/source.yml)
