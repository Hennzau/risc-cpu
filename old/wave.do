onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cpu/MAX10_CLK1_50
add wave -noupdate /cpu/fetch_inst/address_out
add wave -noupdate /cpu/rom_inst/address
add wave -noupdate /cpu/pipeline_inst/stage
add wave -noupdate /cpu/decoder_inst/en
add wave -noupdate /cpu/decoder_inst/clk
add wave -noupdate /cpu/decoder_inst/instruction
add wave -noupdate /cpu/decoder_inst/instruction(0)
add wave -noupdate /cpu/decoder_inst/instruction(0)
add wave -noupdate /cpu/decoder_inst/reg_value_a
add wave -noupdate /cpu/decoder_inst/reg_value_b
add wave -noupdate /cpu/decoder_inst/ram_value
add wave -noupdate /cpu/decoder_inst/status
add wave -noupdate /cpu/decoder_inst/alu_sel
add wave -noupdate /cpu/decoder_inst/alu_a
add wave -noupdate /cpu/decoder_inst/alu_b
add wave -noupdate /cpu/decoder_inst/fetch_jump
add wave -noupdate /cpu/decoder_inst/fetch_address
add wave -noupdate /cpu/decoder_inst/reg_rw
add wave -noupdate /cpu/reg_inst/rw_dec
add wave -noupdate /cpu/decoder_inst/reg_address
add wave -noupdate /cpu/decoder_inst/reg_address_a
add wave -noupdate /cpu/decoder_inst/reg_address_b
add wave -noupdate /cpu/decoder_inst/ram_rw
add wave -noupdate /cpu/decoder_inst/ram_address
add wave -noupdate /cpu/decoder_inst/ram_data_in
add wave -noupdate /cpu/decoder_inst/decoder_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {481 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 250
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {880 ns}
