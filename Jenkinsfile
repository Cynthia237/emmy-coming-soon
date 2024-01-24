pipeline{
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    
    stages
       stage('checkout') {
          steps{       
          // check out the source code from your repository
          sh 'git pull https://github.com/Cynthia237/emmy-coming-soon.git/'
          checkout        
        }
    
        stage('build') {
            steps{
                echo "building"
                sh '''
                npm install
                npm run build
                '''
            }
        }
        }
        stage('Test') {
            steps {
               echo "testing"
               sh 'npm run test'
            }
        }         
}