#!/bin/bash
#name: leo
#create k8s-nginx
echo "deploying..... SpaceName:${SpaceName},ContainerKey:${ContainerKey},ContainerValue:${ContainerValue},ImageName:${ImageName},Image:${Image},Name:${Name},ContainerPort:${ContainerPort},ContainerPortName:${ContainerPortName},PodPort:${PodPort}"
rm -f deploy.yml
cp -a ${WORKSPACE}/yaml/deploy.yml .
echo "copy success"
sed -i "s,{{SpaceName}},${SpaceName},g" deploy.yaml
sed -i "s,{{ContainerKey}},${ContainerKey},g" deploy.yaml
sed -i "s,{{ContainerValue}},${ContainerValue},g" deploy.yaml
sed -i "s,{{ImageName}},${ImageName},g" deploy.yaml
sed -i "s,{{Image}},${Image},g" deploy.yaml
sed -i "s,{{ContainerPort}},${ContainerPortName},g" deploy.yaml
sed -i "s,{{ContainerPortName}},${ContainerPortName},g" deploy.yaml
sed -i "s,{{PodPort}},${PodPort},g" deploy.yaml
sed -i "s,{{Name}},${Name},g" deploy.yaml
echo "read success"
kubectl apply -f deploy.yaml
echo "apply ok"
