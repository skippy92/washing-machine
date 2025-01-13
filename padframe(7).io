(globals
	version=3
	io_order = clockwise
	space=20
	total_edge=7
)
(iopad
	(topleft
	(inst name="cornercell1" cell=pfrelr offset=0 orientation=R180 place_status=fixed)
	)
	
	(left
	(inst name="Idoor_close" cell=pc3d01 place_status=fixed)
	(inst name="Istart" cell=pc3d01 place_status=fixed)
        (inst name="VDD" cell=pvdi place_status=fixed)
	(inst name="Ifilled" cell=pc3d01 place_status=fixed)
        (inst name="VDDO" cell=pvda place_status=fixed)
	)
	
	(topright
	(inst name="cornercell2" cell=pfrelr offset=0 orientation=R90 place_status=fixed)
	)
	
	(top
	(inst name="Odrain_value_on" cell=pc3d01 place_status=fixed)
	(inst name="Odone" cell=pc3d01 place_status=fixed)
	(inst name="Iclk" cell=pc3d01 place_status=fixed)
	(inst name="Osoap_wash" cell=pc3d01 place_status=fixed)
        (inst name="Owater_wash" cell=pc3d01 place_status=fixed)	
	
	)
	
	(bottomright
	(inst name="cornercell3" cell=pfrelr offset=0 orientation=R0 place_status=fixed)
	)
	
	(right
	(inst name="Odoor_lock" cell=pc3o01 place_status=fixed)
        (inst name="VSS" cell=pv0i place_status=fixed)
        (inst name="Omotor_on" cell=pc3o01 place_status=fixed)
        (inst name="Ofill_value_on" cell=pc3o01 place_status=fixed)
        (inst name="VSSO" cell=pv0a place_status=fixed)

	
	)
	
	(bottomleft
	(inst name="cornercell4" cell=pfrelr offset=0 orientation=R270 place_status=fixed)
	)
	
	(bottom
        (inst name="Ireset" cell=pc3o01 place_status=fixed)
	(inst name="Idetergent_added" cell=pc3o01 place_status=fixed)
        (inst name="Icycle_timeout" cell=pc3o01 place_status=fixed)
	(inst name="Idrained" cell=pc3o01 place_status=fixed)
        (inst name="Ispin_timeout" cell=pc3d01 place_status=fixed)
	
	)
)	
			
