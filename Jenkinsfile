#! groovy
node {

  stage('checkout') {
    git url: 'https://github.com/venkatalolla/Jenkins_Docker_Gradle.git'
  }

  stage('Build'){
    //def mvnHome = tool 'M3'
    //tool name: 'M3', type: 'maven'
    tool name: 'gradle', type: 'gradle'
    gradle('check')
        gradle {
            tasks('clean')
            tasks('check')
        }
    //sh "gradle clean install"
  }

  stage('DockerBuild'){
    //withDockerRegistry([credentialsId: 'dockerhub', url: 'https://hub.docker.com']){
      def customImage = docker.build("suryalolla/jenkins_docker:latest")
      customImage.push()
    //}

  }
}
