#!/bin/sh
# Gradle start up script for POSIX-style shells
GRADLE_OPTS="${GRADLE_OPTS:-}"
JAVA_OPTS="${JAVA_OPTS:-}"

# Find the basedir
PRG="$0"
while [ -h "$PRG" ]; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then PRG="$link"; else PRG=`dirname "$PRG"`/"$link"; fi
done
PRGDIR=`dirname "$PRG"`

# Run gradle wrapper
exec "$PRGDIR/gradle/wrapper/gradle-wrapper.jar" "$@" 2>/dev/null || \
  exec java -jar "$PRGDIR/gradle/wrapper/gradle-wrapper.jar" "$@" 2>/dev/null || \
  exec java $JAVA_OPTS -classpath "$PRGDIR/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
