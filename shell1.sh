#!/usr/bin/bash
echo "displaying a content to a file"
case "$1" in
  start)
     mkdir -p /ashok/ravi/dir1
     chown -R root:root /ashok/ravi/dir1
     chmod 700 /ashok/ravi/dir1
     ;;
     stop|restart|force-reload)
	;;
     *)
	echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" >&2
	exit 3
	;;
esac
