#!/bin/sh

#  fix-hierarchy.sh
#  kRakenIRC
#
#  Created by Arcterus on 4/5/13.
#  Copyright (c) 2013 kRaken Research. All rights reserved.

PROJECT="kRakenIRC"
PROJECTTESTS=$PROJECT"Tests"
SRC="src"
RESRC="resource"
TEST="test"
MISC="misc"

function make_src() {
   mkdir -p $2/$SRC
   mv $1/*.{h,c,m} $2/$SRC
}

function make_resource() {
   mkdir -p $2/$RESRC
   mv $1/*.{png,lproj,pch,strings,plist,storyboard} $2/$RESRC
}

function make_test() {
   mkdir -p $2/$TEST
   make_resource $1 $2/$TEST
   make_src $1 $2/$TEST
   make_misc $1 $2/$TEST
}

function make_misc() {
   mkdir -p $2/$MISC
   mv $1/* $2/$MISC
}

make_src $PROJECT .
make_resource $PROJECT .
make_test $PROJECTTESTS .
make_misc $PROJECT .
make_misc $PROJECTTESTS $TEST

rm -r $PROJECT
rm -r $PROJECTTESTS
