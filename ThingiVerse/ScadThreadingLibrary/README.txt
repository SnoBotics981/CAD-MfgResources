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


http://www.thingiverse.com/thing:2030942
scad threading library by jcernato is licensed under the Creative Commons - Attribution - Share Alike license.
http://creativecommons.org/licenses/by-sa/3.0/

# Summary

This is yet another open-scad library to create threads...
No, wait! This is intended to be extremely fast and easy to use!
Few lines of code create a spirally set of points and the corresponding faces, creating a single polyhedron.
Standalone it renders extremely fast, combined with other objects/functions (difference etc...) it gets slowed down due to the large amount of facets representing the thread and the corresponding intersections.

!! Openscad version 2016.xx or newer required!!! (I use the "nightly-builds" i.e. "Development Snapshots" - see: http://www.openscad.org/downloads.html)

The file itself includes an example call of the module, it is simply: s_thread(diameter, threadpitch, height)
It follows the general setting of "$fn", it can be set globally or individually.

Give it a try and have fun!


*** Update 29.01.2017 ***
For some reason (I have not figured out yet) I need the hole in the middle for the polyhedron to render without errors.
While the hole used to be proportional to diameter and pitch this resulted in errors if the pitch was too high in respect to the thread diameter.
Now the diameter of the hole in the center is fixed to 1mm yet can be changed with the "centerhole" variable in line 16. (setting zero will again give you errors).

*** Update 30.01.2017 ***
I have managed to close the nasty hole in the center of the object. The "new" version is called "threadlib_solid.scad". Please note that the library is still under development.
Note: The height of the thread cannot be set seamlessly, it rounds the given value to a multiple of the threadpitch a.k.a whole number of turns.