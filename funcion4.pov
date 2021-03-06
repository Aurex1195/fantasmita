          #include "colors.inc"
background { color NeonBlue }   
  #macro Bounce_101 (X)
 #if (X <1/2) (sin (pi * (X + 1/2)))
 #else (sin (pi * (1-X + 1/2)))
 #fin
#fin //----------------------------
#declare Time = reloj +0.00;
camera 
{ 
        location <0,1,-3> 
        look_at <0, 0, 0> 
}
light_source {
  <0, 0, 0>            // light's position (translated below)
  color rgb <1, 1, 1>  // light's color
  translate <-30, 30, -30>
}
sphere
{
               <0, 0, 0>, clock  
        texture 
        { 
                pigment 
                { 
                        color rgb<0,0,1>
                } 
                finish
                {
                        phong 1
                }
        }        
 }  
plane {
        y,-1
        texture {
                pigment{
                        color rgb<0,0,1>
                        }
                finish{
                        diffuse 0.4
                        ambient 0.2
                        phong 1   
                        phong_size 100
                        reflection 0.25
                        }
                 }
      }
plane
{
        x,-1
        texture
        {
               pigment 
               {
                        color rgb<1,1,1>
                }
                finish
                {
                        diffuse 0.4
                        ambient 0.2 
                        phong 1
                        phong_size 100
                        reflection 0.25
                 }
          }
 }   
 plane
{
        z,1
        texture
        {
               pigment 
               {
                        color rgb<1,1,1>
                }
                finish
                {
                        diffuse 0.4
                        ambient 0.2 
                        phong 1
                        phong_size 100
                        reflection 0.25
                 }
          }
 }        
 #declare esfera = difference
{
 sphere
 {
  <0,0,0>,2
  #if(clock<80 | clock>100 ) texture { pigment { color rgb<1, 1, 0> }}
  #else texture { pigment { color rgbt<1, 0, 0, (clock-80)/20> }}
  #end
  finish{ reflection { 0.1, metallic }}
 }    
 
}

                                                          