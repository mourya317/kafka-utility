#!/bin/bash

TOPICS=$(sh kafka-topics.sh --zookeeper localhost:2181 --list)

for T in $TOPICS
do
  if [ "$T" != "__consumer_offsets" ]; then
    sh kafka-topics.sh --zookeeper localhost:2181 --delete --topic $T
  fi
done
