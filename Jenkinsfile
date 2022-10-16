pipeline {
    agent any
    tools {
        maven 'maven-3.6.3'
    }
    stages{
    	stage('git checkout'){

            steps{
                git branch: 'main', url: 'https://github.com/jesusmendozahuillca/demo-counter-app.git'
            }
        }
      stage('Unit Test'){

            steps{
                sh 'mvn test'
            }
        }
      stage('Integration Testing'){

            steps{
                sh 'mvn verify -DskipUnitTests'
            }
        }
      stage('Maven Install'){

            steps{
                sh 'mvn clean install'
            }
        }    
       stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t jmendoza4633/uber .' 
                }
            }
        }
        
    }
}
