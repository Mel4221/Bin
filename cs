#!/bin/bash

#this will script just takes one file that it's extentions ends on .cs and compile it into an executable program and is based on mono compiler csc

PROGRAM=$(find *.cs)
sudo csc $PROGRAM
