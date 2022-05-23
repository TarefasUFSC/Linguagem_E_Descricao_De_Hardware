onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ex2/w_A
add wave -noupdate /tb_ex2/w_B
add wave -noupdate /tb_ex2/w_C
add wave -noupdate -divider Saidas
add wave -noupdate /tb_ex2/w_S
add wave -noupdate /tb_ex2/w_Crr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {144075 ps} 0}
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
WaveRestoreZoom {0 ps} {1050 ns}
