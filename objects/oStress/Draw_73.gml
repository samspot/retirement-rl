

stressLevel = GetStressLevel()
image_index = stressLevel

draw_self()

draw_set_font(fntGui)
DrawTextShadowed(x+sprite_width/2, y, "Age " + string(oPlayer.age), fntGui, 0)


toolTipText = "happiness: " + string(oPlayer.happiness) + "\n"
			+ "death risk: " + string(GetDeathRisk())
			
toolTipText = ""			
event_inherited()			