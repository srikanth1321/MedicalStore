pipeline {

    agent {

        label "master"
    }
    tools{
        maven "maven"
    }
    triggers{ cron('H H(9-16)/2 * * 1-5') }
    options {
    buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '10'))
    }
    stages {
        stage("Maven Build") {

            steps {

                script {
                sh "mvn package -DskipTests=true"
                }
                }

            }
       stage("SonarQube Analysis") {
            steps {
                withSonarQubeEnv('sonar') {
                sh 'mvn sonar:sonar'
                  }
             }
           }

        stage('Build Docker Image') {
            steps {

                script {
      sh "$docker_path/docker build -t medicalstore:1.0 ."

            }
        }
        }
        stage("archiveArtifacts") {
            steps {
                   archiveArtifacts artifacts: 'target/MedicalStore.war', followSymlinks: false
            }
        }

         stage("Trigger Nexus Job"){
	        steps{
		           build wait: false, job: 'MedicalStore2'
               }
              }

    }
}
