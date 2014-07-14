#
# Regular cron jobs for the mouse-speed package
#
0 4	* * *	root	[ -x /usr/bin/mouse-speed_maintenance ] && /usr/bin/mouse-speed_maintenance
