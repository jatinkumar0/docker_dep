pipeline{
  agent any 
        tools
  {
    maven "maven"
  }
  stages {
    stage('checkout')
    {
      steps{
      git branch: 'main', url: 'https://github.com/jatinkumar0/docker_dep.git'
      }
    }
  
    stage('Execute Maven')
    {
      steps{
      sh "mvn package"
  }
    }
  
	    	stage ('Creat War File') {
		steps {
		sh 'jar -cf target/dependency/webapp-runner.jar target/jatin.war'
		}
		}
    
    
    stage('Docker Build')
    {
      steps{
      
	      sh "service docker start"
	      sh "docker build -t jatin ."
      }
    }
  
  
  }
}
