node{
  def app 
    stage ('Clone'){
      checkout scm   
}
stage('Build image') {
    app = docker.build("akhibou/nginx") 
}
stage('Run image') {
    docker.image('akhibou/nginx').withRun('-p 88:88') { c ->
   sh 'docker ps'
   sh 'curl localhost'
}
}
}
