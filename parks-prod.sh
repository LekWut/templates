GUID=$1
echo "Create Project ${GUID}-parks-prod"
oc new-project ${GUID}-parks-prod
oc new-app -f parks-prod.yaml
oc policy add-role-to-group system:image-puller system:serviceaccounts:${GUID}-parks-prod -n ${GUID}-parks-dev
oc policy add-role-to-user edit system:serviceaccount:${GUID}-jenkins:jenkins -n ${GUID}-parks-prod
