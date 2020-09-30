pipeline {
    agent {
        docker {
            image 'python:3.8.6-alpine3.12'
        }
    }
    stages {
        stage('install dependencies') {
            steps {
                sh 'pip install requirements.txt'
            }
        }
        stage('lint') {
            steps {
                sh 'pylint --disable=R,C,W1203 app.py'
            }
        }
    }
}