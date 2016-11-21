#!/usr/bin/env groovy

node ('TeamBargelt_dotnetcore_simpleDotNet') {
	
	docker.withRegistry('https://abs-registry.harebrained-apps.com/', 'absadmin') {

		stage('build') {    
			git url: 'https://github.com/stevebargelt/simpleDotNet'

			sh 'ls -la'
			sh './buildme.sh'
			//sh 'dotnet restore'
			//sh 'dotnet build ./src/simpleDotNet'
			//sh 'dotnet test ./test/simpleDotNet.Tests'
			//sh 'cd /src/simpleDotNet'
			//sh 'dotnet publish -o ./publish'
			//archiveArtifacts artifacts: './publish/**', fingerprint: true

			def pcImg = docker.build("simpleDotNet:${env.BUILD_TAG}", 'publish')   
			pcImg.push();
		}
	} //docker 		
} //node
