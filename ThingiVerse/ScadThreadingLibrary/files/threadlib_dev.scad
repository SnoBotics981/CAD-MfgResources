/*
* Written by Johnny, published on Thingiverse
* for suggestions please contact me via jcernato@gmail.com
* Version 29.01.2017
*/

module s_thread(diameter, slope, height) {
    if($fn) {mypolygon(diameter, slope, $fn, height);}
    else {mypolygon(diameter, slope, 16, height); }
}

module mypolygon(diameter, slope, polygons, height) {
    n = polygons;
    d = diameter;
    k = slope;
    centerhole = 1;
/* Shape:
    g___d
    |    \
    |      \ c
    |       |
    |      / b
    |   a /
    |   |
    ----
    f   e
    */
    m = round(height/slope);
    
function cosinus(n,i) = (cos((360/n)*i));
function sinus(n,i) = (sin((360/n)*i));
function height(k,n,i,offset) = (k/n*i+offset*k)>height ? height : (k/n*i+offset*k)<0 ? 0 : (k/n*i+offset*k);
//function height(k,n,i,offset) = (k/n*i+offset*k);
    
points = [
/* A */  for(i=[0:n*m]) [(d-k)/2*cosinus(n,i),(d-k)/2*sinus(n,i),height(k,n,i,-0.4)],
/* B */  for(i=[0:n*m]) [d/2*cosinus(n,i),d/2*sinus(n,i),height(k,n,i,0)],
/* C */  for(i=[0:n*m]) [d/2*cosinus(n,i),d/2*sinus(n,i),height(k,n,i,0.1)],
/* D */  for(i=[0:n*m]) [(d-k)/2*cosinus(n,i),(d-k)/2*sinus(n,i),height(k,n,i,0.5)],
/* E */  for(i=[0:n*m]) [(d-k)/2*cosinus(n,i),(d-k)/2*sinus(n,i),height(k,n,i,-0.5)],
/* F */  for(i=[0:n]) [centerhole/2*cosinus(n,i),centerhole/2*sinus(n,i),height(k,n,i,-0.5)],
/* G */  for(i=[n*(m-1):n*m]) [centerhole/2*cosinus(n,i),centerhole/2*sinus(n,i),height(k,n,i,+0.5)],
];

faces = [
/* === lower-faces === */
  for (i=[0:n*m-1]) [i, i+n*m+2, i+1],
  for (i=[0:n*m-1]) [i, i+n*m+1, i+n*m+2],
      
/* === vertical-outside-faces === */
  for (i=[0:n*m-1]) [i+n*m+1, i+n*m*2+2, i+n*m+2],
  for (i=[0:n*m-1]) [i+n*m+2, i+n*m*2+2, i+n*m*2+3],
      
/* === upper-faces === */
  for (i=[0:n*m-1]) [i+n*m*3+3, i+n*m*2+3, i+n*m*2+2],
  for (i=[0:n*m-1]) [i+n*m*3+3, i+n*m*3+4, i+n*m*2+3],
    
/* === vertical-inner-faces === */
  for (i=[0:n*m-1]) [i+n*m*4+4, i, i+1],
  for (i=[0:n*m-1]) [i+n*m*4+4, i+1, i+n*m*4+5],
    
/* === bottom-faces === */
  for(i=[1:n]) [i+n*m*4+3, i+n*m*4+4, i+n*m*5+4],
  for(i=[1:n]) [i+n*m*4+4,i+n*m*5+5, i+n*m*5+4],
      
/* === top-faces === */
  for(i=[0:n-1]) [i+n*m*4-n+3, i+n*m*5+n+6, i+n*m*4-n+4],
  for(i=[0:n-1]) [i+n*m*5+n+6, i+n*m*5+n+7, i+n*m*4-n+4],
      
/* === lower-sidewall (endstop) === */
  [n*m*3+3, n*m*2+2, n*m+1, 0, n*m*4+4, n*m*5+5,n*m*5+5+n,],
  
/* === upper-sidewall (endstop) === */
  [n*m, n*m*2+1, n*m*3+2, n*m*4+3, n+n*m*5+6+n, n+n*m*5+6, n*m*4-n+3],

/* === inner wall === */
  for(i=[1:n-2]) [i+n*m*5+n+6, i+n*m*5+5,i+n*m*5+6, i+n*m*5+n+7], // inner wall
  [n*m*5+n+6, (n-1)+n*m*5+6, n*m*5+5, n*m*5+6, n*m*5+n+7], //down_extra
  [n*m*5+2*n+5, n*m*5+n+4,n*m*5+n+5, n*m*5+n+6, n*m*5+2*n+6], //up_extra
]; 


polyhedron(points, faces, convexity=2);
  
}
 
$fn=120;
s_thread(14,1.3,12);