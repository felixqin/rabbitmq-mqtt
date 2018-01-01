
THISDIR=`dirname $0`
OUTDIR=$1
DOCKERFILE=docker-joyteam-mqtt.tar

${THISDIR}/build-docker.sh

# copy to out dir and add version info to pack name
mkdir -p ${OUTDIR}/dist
cp ${THISDIR}/../dist/joyteam-mqtt/joyteam-mqtt.tar ${OUTDIR}/dist/${DOCKERFILE}

