#declare Fuerza = 1.00;
#declare Radio = 1.00;

gout
{
  umbral 0.6
  
        cylinder 
        {
                <- 1,0,0>, <1,0,0>, Radio, Fuerza
        }
        sphere 
         {
          <0,1.25,0>, Radio, Fuerza
          }
        sphere 
        {
         <0,0, -1.25>, Radio, Fuerza
        }
       sphere 
         {
          <0,1.50,0>, Radio / 2, -Fuerza
        }
        scale 1
        rotate <0,0,0>
        translate <0,0.5,0>
        texture {
         pigment
        {
                color rgb <0.7,1,0.0>
        }
        finish 
        {
                phong 1
        }
 } 