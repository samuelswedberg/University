view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/pipeline/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 10000ps sim:/pipeline/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 100ps Edit:/pipeline/reset 
WaveCollapseAll -1
wave clipboard restore
