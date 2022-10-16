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
    }
}
