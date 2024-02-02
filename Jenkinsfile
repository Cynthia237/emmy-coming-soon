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
                sh 'docker login -u Cynthua -p C670219621#'
                sh 'docker build -t emmy-coming-soon:6 .'
                sh 'docker tag emmyride:6 Cynthua/emmy-coming-soon:6'
                sh 'docker push Cynthua/emmy-coming-soon:6'
            }
      }   
  }
             
}
