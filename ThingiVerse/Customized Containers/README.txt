                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:612709
Customizable Container with Knurled Lid by wstein is licensed under the Creative Commons - Attribution - Share Alike license.
http://creativecommons.org/licenses/by-sa/3.0/

# Summary

Containers are so useful - I got a lot of them.  Here is my container with a knurled lid and cylindrical jar.  

Use the [Customizer](http://www.thingiverse.com/apps/customizer/run?thing_id=612709) to create a proper container for your needs, it is fully parameterized.  

The User [jonaslorander](http://www.thingiverse.com/jonaslorander) implemented a new option to divide the jar into [compartments](http://www.thingiverse.com/make:131389). Many thanks to him for providing the code and making it! I like it very much!  

 See also my new [Lofty Container](/thing:640246) and [EPCOT Spaceship Earth style Container](/thing:671884)!  

# Instructions

I printed containers in PLA without support.  

The smaller ones with 0.2mm layer and the 50mm one with 0.3 layer for faster printing. All fits perfect.  

Depend on your printer you may need to use brim.   

Due to OpenSCAD command line interface I have now generated and uploaded the container with 20, 25, 30, 40, 50, 60, 75mm diameter each in 5 sizes with all lid styles.  

I used this parameters:  
wallthickness=2.0  
backlash=0.5  
Except the one with 75mm diameter, where I used   
wallthickness=2.5  
backlash=0.625  

###Updates:  

**Version 1.8.1**
Fixed outside quality of the container and lid.

**Version 1.8**
New simple non knurled lid added

**Version 1.7** generate all lid styles at once  
code optimized for openscad 2015.03 (no more timeout)  

**Version 1.6** added compartment option - many thanks to user [jonaslorander](http://www.thingiverse.com/jonaslorander/about) for providing the code and testing it!  
part: "both" removed  
new Thickness tab  

**Version 1.5** fixed broken left knurled lid.  

**Version 1.4** new expert setting in Costumizer for solid container object. You can find the new files here [this thing](/thing:634383).  

**Version 1.3** use $fn=100 for all threads to make them a little bit smoother.  

**Version 1.2** lid optimized for diameter smaller 20mm. The lid of an container with a diameter less than 20mm has now always the same height of about 6mm. This concerns also the thread which may not fit to containers of older versions!  

**Version 1.1** there was an bug: the generated file container_bothxxxxx.stl was not printable!**