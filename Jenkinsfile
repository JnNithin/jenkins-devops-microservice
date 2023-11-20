//Scripted

// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration Test"
// 	}

//Declarative

pipeline {
	//agent {docker {image 'maven:3.6.3'}} 
	agent {docker {image "node::21-alpine3.18"}}
	stages {
		stage ('Build') {
			steps {
				//sh "mvn --version"
				sh "node --version"
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