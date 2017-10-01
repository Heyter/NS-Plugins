surface.CreateFont( "3dvoicedebug", {
	font = "Arial",
	size = 14,
	antialias = true,
	weight = 700,	
	underline = true,
} )

hook.Add("PostDrawOpaqueRenderables","3dvoicedebug",function()

	if (nut.config.get("3DVoiceDebugMode")) then
	
		radius = nut.config.get("3DVoiceRadius")*2
	
		for k,v in pairs(player.GetAll()) do
		
			if (v != LocalPlayer()) then
		
				cam.Start3D2D( v:GetPos()+Vector(0,0,1), Angle(0,0,0), 1 )
					
					draw.RoundedBox( radius/2, -radius/2, -radius/2, radius, radius, Color(255,255,255,100))
					draw.RoundedBox( radius/2, -radius/2+8, -radius/2+8, radius-16, radius-16, Color(100,0,0,255))
					 
					draw.RoundedBox( 0, 0, -1, radius/2, 2, Color(255,255,255,220))
					 
					 draw.SimpleText( "Radius: " .. radius/2,"3dvoicedebug",0,8,Color( 255, 255, 255, 220 ), 1)
					 
				cam.End3D2D()

			end
		
		end
		
	end

end)
