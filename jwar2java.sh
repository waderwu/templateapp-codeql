#!/bin/bash
unzip $1 -d /tmp/tmpwar
java -cp tools/java-decompiler.jar org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler -hdc=0 -dgs=1 -rsy=1 -rbr=1 -lit=1 -nls=1 -mpm=60 /tmp/tmpwar/WEB-INF/classes /tmp/tmpwar/WEB-INF/classes
find /tmp/tmpwar/WEB-INF/classes -name "*.class" | xargs rm -f 
mv /tmp/tmpwar/WEB-INF/classes/* src/main/java
mv /tmp/tmpwar/WEB-INF/lib/* lib/*
rm -rf /tmp/tmpwar
