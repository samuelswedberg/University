view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/a 
wave create -driver freeze -pattern clock -initialvalue U -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/b 
wave create -driver freeze -pattern clock -initialvalue U -period 400ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/c 
wave create -driver freeze -pattern clock -initialvalue U -period 800ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/e 
wave create -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/a 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/b 
wave create -driver freeze -pattern clock -initialvalue U -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/c 
wave create -driver freeze -pattern clock -initialvalue U -period 400ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/e 
wave create -driver freeze -pattern clock -initialvalue U -period 800ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/f 
wave create -driver freeze -pattern clock -initialvalue U -period 1600ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/g 
wave create -driver freeze -pattern clock -initialvalue U -period 3200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5q1/h 
WaveCollapseAll -1
wave clipboard restore
