//Scripted

// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration Test"
// 	}

//Declarative

pipeline {
	agent {docker {image 'maven:3.6.3'}} 
	stages {
		stage ('Build') {
			steps {
				sh "mvn --version"
				echo "Build"
			}
		}
		stage ('Test') {
			steps {
				echo "Test"
			}
		}
		stage ('Integration Test') {
			steps {
				echo "Integration Test"
			}
		}
	} 
	post {
		always {
			echo 'This runs always'
		}
		success {
			echo 'This runs only when pipeline is successful'
		}
		failure {
			echo 'This runs when tasks fails in the pipeline'
		}
	}
}