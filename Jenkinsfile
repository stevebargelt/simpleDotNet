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
			//jenkins-simpleaspdotnetcore-36
			echo "Building: ${env.BUILD_TAG} || Build Number: ${env.BUILD_NUMBER}"
			def pcImg = docker.build("simpledotnet", 'publish')   
			pcImg.push();
		}
	} //docker 		
} //node
