#!/usr/bin/env sh

#
# Copyright 2015 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $0 may be a symlink
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls -ld "$PRG"
    PRG=`readlink "$PRG"`
done
DIRNAME=`dirname "$PRG"`
APP_HOME=`cd "$DIRNAME" >/dev/null 2>&1 && pwd -P` || exit 1

# Add an option to this script to specify the JVM(s) to use when starting the application.
# Make sure to quote arguments that contain spaces.
# When using the Gradle wrapper, you can pass JVM arguments via the GRADLE_OPTS environment variable.

# Default JVM memory settings
GRADLE_OPTS="${GRADLE_OPTS:-"-Xmx64m -Xms64m"}"
export GRADLE_OPTS

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

exec java $GRADLE_OPTS -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
