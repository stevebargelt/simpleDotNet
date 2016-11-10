node ('TeamBargelt_dotnetcore_simpleDotNet') {
	
	stage('checkout') {    
    	git url: 'https://github.com/stevebargelt/simpleDotNet'
	}
	stage('build') {
		sh 'dotnet restore'
		sh 'dotnet build ./src/simpleDotNet'
		sh 'dotnet test ./test/simpleDotNet.Tests'
	}
}
