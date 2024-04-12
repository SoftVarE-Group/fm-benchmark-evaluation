#!/bin/bash
cd solvers/sharpsat/sharpsat-td 
timeout --signal=SIGKILL 60 ./sharpSAT -decot 1 -decow 100 -tmpdir . -cs 3500 $1