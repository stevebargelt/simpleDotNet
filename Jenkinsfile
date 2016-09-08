node ('dotnetcore') {
	
	stage 'checkout'    
    	git url: 'https://github.com/stevebargelt/simpleDotNet'

	stage 'build'
		sh 'buildme.sh'
		//sh 'dotnet restore'
		//sh 'dotnet build'
}