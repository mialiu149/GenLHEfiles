#!/bin/sh
GRIDPACKDIR=/hadoop/cms/store/user/${USER}/mcProduction/GRIDPACKS
MODEL='SMS-StopStop_mStop-'
OUTMODEL='SMS-StopStop'
PART='_mStop-'

for (( MASS=1450; MASS<=1500; MASS+=50 )); do
    echo "Copying ${GRIDPACKDIR}/${MODEL}${MASS}/${MODEL}${MASS}_tarball.tar.xz to the following directory on EOS:"
    echo "/store/group/phys_generator/cvmfs/gridpacks/slc6_amd64_gcc481/13TeV/madgraph/V5_2.3.3/sus_sms/${OUTMODEL}/${OUTMODEL}${PART}${MASS}_tarball.tar.xz"
    xrdcp ${GRIDPACKDIR}/${MODEL}${MASS}/${MODEL}${MASS}_tarball.tar.xz root://eoscms.cern.ch///eos/cms/store/group/phys_generator/cvmfs/gridpacks/slc6_amd64_gcc481/13TeV/madgraph/V5_2.3.3/sus_sms/${OUTMODEL}/${OUTMODEL}${PART}${MASS}_tarball.tar.xz
done
