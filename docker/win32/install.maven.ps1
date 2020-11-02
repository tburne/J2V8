
Write-Host 'Downloading ...';
C:/j2v8/docker/win32/wget.ps1 `
    https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip `
    C:\maven.zip

Write-Host 'Installing Maven ...';
C:/j2v8/docker/win32/unzip.ps1 "C:/maven.zip" "C:/"

$env:PATH = 'C:\apache-maven-3.6.3\bin;'+$env:PATH;
[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine);

Write-Host 'Verifying install ...';
Write-Host 'mvn -version'; mvn -version;

Write-Host 'Removing ...';
Remove-Item C:\maven.zip -Force;

Write-Host 'Complete.';
