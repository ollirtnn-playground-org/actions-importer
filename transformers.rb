
# This transformer is used to convert the Azure Pipelines YAML file to GitHub Actions YAML file
# to run use: --custom-transformer transformers.rb
# like: gh actions-importer dry-run azure-devops pipeline --pipeline-id 2 --output-dir tmp/dry-run --custom-transformers transformers.rb

# Convert environment variables
# first parameter is the name of the environment variable in Azure Pipelines
# second parameter is the updated value of the environment variable to be used in GitHub Actions
env "BUILDCONFIGURATION", "Debug"

# Convert runners
# first parameter is the name of the runner in Azure Pipelines
# second parameter is the updated value of the runner to be used in GitHub Actions
runner "mechamachine", "ubuntu-latest"

# Convert DotnetCoreCLI@2 tasks to support parameters that are glob patterns and run the command for each project
# glob patterns are like *.csproj or **/*.csproj
# shopt -s globstar is used to enable globstar in bash
transform "DotNetCoreCLI@2" do |item|
  projects = item["projects"]
  command = item["command"]
  run_command = []

  if projects.include?("$")
    command = "build" if command.nil?
    run_command << "shopt -s globstar; for f in ./**/*.csproj; do dotnet #{command} $f #{item['arguments']} ; done"
  else
    run_command << "dotnet #{command} #{item['projects']} #{item['arguments']}"
  end

  {
    run:   run_command.join("\n"),
    shell: "bash",
  }
end

transform "CheckinFilesRecursiveWithCleanupActions@6" do |item|
  {
    run:
      "[Reflection.Assembly]::LoadFrom("$root\bin\System.Threading.Tasks.Dataflow.dll")",
      "scripts/checkin-files-recursive.ps1 -SourceFolder #{item['sourceFolder']} -TargetFolder #{item['targetFolder']} -CleanupAction #{item['cleanupAction']}",
      "$dll = new-object BuildProcessCustomActivitiesVS2017.CheckInFilesAndUpdateCSProject",
      "$dll.Execute(-SourceFolder #{item['sourceFolder']} -TargetFolder #{item['targetFolder']} -CleanupAction #{item['cleanupAction']}",
    shell: "pwsh"
  }
end