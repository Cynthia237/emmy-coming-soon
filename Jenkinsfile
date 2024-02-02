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
                sh 'docker login -u Cynthua -p #C670219621# $password'
                sh 'docker build -t emmy-coming-soon:21 .'
                sh 'docker tag emmyride:21 Cynthua/emmy-coming-soon:21'
                sh 'docker push Cynthua/emmy-coming-soon:21'
            }
      }   
  }
             
}
