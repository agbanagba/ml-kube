[![CircleCI](https://circleci.com/gh/agbanagba/ml-kube.svg?style=svg)](https://circleci.com/gh/agbanagba/ml-kube)

ml-kube is a project to operationalise a machine learning prediction algorithm using docker and kubernetes.

The application consists of a python app.py file brings up a flask web application and returns predictions on a POST request API call, shell scripts to build a docker image, deploy the docker image to docker hub and run a pod in kubernetes for the application.

./run_docker.sh - builds a docker image from the application file and runs the application
<br />
./upload_docker.sh - uploads the built docker image to docker hub
<br />
./run_kubernetes.sh - pulls the docker image from docker hun and runs a kubernetes deployment
<br />
./make_prediction.sh - call the web application on the app port 8080 to make a prediction
