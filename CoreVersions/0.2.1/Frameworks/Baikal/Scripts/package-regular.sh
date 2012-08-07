#!/usr/bin/env sh
echo "########################################################################"
echo "#"
echo "#     Baïkal Packaging script"
echo "#"
echo "#     Packaging project for regular distribution"
echo "#"
echo "#"

BRANCH="flakemerge"
SRCDIR="../../../../"
TEMPDIR="/tmp/baikal-regular-`date +%Y-%m-%d-%H-%M-%S`"

# Export Project
mkdir $TEMPDIR

BASEDIR="`dirname $0`"
PATH_this="`cd $BASEDIR && cd $SRCDIR && pwd`/"
git archive $BRANCH | tar -x -C $TEMPDIR

# Jump to tempdir
cd $TEMPDIR && \

# Cleaning git stuff
rm .gitignore

# Cleaning Scripts
rm -Rf Core/Scripts
rm -Rf Core/Frameworks/Baikal/Scripts

# Displaying result
echo "#     "$TEMPDIR