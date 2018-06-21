pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello world!' 
		sh 'echo blahfromjenkins | sendmail -v l0b9u3m6l5r5j4x6@nikedigital.slack.com'
            }
        }
    }
}
