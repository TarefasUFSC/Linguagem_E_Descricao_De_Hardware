onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ex1/i_A
add wave -noupdate /ex1/i_B
add wave -noupdate /ex1/i_C
add wave -noupdate /ex1/i_D
add wave -noupdate -divider Saidas
add wave -noupdate /ex1/o_Sa
add wave -noupdate /ex1/o_Sb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3223749 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {3001086 ps} {4733586 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/ex1/i_A 
wave create -driver freeze -pattern clock -initialvalue U -period 200ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/ex1/i_B 
wave create -driver freeze -pattern clock -initialvalue U -period 400ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/ex1/i_C 
wave create -driver freeze -pattern clock -initialvalue U -period 400ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/ex1/i_C 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/ex1/i_A 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/ex1/i_A 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/ex1/i_B 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/ex1/i_C 
wave create -driver freeze -pattern clock -initialvalue U -period 800ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/ex1/i_D 
WaveCollapseAll -1
wave clipboard restore
