
########### Reports & Netlist & GDS Generation ############

set top_module MIMO

# Generate Post-PNR Gate Level Netlist
saveNetlist export/${top_module}.v 

# Generate Post-PNR Gate Level Netlist with PG Pins
saveNetlist export/${top_module}_pg.v -includePowerGround

# SPF File standard for defining netlist parasitics.
rcOut -spf export/${top_module}.spf

# Generate SDF File
delayCal -sdf export/${top_module}.sdf -version 3.0

#report power

saveDesign MY_DESIGN.enc

#defOut -floorplan -netlist -routing MY_DESIGN_BACKUP.def
report_power -outfile report/power.rpt

# Generate GDS File
streamOut export/${top_module}.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 7 -units 2000 -mode ALL


