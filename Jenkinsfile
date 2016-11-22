#!/usr/bin/env groovy

node ('TeamBargelt_dotnetcore_simpleDotNet') {
	
	docker.withRegistry('https://abs-registry.harebrained-apps.com/', 'absadmin') {

		stage('build') {    
			git url: 'https://github.com/stevebargelt/simpleDotNet'

			sh 'dotnet restore'
			sh 'dotnet test test/simpleDotNet.Tests/project.json'
			sh 'dotnet publish src/simpleDotNet/project.json -c release -o $(pwd)/publish/'
			//archiveArtifacts artifacts: './publish/**', fingerprint: true

			//def pcImg = docker.build("simpledotnet:${env.BUILD_TAG}", 'publish')
			sh 'echo "${env.BUILD_TAG}"'
			def pcImg = docker.build("simpledotnet", 'publish')   
			pcImg.push();
		}
	} //docker 		
} //node
