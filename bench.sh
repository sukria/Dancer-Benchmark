#!/bin/sh

set -e
#set -x

curl="/usr/bin/curl"
ab="/usr/sbin/ab"

if [ ! -x "$ab" ]; then
	echo "$ab is needed"
	exit 1
fi

testapp="./TestApp"
app=$1
dancer=$2

perllib=""
if [ -n "$dancer" ]; then
	perllib="-I$dancer/lib"
fi

case "$app" in
	"dancer.hello")
		cd $testapp && perl $perllib hello.pl &
		sleep 2
		$ab -n 1000 http://localhost:3000/ | grep 'Requests'
		pid=$(ps fax | grep perl | grep hello.pl | awk '{print $1}')
		kill $pid
	;;
	"psgi.hello")
		cd $testapp && plackup -a hello.psgi >/dev/null 2>&1 &
		sleep 2
		$ab -n 1000 http://0:5000/ | grep 'Requests'
		plackup_pid=$(ps fax | grep plackup | grep hello.psgi | awk '{print $1}')
		kill $plackup_pid
	;;
esac

