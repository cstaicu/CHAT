#!/usr/bin/env sh
# 07-feb-2008/FK Added USER env variable to HTTP value.
# -- ----------------------------------------------------------------
# -- This file is for Unix systems.
# -- This file starts the ChatClient from its remote installation point.
# -- You may have to modify the line   set HTTP=...  if the codebase
# -- is not in *your* public_html (web access) directory.
# -- ----------------------------------------------------------------

HTTP=http://localhost:8080/client

ROOT=$(dirname $0)/../..

LIB=${ROOT}/lib

PCY=${LIB}/policy.all

JRN=${LIB}/JarRunner.jar

CBS=${HTTP}/ChatClient-dl.jar

JAR=${HTTP}/ChatClient.jar

CLASSPATH=

java -Djava.security.policy=${PCY} -Djava.rmi.server.codebase="${CBS}" -jar ${JRN} ${JAR} $*
