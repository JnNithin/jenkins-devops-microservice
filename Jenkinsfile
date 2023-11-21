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
	environment {
		dockerHome = tool 'dkrJnk'
		mavenHome = tool 'mvnPkg'
		PATH = "$dockerHome/bin:$mavenHome/bin:$PATH"
	}
	stages {
		stage ('Checkout') {
			steps {
				sh "mvn --version"
				sh "docker version"
				echo "Build"
				echo "$PATH"
				echo "BUILD_NUMBER - $env.BUILD_NUMBER"
				echo "Build-id - $env.BUILD_ID"
				echo "Job Url - $env.JOB_URL"
				echo "Build-Tag - $env.BUILD_TAG"
				echo "Build-url - $env.BUILD_URL"
			}
		}
		stage ('Compile'){
			steps {
				sh "mvn clean compile"
			}
		}
		stage ('Test') {
			steps {
				sh "mvn test"
			}
		}
		stage ('Integration Test') {
			steps {
				sh "mvn failsafe:integration-test failsafe:verify"
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