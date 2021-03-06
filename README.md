# Renesas RX GCC for Ubuntu Linux 64 bit #

---

## The main purpose of this project ##
  1. Release Renesas GCC compiler for 64 bit Ubuntu 14.04
  2. Use this compiler release for the Travis-ci build server.
  3. Via the Travis-ci build server, the [Coverity scan](https://scan.coverity.com/projects) and [SonarQube scan](https://sonarqube.com) can then be run.

---
	
## Why this project	##
At this moment there is no prebuild release than can be use for the [travis-ci.org](https://travis-ci.org/) build server.

---

## Source code ##
The GCC source code is from [gcc-renesas.com](https://gcc-renesas.com/rx/rx-latest-source-code/)

---

## Build instruction for the GCC compiler ##
  * How to build the GCC from the source file. ([Build instruction](https://gcc-renesas.com/wiki/index.php?title=How_to_build_the_RX_Toolchain_under_Ubuntu_14.04))
  * Use the script file from this project ([link](https://github.com/GerryFerdinandus/Renesas-RX-GCC/blob/master/scripts/gcc_build.sh))	

---

## Projects using the compiler release file [(link)](https://github.com/GerryFerdinandus/Renesas-RX-GCC/releases) ##
|Project|Linux Build Status|Coverity Scan Status|SonarQube Status|
|:--|:--:|:--:|:--:|
|[Renesas-RX-Board-Support-Package-for-YRDKRX63N](https://github.com/GerryFerdinandus/Renesas-RX-Board-Support-Package-for-YRDKRX63N)|[![Build Status](https://travis-ci.org/GerryFerdinandus/Renesas-RX-Board-Support-Package-for-YRDKRX63N.svg?branch=master)](https://travis-ci.org/GerryFerdinandus/Renesas-RX-Board-Support-Package-for-YRDKRX63N)|[![Coverity Scan Build Status](https://scan.coverity.com/projects/10827/badge.svg)](https://scan.coverity.com/projects/gerryferdinandus-renesas-rx-board-support-package-for-yrdkrx63n)|[![Quality Gate](https://sonarcloud.io/api/project_badges/measure?project=GerryFerdinandus%3ARenesas-RX-Board-Support-Package-for-YRDKRX63N&metric=alert_status)](https://sonarqube.com/dashboard/index/GerryFerdinandus%3ARenesas-RX-Board-Support-Package-for-YRDKRX63N)|
|[Renesas-RX-FreeRTOS](https://github.com/GerryFerdinandus/Renesas-RX-FreeRTOS)|[![Build Status](https://travis-ci.org/GerryFerdinandus/Renesas-RX-FreeRTOS.svg?branch=master)](https://travis-ci.org/GerryFerdinandus/Renesas-RX-FreeRTOS)|[![Coverity Scan Build Status](https://scan.coverity.com/projects/10863/badge.svg)](https://scan.coverity.com/projects/gerryferdinandus-renesas-rx-freertos)|[![Quality Gate](https://sonarcloud.io/api/project_badges/measure?project=GerryFerdinandus%3ARenesas-RX-FreeRTOS&metric=alert_status)](https://sonarqube.com/dashboard/index/GerryFerdinandus%3ARenesas-RX-FreeRTOS)|
|[Renesas-RX-FreeRTOS-demo-project-for-YRDKRX63N](https://github.com/GerryFerdinandus/Renesas-RX-FreeRTOS-demo-project-for-YRDKRX63N)|[![Build Status](https://travis-ci.org/GerryFerdinandus/Renesas-RX-FreeRTOS-demo-project-for-YRDKRX63N.svg?branch=master)](https://travis-ci.org/GerryFerdinandus/Renesas-RX-FreeRTOS-demo-project-for-YRDKRX63N)|[![Coverity Scan Build Status](https://scan.coverity.com/projects/10835/badge.svg)](https://scan.coverity.com/projects/gerryferdinandus-renesas-rx-freertos-demo-project-for-yrdkrx63n)|[![Quality Gate](https://sonarcloud.io/api/project_badges/measure?project=GerryFerdinandus%3ARenesas-RX-FreeRTOS-demo-project-for-YRDKRX63N&metric=alert_status)](https://sonarqube.com/dashboard/index/GerryFerdinandus%3ARenesas-RX-FreeRTOS-demo-project-for-YRDKRX63N)|
