FROM eu.gcr.io/buoyant-idea-226013/arm32v7/busybox

CMD while : ; do echo "howdy! $(uname -a)"; sleep ${INTERVAL=10}; done
