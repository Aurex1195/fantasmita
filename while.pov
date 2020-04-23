

#include  "colors.inc"  
#declare  Radio  =. 05 ;
#declare  seed = 4914 ;
#declare  Number_sphere = 21 ;
#declare  Random = seed (seed);
camera 
    {
    location  < 0 , 1 , - 3 >
    look_at  < 0 , 0 , 0 >
    }

  light_source  {
    < 2 ,  10 ,  - 3 >
    color  Red
    area_light  < 5 ,  0 ,  0 >,  < 0 ,  0 ,  5 >,  5 ,  5
    adaptive  1
    sphere nervous
  }
#declare   Number = 2 ;
#while ( Number < Number_sphere ) 
sphere {
    < rand ( random), rand ( random ), rand ( random )>,  radio
    texture {    
        pigment {
            color  rgbt < rand (random), rand (random), rand (random), rand (random)>
        }
        finish {
            phong  1         
        }   
    }
}
#declare  number = number + 1 ;
#end
 plane  {
    y ,  - 1
    texture {
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

plane  {
    x ,  - 2
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
  
plane   {
    z ,  2
    texture  {
	    pigment {
		    color  rgb < 1 , 1 , 1 >
	    }
      finish  {
        diffuse  0.4
        ambient  0.2
        phong  1
        phong_size  100
        reflection 0.25
      }
    }
  }