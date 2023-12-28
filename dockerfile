FROM jenkins/jenkins:lts
USER root

# Instalar plugins usando jenkins-plugin-cli
RUN jenkins-plugin-cli --plugins configuration-as-code

# Copiar el archivo de configuración de JCasC
COPY jenkins.yaml /var/jenkins_home/jenkins.yaml

# Establecer la variable de entorno para que Jenkins detecte el archivo de configuración
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins.yaml

USER jenkins
