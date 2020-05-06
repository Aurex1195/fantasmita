
#include «rama_pino.inc»
#declare Luz=light_source { <30, 60, -40> color Gray50 }
#declare CameraUp= camera {
location <8, 30, -40>
look_at <8,15,0>
angle 65

right AspectRatio*x
}
#declare EscalaSuelo=8;
#declare Suelo2= plane { y,0
texture {T_Stone21}
scale EscalaSuelo
}
union
{ Rama
(<-6,30,0>, 1.22, <0,30,0>, 1.2, 15, 
pigment
{White}, .85, 5, 1 )
pigment
{White}
}
union{ 
RamaR(<-6,25,0>, 1.22, <0,25,0>, 1.2, 15, 
TextuMarron, T
extuVerde, .85, 5, 60, 1 )}
camera
 {CameraUp}
Luz
Suelo2                         
union{
 Rama(<-6,30,0>, 1.22, <0,30,0>, 1.2, 15, 
 pigment{White}, .85, 5, 0 )
pigment{White}
}
union{ 
RamaR(<-6,25,0>, 1.22, <0,25,0>, 1.2, 15, 
TextuMarron,
 TextuVerde, .85, 5, 60, 0 )
 }