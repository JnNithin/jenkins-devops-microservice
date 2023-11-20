//Scripted

// node {
// 		echo "Build"
// 		echo "Test"
// 		echo "Integration Test"
// 	}

//Declarative

pipeline {
	//agent {docker {image 'maven:3.6.3'}} 
	//agent {docker {image "node:21-alpine3.18"}}
	agent any
	stages {
		stage ('Build') {
			steps {
				//sh "mvn --version"
				//sh "node --version"
				echo "Build"
				echo "$PATH"
				echo "BUILD_NUMBER - $env.BUILD_NUMBER"
				echo "Build-id - $env.BUILD_ID"
				echo "Job Url - $env.JOB_URL"
				echo "Build-Tag - $env.BUILD_TAG"
				echo "Build-url - $env.BUILD_URL"
			}
		}
		stage ('Test') {
			steps {
				echo "Test"
				echo "$env.currentResult"
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