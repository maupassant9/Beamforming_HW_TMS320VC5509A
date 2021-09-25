onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Parrallel2SerialNew/clkin
add wave -noupdate /Parrallel2SerialNew/enable
add wave -noupdate /Parrallel2SerialNew/rd_bar
add wave -noupdate /Parrallel2SerialNew/sclk
add wave -noupdate /Parrallel2SerialNew/enspi
add wave -noupdate /Parrallel2SerialNew/mosi
add wave -noupdate -radix hexadecimal -childformat {{{/Parrallel2SerialNew/cnter[9]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[8]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[7]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[6]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[5]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[4]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[3]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[2]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[1]} -radix hexadecimal} {{/Parrallel2SerialNew/cnter[0]} -radix hexadecimal}} -subitemconfig {{/Parrallel2SerialNew/cnter[9]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[8]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[7]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[6]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[5]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[4]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[3]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[2]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[1]} {-height 15 -radix hexadecimal} {/Parrallel2SerialNew/cnter[0]} {-height 15 -radix hexadecimal}} /Parrallel2SerialNew/cnter
add wave -noupdate -radix hexadecimal /Parrallel2SerialNew/dbreg
add wave -noupdate -radix hexadecimal /Parrallel2SerialNew/db
add wave -noupdate /Parrallel2SerialNew/dbsample
add wave -noupdate /Parrallel2SerialNew/spi_cs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14054 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 278
configure wave -valuecolwidth 39
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
WaveRestoreZoom {13693 ps} {14161 ps}
