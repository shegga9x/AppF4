pipeline {
    agent any

    environment {
        VPS_HOST = '188.166.217.82'
        REMOTE_SCRIPT_PATH = '/root/f4-microserices-vps-configuration/AppF4/scripts/deploy_service.sh'
    }

    stages {
        stage('1. Detect Submodule Changes') {
            steps {
                script {
                    echo "Checking for new commits..."
                    checkout([
                        $class: 'GitSCM',
                        branches: [[name: 'origin/main']],
                        userRemoteConfigs: [[url: 'https://github.com/shegga9x/AppF4.git']]
                    ])
                    def changedFiles = getChangedFiles()
                    echo "Changed files: ${changedFiles.join(', ')}"
                    def changedServices = findChangedServices(changedFiles)
                    if (changedServices.isEmpty()) {
                        echo "No changes detected in 'backend' submodules. Skipping deployment."
                        currentBuild.result = 'NOT_BUILT'
                        return
                    }
                    echo "Detected changes in the following services: ${changedServices.join(', ')}"
                    env.CHANGED_SERVICES = changedServices.join(',')
                }
            }
        }

        stage('2. Deploy via sshpass') {
            when {
                expression { return env.CHANGED_SERVICES != null && !env.CHANGED_SERVICES.isEmpty() }
            }
            steps {
                withCredentials([string(credentialsId: 'vps-password-credentials', variable: 'ROOT_PASSWORD')]) {
                    script {
                        def services = env.CHANGED_SERVICES.split(',')
                        for (String service : services) {
                            echo "Deploying ${service}..."
                            sh """
                                sshpass -p "$ROOT_PASSWORD" ssh -o StrictHostKeyChecking=no root@${env.VPS_HOST} "bash ${env.REMOTE_SCRIPT_PATH} ${service}"
                            """
                        }
                    }
                }
            }
        }
    }

    post { always { echo 'Pipeline finished.' } }
}

def getChangedFiles() {
    def changedFiles = []
    def diff = sh(script: "git diff-tree --no-commit-id --name-only -r HEAD", returnStdout: true).trim()
    if (diff) {
        changedFiles.addAll(diff.split('\n'))
    }
    return changedFiles
}

def findChangedServices(List filePaths) {
    def services = new HashSet<String>()
    filePaths.each { path ->
        def matcher = (path =~ /^backend\/([^\/]+)\/?/)
        if (matcher.find()) {
            services.add(matcher.group(1))
        }
    }
    return services
}
