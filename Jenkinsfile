node ('dotnetcore') {
	echo 'hello from Simple Dot Net Pipeline'
    //input 'Ready to go?'
    //sh 'buildme.sh'
	sh 'cd /home/jenkins/workspace/simpleDotNet'
	sh 'ls -la'
	sh 'dotnet restore'
	sh 'dotnet build'
}

// RUN ["dotnet", "restore"]
// RUN ["dotnet", "build"]
