view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab4/clk 
wave create -driver freeze -pattern constant -value U -starttime 0ps -endtime 1000ps sim:/lab4/start 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/lab4/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ps -endtime 200ps Edit:/lab4/start 
WaveCollapseAll -1
wave clipboard restore
