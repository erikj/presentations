#!/usr/bin/env bash

CMD='vagrant destroy'

echo $CMD

$CMD

CMD='vagrant box remove demo-sl65'

echo $CMD

$CMD
