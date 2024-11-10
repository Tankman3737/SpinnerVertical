///////////////////////////////////////////////////////////////////////
# SpinnerVert Layout by Tankman3737               
# As always, thanks to those developers for their time, effort and great modules                                                                
# (AM+) v3.0.9                                          
# Updated (10-11-24)   

///////////////////////////////////////////////////////////////////////



class UserConfig {
	
    
</ label="Artwork Left ", 
       help="Artwork for Door ",
       options="2DBoxes,3DBoxes,Flyer", order=1, /> ART="3DBoxes";

       </ label="Artwork Right" , help="Artwork for Doorr", options="icon,Cabinet,Flyer,Bezel", order=2 /> ART2="icon";
       

}
cfg <- fe.get_config()




# Layout Size
fe.layout.preserve_aspect_ratio = true
  
fe.layout.width=1080;
fe.layout.height=1920;

local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;
	
# Modules

fe.load_module("wheel");
fe.load_module("animate");
fe.load_module("fade");
fe.load_module("file");
fe.load_module("file-format");
fe.load_module("inertia")




local BG=fe.add_image("spinner assets/BG.png", 0, 0, 1080, 1920);


local cogback=fe.add_image("spinner assets/cog_backing.png", 0, 0, 1080, 1920);


local snap=fe.add_artwork("snap",540,960,420,420)
snap.anchor=Anchor.Centre



local Bcog=fe.add_image("spinner assets/Bigcog2.png", 0, 0, 1080, 1920);
Bcog.rotation_origin_x=0.5
Bcog.rotation_origin_y=0.5
//Bcog.alpha=0
local Bcog2=fe.add_image("spinner assets/Bigcog2.png", 0, 0, 1080, 1920);
Bcog2.rotation_origin_x=0.5
Bcog2.rotation_origin_y=0.5



local gearTL=fe.add_image("spinner assets/gearTL.png", 0, 0, 1080, 1920);
local gearTR=fe.add_image("spinner assets/gearTR.png", 0, 0, 1080, 1920);
local gearBR=fe.add_image("spinner assets/gearBr.png", 0, 0, 1080, 1920);
local gearBL=fe.add_image("spinner assets/gearBL.png", 0, 0, 1080, 1920);

local gearTL2=fe.add_image("spinner assets/gearTL.png", 0, 0, 1080, 1920);
local gearTR2=fe.add_image("spinner assets/gearTR.png", 0, 0, 1080, 1920);
local gearBR2=fe.add_image("spinner assets/gearBr.png", 0, 0, 1080, 1920);
local gearBL2=fe.add_image("spinner assets/gearBL.png", 0, 0, 1080, 1920);



local Lback=fe.add_image("spinner assets/lens_back.png", 0, 0, 1080, 1920);
local wheel = fe.add_wheel("circle4vert")

local bracket=fe.add_image("spinner assets/bracket.png", 0, 0, 1080, 1920);
bracket.zorder=50

local BD2=fe.add_image("spinner assets/B_door2.png", 0, 0, 1080, 1920);
local TD2=fe.add_image("spinner assets/T_door2.png", 0, 0, 1080, 1920);
local play = fe.add_image("spinner assets/Players/[Players].png", 265, 120, 200, 100);
play.preserve_aspect_ratio=true
play.anchor=Anchor.Centre



local manu2 = fe.add_image("spinner assets/Manufacturer/[Manufacturer]", 265, 240, 210, 80);
manu2.preserve_aspect_ratio=true
manu2.anchor=Anchor.Centre

local year = fe.add_text("[Year]", 110, 310, 310, 40);
year.charsize = 45;
year.align = Align.Centre;


local list = fe.add_text( "[ListEntry] / [ListSize]", 110, 400, 310, 40 )
list.charsize = 45;
list.align = Align.Centre;

local overview =  fe.add_text( "[Overview]", 680, 55, 295, 415);

overview.charsize = 20;
overview.word_wrap = true;
overview.align = Align.Centre;
overview.zorder=5

if (cfg["ART"] == "2DBoxes")
{
   
local box=fe.add_artwork("2Dboxes",140,1460,250,400)
}
if (cfg["ART"] == "3DBoxes")
{
	
local box=fe.add_artwork("3Dboxes",140,1460,250,400)

}

if (cfg["ART"] == "Flyer")
{
local icon=fe.add_artwork("flyer",140,1460,250,400)

}

