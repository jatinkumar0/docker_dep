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
  
    stage('Docker Build')
    {
      steps{
      sh "docker build -t jatin samplefile:latest"
      }
    }
  
  
  }
}
