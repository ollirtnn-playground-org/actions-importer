# Audit summary

Summary for [Azure DevOps instance](https://dev.azure.com/ghes-demo/ghes-migration/_build)

- GitHub Actions Importer version: **1.1.16871 (066cc141ec12c13376f8718492b878f2cfb83892)**
- Performed at: **3/10/23 at 09:35**

## Pipelines

Total: **2**

- Successful: **0 (0%)**
- Partially successful: **1 (50%)**
- Unsupported: **0 (0%)**
- Failed: **1 (50%)**

### Job types

Supported: **2 (100%)**

- YAML: **2**

### Build steps

Total: **8**

Known: **6 (75%)**

- VSBuild@1: **2**
- VSTest@2: **1**
- InlinePowershell@1: **1**
- NuGetCommand@2: **1**
- NuGetToolInstaller@1: **1**

Unknown: **2 (25%)**

- ProjectModifier@13: **1**
- VisualStudioTestPlatformInstaller@1: **1**

Actions: **7**

- run: **3**
- microsoft/setup-msbuild@v1.3.1: **1**
- microsoft/vstest-action@v1.0.0: **1**
- nuget/setup-nuget@v1.1.1: **1**
- actions/checkout@v3.3.0: **1**

### Triggers

Total: **1**

Known: **1 (100%)**

- continuousIntegration: **1**

Actions: **1**

- push: **1**

### Environment

Total: **3**

Known: **3 (100%)**

- solution: **1**
- buildPlatform: **1**
- buildConfiguration: **1**

Actions: **3**

- solution: **1**
- buildPlatform: **1**
- buildConfiguration: **1**

### Other

Total: **0**

### Partially successful

#### ghes-migration/ghes-migration

- [pipelines/ghes-migration/ghes-migration/.github/workflows/ghes-migration.yml](pipelines/ghes-migration/ghes-migration/.github/workflows/ghes-migration.yml)
- [pipelines/ghes-migration/ghes-migration/config.json](pipelines/ghes-migration/ghes-migration/config.json)
- [pipelines/ghes-migration/ghes-migration/source.yml](pipelines/ghes-migration/ghes-migration/source.yml)

### Failed

#### ghes-migration/ghes-migration_(1)

- [pipelines/ghes-migration/ghes-migration_(1)/error.txt](pipelines/ghes-migration/ghes-migration_(1)/error.txt)
- [pipelines/ghes-migration/ghes-migration_(1)/config.json](pipelines/ghes-migration/ghes-migration_(1)/config.json)
- [pipelines/ghes-migration/ghes-migration_(1)/source.yml](pipelines/ghes-migration/ghes-migration_(1)/source.yml)
