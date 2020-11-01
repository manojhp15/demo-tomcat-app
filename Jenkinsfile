pipeline{
    agent any
    environment{
        DOCKER_HUB = credentials('docker-pwd')
    }

        stages{
            stage("Downloading from Git"){
                steps{
                    git 'https://github.com/manojhp15/demo-tomcat-app.git'
                }
            }
            stage("Building the war file"){
                steps{
                    sh 'mvn clean package'

                }

            }
            stage("Building the docker image"){
                    steps{
                        sh 'docker build -t manojnike15/tomcat-app:$BUILD_NUMBER .'

                    }
            }
            stage("Pushing the docker image"){
                steps{
                    sh 'docker login -u manojnike15 -p ${DOCKER_HUB}'
                    sh 'docker push manojnike15/tomcat-app:$BUILD_NUMBER'
                }


            }


        }

}
