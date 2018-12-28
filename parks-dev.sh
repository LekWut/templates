GUID=$1
echo "Setting up Parks Dev in project $GUID-parks-dev"
oc new-project ${GUID}-parks-dev
oc policy add-role-to-user edit system:serviceaccount:${GUID}-jenkins:jenkins -n ${GUID}-parks-dev
oc new-app -f parks-dev.yaml
