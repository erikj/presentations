#!/usr/bin/env bash

CMD='vagrant box add demo-sl65 ~/vagrant.sl65/erikj-sl65.20140415.box'

echo $CMD

$CMD

CMD='vagrant box list'

echo $CMD

$CMD
