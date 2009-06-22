#!/bin/sh
GROUP_ID=${1:?"GroupID must be specified (example: com.mycompany)"}
ARTIFACT_ID=${2:?"ArtifactID must be specified (example: twitter).  This is the project's name."}

mvn archetype:generate -U                                   \
  -DarchetypeGroupId=net.liftweb                            \
  -DarchetypeArtifactId=lift-archetype-basic                \
  -DarchetypeVersion=1.0                                    \
  -DremoteRepositories=http://scala-tools.org/repo-releases \
  -DgroupId=$GROUP_ID                                       \
  -DartifactId=$ARTIFACT_ID                                 \
  -Dversion=1.0-SNAPSHOT
