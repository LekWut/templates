GUID=$1
DELETE_PROJECT=$2
echo "sonarqube start ${GUID}"
oc new-project ${GUID}-sonarqube
oc new-app -f sonarqube.yaml --param POSTGRES_PASSWORD=c29uYXI= --param POSTGRES_USERNAME=c29uYXI= --param POSTGRES_DATABASE_NAME=c29uYXI= --param POSTGRES_PERSISTENT_VOLUME_CLAIM_SIZE=4Gi --param SONARQUBE_JDBC_PASSWORD=sonar --param SONARQUBE_JDBC_USERNAME=sonar --param SONARQUBE_JDBC_URL="jdbc:postgresql://postgresql/sonar" --param SONARQUBE_PERSISTENT_VOLUME_SIZE=4Gi
echo "sonarqube complete"
