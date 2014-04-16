#!/usr/bin/env bash

CMD='vagrant box add demo-sl65 ~/vagrant.sl65/erikj-sl65.20140415.box && vagrant box list'

echo $CMD

$CMD
