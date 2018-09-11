!/bin/bash
==========

name=Rahul
==========

for i in 1 2 3 4 5
==================

do
==

echo \$name
===========

done
====

while \[ "\$name" != "bye" \]
=============================

do
==

echo Enter you text
===================

read name
=========

echo "You have entered: \$name"
===============================

done
====

while read f
============

do
==

case \$f in a) echo a ;;
========================

b) echo b ;;
============

f) echo d ;;
============

esac
====

done &lt; x.txt
===============

name=rahul
==========

if \[ \$name = "rahul" \]
=========================

then
====

echo bye
========

fi
==

NO\_LINES=`wc -l x.txt`
=======================

char=`wc -m x.txt`
==================

word=`wc -w x.txt`
==================

echo \$word
===========

echo \$char
===========

echo \$NO\_LINES
================

name="grep -E \[a,e,i,o,u\] x.txt"
==================================

echo \$(eval \$name)
====================

while read line do echo -e for word in \$line do echo -e done done &lt;
x.txt
