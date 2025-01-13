init_design       
floorPlan -site CoreSite -noSnapToGrid -d 945 945 20 20 20 20

saveDesign top_floorplan
             
addIoFiller -cell pfeed10000 -prefix FILLER -side n
addIoFiller -cell pfeed10000 -prefix FILLER -side e
addIoFiller -cell pfeed10000 -prefix FILLER -side w
addIoFiller -cell pfeed10000 -prefix FILLER -side s        
             
addIoFiller -cell pfeed01000 -prefix FILLER -side n
addIoFiller -cell pfeed01000 -prefix FILLER -side e
addIoFiller -cell pfeed01000 -prefix FILLER -side w
addIoFiller -cell pfeed01000 -prefix FILLER -side s           
             
addIoFiller -cell pfeed00010 -prefix FILLER -side n
addIoFiller -cell pfeed00010 -prefix FILLER -side e
addIoFiller -cell pfeed00010 -prefix FILLER -side w
addIoFiller -cell pfeed00010 -prefix FILLER -side s
saveDesign top_pad_filler
    
#powerplanning         
             
globalNetConnect VDD -type pgpin -pin VDD -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSS -override -verbose -netlistOverride
globalNetConnect VDDO -type pgpin -pin VDDO -override -verbose -netlistOverride
globalNetConnect VSSO -type pgpin -pin VSSO -override -verbose -netlistOverride            
             
addRing -skip_via_on_wire_shape Noshape -exclude_selected 1 -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer TOP_M -type core_rings -jog_distance 0.56 -threshold 0.56 -nets {VDD VSS} -follow core -stacked_via_bottom_layer M1 -layer {bottom M3 top M3 right TOP_M left TOP_M} -width 6 -spacing 2 -offset 2  


sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { M1 TOP_M } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1 TOP_M } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1 TOP_M }   
         
             
 addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit TOP_M -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit M3 -set_to_set_distance 40 -skip_via_on_pin Standardcell -stacked_via_top_layer TOP_M -padcore_ring_top_layer_limit TOP_M -spacing 0.46 -xleft_offset 10 -merge_stripes_value 0.56 -layer TOP_M -block_ring_bottom_layer_limit M3 -width 2 -nets {VDD VSS} -stacked_via_bottom_layer M1 
 
 saveDesign top_power_rings           
             
             
setPlaceMode -fp false
placeDesign -noPrePlaceOpt
saveDesign top_placement             
             
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
setCTSMode -engine ck
optDesign -postCTS          
             
             
setAnalysisMode -analysisType onChipVariation -cppr both
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute           
             
addFiller -cell feedth9 -prefix FILLER -doDRC
addFiller -cell feedth3 -prefix FILLER -doDRC
addFiller -cell feedth -prefix FILLER -doDRC
saveDesign top_post_route_and_filler       
             
            
             
             
streamOut Top_FINAL_washing.gds -mapFile /home/vlsi5/scl_pdk/stdlib/fs120/tech_data/lef/gds2_fe_4l.map -libName DesignLib -merge {/home/vlsi5/scl_pdk/stdlib/fs120/gds/tsl18fs120.gds
 /home/vlsi5/scl_pdk/iolib/cio150/gds/tsl18cio150_4lm.gds} -uniquifyCellNames -units 1000 -mode ALL
         
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
                                                                                                                                              
