pipeline {
    agent any
	parameters {
			string (defaultValue: 'dev', description: 'Enter the ENV value', name: 'ENV')
			choice (name: 'TEST', choices: ['unit', 'integration', 'dynamic'], description: '')
	}
	environment {
			TOMCAT_KEY = credentials('demo-secret')
	}
	stages {
           stage('stage-1') {
							steps {
									echo "executing in ${ENV} environment"
							}
			}
			stage('Stage-2') {
							steps {
									echo "Executing ${TEST} on checkout code"
						}
			}

	}
}
