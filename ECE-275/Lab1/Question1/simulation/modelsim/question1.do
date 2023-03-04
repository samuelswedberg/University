view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 25ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab1/a 
wave create -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab1/b 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab1/c 
wave create -driver freeze -pattern clock -initialvalue U -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab1/d 
WaveCollapseAll -1
wave clipboard restore
