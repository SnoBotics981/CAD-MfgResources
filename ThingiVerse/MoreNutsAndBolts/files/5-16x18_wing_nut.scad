echo ("version ",version());
include <Nut_Job.scad>;

$fn=32;
type = "nut"; //[nut,bolt,rod,washer]


/* [Nut Options] */

//Type: Normal or WingNut
nut_type = "wingnut";//[normal,wingnut]
//Distance between flats for the hex nut
nut_diameter = 12.5;	
//Height of the nut
nut_height= 6.3;	
//Outer diameter of the bolt thread to match (usually set about 1mm larger than bolt diameter to allow easy fit - adjust to personal preferences) 
nut_thread_outer_diameter = 9;		
//Thread step or Pitch  ref. ISO262: M3=0.5,M4=0.7,M5=0.8,M6=1,M8=1.25,M10=1.5)
nut_thread_step = 1.41;  // mm pitch of 18 threads per inch
//Step shape degrees (ref. ISO262: 30 degrees)
nut_step_shape_degrees 	= 30;	
//Resolution (lower values for higher resolution, but may slow rendering)
nut_resolution = 0.5;
//Wing radius ratio.  The proportional radius of the wing on the wing nut compared to the nut height value (default = 1)
wing_ratio = .7;

//thickness of the wing
wing_thickness=5;



