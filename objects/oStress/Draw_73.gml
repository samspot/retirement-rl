

stressLevel = GetStressLevel()
image_index = stressLevel

draw_self()

DrawTextShadowed(x+sprite_width/2, y, "Age " + string(oPlayer.age))

toolTipText = "happiness: " + string(oPlayer.happiness) + "\n"
			+ "death risk: " + string(GetDeathRisk())