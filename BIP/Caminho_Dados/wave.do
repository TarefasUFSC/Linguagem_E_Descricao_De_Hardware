onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_caminho_dados/w_address_ram
add wave -noupdate /tb_caminho_dados/w_din_ram
add wave -noupdate /tb_caminho_dados/w_opcode
add wave -noupdate /tb_caminho_dados/w_rst
add wave -noupdate /tb_caminho_dados/w_sel_op1
add wave -noupdate /tb_caminho_dados/w_sel_op2
add wave -noupdate /tb_caminho_dados/w_sel_ula
add wave -noupdate /tb_caminho_dados/w_wr_acc
add wave -noupdate /tb_caminho_dados/w_clk
add wave -noupdate /tb_caminho_dados/w_dout_rom
add wave -noupdate /tb_caminho_dados/w_dout_ram
add wave -noupdate /tb_caminho_dados/w_switches
add wave -noupdate /tb_caminho_dados/UUT/w_out_ula
add wave -noupdate /tb_caminho_dados/UUT/w_in_ula0
add wave -noupdate /tb_caminho_dados/UUT/w_in_ula1
add wave -noupdate /tb_caminho_dados/UUT/w_in_acc
add wave -noupdate /tb_caminho_dados/UUT/w_out_acc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {46587 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 227
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
WaveRestoreZoom {17942 ps} {69212 ps}
