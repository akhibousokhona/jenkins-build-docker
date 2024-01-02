node{
  def app 
    stage ('Clone'){
      checkout scm   
}
stage('Build image') {
    app = docker.build("akhibou/nginx") 
}
stage('Run image') {
    docker.image('akhibou/gninx').withRun('-p 80:80') { c ->
   sh 'docker ps'
   sh 'curl localhost'
}
}
}
