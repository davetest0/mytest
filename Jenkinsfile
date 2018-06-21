pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello world!' 
		echo 'now I'm going to add a new file'
		sh 'echo blahfromjenkins | sendmail -v l0b9u3m6l5r5j4x6@nikedigital.slack.com'
            }
        }
    }
}
