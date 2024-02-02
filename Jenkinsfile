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
                //
                sh 'docker login -u cynthua -p #C670219621# $password'
                sh 'docker build -t emmy-coming-soon:6 .'
                sh 'docker tag emmyride:6 cynthua/emmy-coming-soon:6'
                sh 'docker push cynthua/emmy-coming-soon:6'
            }
      }   
  }
             
}
