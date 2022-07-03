onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_ram/w_add
add wave -noupdate /tb_ram/w_clk
add wave -noupdate /tb_ram/w_clr
add wave -noupdate /tb_ram/w_en
add wave -noupdate -radix hexadecimal /tb_ram/w_i_data
add wave -noupdate -radix hexadecimal /tb_ram/w_o_data
add wave -noupdate /tb_ram/w_wr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {230048 ps} 0}
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
WaveRestoreZoom {0 ps} {410160 ps}
