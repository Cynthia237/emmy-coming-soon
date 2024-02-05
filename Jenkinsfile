pipeline{
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    environment {
        CI = false
    }    
    stages{
      stage('build') {
            steps{
                echo "building"
                sh '''
                npm install
                npm run build
                '''
            }
     }
     stage('dockerising') {
            steps {
                // dockerising
                sh 'docker login -u mncy580 --password-stdin C670219621#'
                sh 'docker build -t emmy-coming-soon:6 .'
                sh 'docker tag emmyride:6 mncy580/emmy-coming-soon:6'
                sh 'docker push mncy580/emmy-coming-soon:6'
            }
      }   
  }
             
}