if (cfg["ART2"] == "icon")
{
local icon=fe.add_artwork("icon",820,1660,320,420)
icon.anchor=Anchor.Centre
icon.preserve_aspect_ratio=true
}

if (cfg["ART2"] == "Cabinet")
{
local cabinet=fe.add_artwork("cabinet",820,1660,320,420)    
cabinet.anchor=Anchor.Centre
cabinet.preserve_aspect_ratio=true
}

if (cfg["ART2"] == "Flyer")
{
local flyer=fe.add_artwork("flyer",820,1660,250,400)
flyer.anchor=Anchor.Centre
}

if (cfg["ART2"] == "Bezel")
{


local black2=fe.add_image("spinner assets/black.png",820,1660,195,380)
black2.anchor=Anchor.Centre
local snap2=fe.add_artwork("snap",820,1660,230,210)
snap2.anchor=Anchor.Centre
snap2.preserve_aspect_ratio=true
snap2.video_flags = Vid.NoAudio;   
local bezel=fe.add_artwork("bezel3",820,1660,250,400)
bezel.anchor=Anchor.Centre


}



local Gring=fe.add_image("spinner assets/grey_ring.png", 0, 0, 1080, 1920);





local Lfront=fe.add_image("spinner assets/lens_front.png", 0, 0, 1080, 1920);
Lfront.zorder=50



//MARK:  Transitions
     function Bcog( ttype, var, ttime )
     {
         if( ttype==Transition.ToNewSelection)
         {

			  Bcog.to_rotation+=30
			  Bcog2.to_rotation-=30
              gearTL.x=-50
              gearTL.y=-50
              gearTR.x=50
              gearTR.y=-50
              gearBR.x=50
              gearBR.y=50
              gearBL.x=-50
              gearBL.y=50
             

              
         }
		  if( ttype==Transition.StartLayout)
         {
           
			  
         }
		  if( ttype==Transition.EndNavigation)
         {
             
            
              gearTL.to_x=0
              gearTL.to_y=0
              gearTL.delay_x=1000
              gearTL.delay_y=1000
              gearTR.to_x=0
              gearTR.to_y=0
              gearTR.delay_x=1000
              gearTR.delay_y=1000
              gearBR.to_x=0
              gearBR.to_y=0
              gearBR.delay_x=1000
              gearBR.delay_y=1000
              gearBL.to_x=0
              gearBL.to_y=0
              gearBL.delay_x=1000
              gearBL.delay_y=1000
             
         
         }
		  
        
    }

fe.add_transition_callback( "Bcog" );




//MARK: Inertia

gearTL2= Inertia(gearTL2, 50,"x","y");
gearTR2= Inertia(gearTR2, 50,"x","y");
gearBR2= Inertia(gearBR2, 50,"x","y");
gearBL2= Inertia(gearBL2, 50,"x","y");

gearTL= Inertia(gearTL, 100,"x","y");
gearTR= Inertia(gearTR, 100,"x","y");
gearBR= Inertia(gearBR, 100,"x","y");
gearBL= Inertia(gearBL, 100,"x","y");

Bcog= Inertia(Bcog, 300"rotation","alpha");
Bcog2= Inertia(Bcog2, 300"rotation","alpha");




//MARK: SIG controls
function interationControls(sig)
{
    switch (sig)
    {
        case "left":
            fe.signal("prev_game");

            Bcog2.alpha=0
            Bcog.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-50
            gearTL2.to_y=-50 
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=50
            gearTR2.to_y=-50
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=50
            gearBR2.to_y=50
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-50
            gearBL2.to_y=50

          
            return true;
        case "right":
            fe.signal("next_game");

            Bcog.alpha=0
			Bcog2.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-50
            gearTL2.to_y=-50
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=50
            gearTR2.to_y=-50
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=50
            gearBR2.to_y=50
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-50
            gearBL2.to_y=50

             
            return true;
        case "up":
            fe.signal("prev_game")
			
            Bcog2.alpha=0
            Bcog.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-50
            gearTL2.to_y=-50
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=50
            gearTR2.to_y=-50
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=50
            gearBR2.to_y=50
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-50
            gearBL2.to_y=50

            return true;
        case "down":
            fe.signal("next_game")
			Bcog.alpha=0
			Bcog2.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-50
            gearTL2.to_y=-50
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=50
            gearTR2.to_y=-50
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=50
            gearBR2.to_y=30
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-30
            gearBL2.to_y=30

            
            return true;

         case "custom2":

        


        default:
         }
            return false;
   




}
fe.add_signal_handler("interationControls");




