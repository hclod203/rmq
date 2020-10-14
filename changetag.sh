#!/bin/sh
sed "s/tag/$1/g/" rmq.yml > rmq-app.yml
