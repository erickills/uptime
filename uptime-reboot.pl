uptime | \
perl -ne '/.*up +(?:(\d+) days?,? +)?(\d+):(\d+),.*/; $total=((($1*24+$2)*60+$3)*60);
$now=time(); $now-=$total; $now=localtime($now); print $now,"\n";'
