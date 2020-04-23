#include  "colors.inc" 

#declare  walk_sphere = 6* watch ;
#declare  walk_camera = 2* watch  ;

camera {
    
    location  < 0 , 1 , - 10 >
    look_at  < 0 + walk_camera , 1 , 5 >
    }
light_source {
    < 2 ,  10 ,  - 3 >
    color  Blue
    area_light  <5,0,0>,<0,0,5>,5,5
    adaptive  1
  }

#for ( Position_x , 0 , 9 , 1 )
	#for  ( Position_y , 0 , 4 , 1 )
sphere {
    <- 5 + Position_x + advance_sphere , Position_y , 0 >,  . 5 5
    texture {
    
        pigment {

            color  rgb < 0 , 0 , 1 >
        }
        finish {
            phong  1         
        }   
    }
}
#end  
#end  
 
  
plane  {
    y ,  - 1
    texture  {
	    pigment {
		    color  rgb < 1 , 1 , 1 >
	    }
      finish  {
        diffuse  0.4
        ambient 0.2
        phong  1
        phong_size  100
        reflection  0.25
      }
    }
  }
 
 plane {
    x ,  - 10
    texture  {
	    pigment {
		    color  rgb < 1 , 1 , 1 >
	    }
      finish  {
        diffuse  0.4
        ambient  0.2
        phong  1
        phong_size  100
        reflection  0.25
      }
    }
  }
plane {
    z ,  10
    texture  {
	    pigment {
		    color  rgb < 1 , 1 , 1 >
	    }
      finish  {
        diffuse  0.4
        ambient  0.2
        phong  1
        phong_size  100
        reflection  0.25
      }
    }
   }