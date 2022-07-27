onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Sinais Externos} /tb_bip/w_clk
add wave -noupdate -expand -group {Sinais Externos} /tb_bip/w_rst
add wave -noupdate -expand -group {Sinais Externos} /tb_bip/w_switches
add wave -noupdate -expand -group CORE /tb_bip/UUT/w_add_ram
add wave -noupdate -expand -group CORE /tb_bip/UUT/w_add_rom
add wave -noupdate -expand -group CORE /tb_bip/UUT/w_din_ram
add wave -noupdate -expand -group CORE /tb_bip/UUT/w_dout_ram
add wave -noupdate -expand -group CORE /tb_bip/UUT/w_dout_rom
add wave -noupdate -expand -group CORE /tb_bip/UUT/w_out_acc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 294
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
WaveRestoreZoom {0 ps} {64 ps}
