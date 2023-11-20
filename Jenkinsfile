//Scripted

// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration Test"
// 	}

//Declarative

pipeline {
	agent any 
	stages {
		stage ('Build') {
			steps {
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
	} post {
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