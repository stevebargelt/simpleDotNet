node ('dotnetcore') {
	echo 'hello from Simple Dot Net Pipeline'
    //input 'Ready to go?'
    
	git branch: 'master' url: 'https://github.com/stevebargelt/simpleDotNet.git'

	// sh 'cd /home/jenkins/workspace/simpleDotNet'
	// sh 'ls -la'

	//sh 'buildme.sh'
	sh 'dotnet restore'
	sh 'dotnet build'
}

// RUN ["dotnet", "restore"]
// RUN ["dotnet", "build"]
