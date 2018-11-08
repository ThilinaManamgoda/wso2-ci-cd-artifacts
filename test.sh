#!/bin/bash
CODE=`wget --server-response http://${TEST_URL}/services/EchoProxy 2>&1 | awk '/^  HTTP/{print $2}'`;
[ ${CODE} -eq "200" ] && exit 0 || exit 1
