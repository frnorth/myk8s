#!/bin/bash
case $1 in
start)
	systemctl start etcd
	systemctl start docker
	systemctl start kube-apiserver
	systemctl start kube-controller-manager
	systemctl start kube-scheduler
	systemctl start kubelet
	systemctl start kube-proxy;;
stop)
	systemctl stop kube-proxy
	systemctl stop kubelet
	systemctl stop kube-scheduler
	systemctl stop kube-controller-manager
	systemctl stop kube-apiserver
	systemctl stop docker
	systemctl stop etcd;;
status)
	systemctl status etcd
	systemctl status docker
	systemctl status kube-apiserver
	systemctl status kube-controller-manager
	systemctl status kube-scheduler
	systemctl status kubelet
	systemctl status kube-proxy;;
disable)
	systemctl disable etcd
	systemctl disable docker
	systemctl disable kube-apiserver
	systemctl disable kube-controller-manager
	systemctl disable kube-scheduler
	systemctl disable kubelet
	systemctl disable kube-proxy;;
*)
	echo "start stop status disable"
esac

