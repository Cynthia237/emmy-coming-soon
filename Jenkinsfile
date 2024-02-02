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
                sh 'docker build -t emmy-coming-soon:20 .'
                sh 'docker tag emmyride:20 Cynthua/emmy-coming-soon:20'
                sh 'docker push Cynthua/emmy-coming-soon:20'
            }
      }

  }
             
}
