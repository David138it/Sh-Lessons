# Scripts

<h3>Task Scheduler</h3>
<p><strong>Task</strong>:<br />Create a backup user and configure cron for him to find files older than 5 days in the /data directory once a day and add these files to the /backup/archive.tar archive, then delete them from the source directory. Configure the cron of the ur user so that he creates a file in the /data directory every 10 minutes. <br />Also, create a cron for the root user so that he writes the contents of the /data directory and the contents of the /backup/archive archive every Friday at 23:30.tar to the /var/log/reports/current date file.</p>

<p><strong>Manual</strong>:<br />I run scripts in the Centos distribution</p>
<ol>
<li>To start the program, you need to enter the following commands in the terminal:
<br />$ vim Sh-Gnulinux-TaskScheduler1.sh<br />$ chmod +x Sh-Gnulinux-TaskScheduler1.sh<br />$ ./Sh-Gnulinux-TaskScheduler1.sh</p>
</li>
</ol>
<p><strong>Source</strong>:</p>
<ol>
<li><a href="https://basis.gnulinux.pro/ru/latest/" target="_blank">gnulinux</a></li>
</ol>