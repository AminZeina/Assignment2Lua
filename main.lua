-------------------------------------------------------------------------------------------
-- main.lua
--
-- Created By: Amin Zeina 
-- Created On: Feb 2018
--
-- This program calulates the area and circumference given the radius
-------------------------------------------------------------------------------------------

display.setDefault( "background", 1, 1, 1)

local instructionText = display.newText( "Enter Radius:", 350, 200, native.systemFont, 108)
instructionText:setTextColor( 0, 0, 0 )
instructionText.id = "Instructions"

local radiusTextField = native.newTextField( 1200, 200, 1000, 100)
radiusTextField.id = "Radius input"

local enterArea = display.newImageRect( "./Assets/Sprites/areaButton.png", 600, 300)
enterArea.x = 500
enterArea.y = display.contentCenterY - 200

local enterCircumcenter = display.newImageRect( "./Assets/Sprites/circumferenceButton.png", 600, 300)
enterCircumcenter.x = 1500
enterCircumcenter.y = display.contentCenterY - 200

local function onAreaClicked( event )
	-- calculates the area
	local area
	local radius = radiusTextField.text
	area = 3.14*(radius*radius)
	
	local showArea = display.newText( "The Area is: " .. area, 525, 900, native.systemFont, 108)
	showArea:setFillColor( 0, 0, 0 )
	

	return true
end

local function onCircumferenceClicked( event )
	-- calculates Circumference
	local circumference
	local radius = radiusTextField.text
	circumference = 3.14*2*radius

	local showCircumference = display.newText( "The Circumference is: " .. circumference, 715, 1000, native.systemFont, 108)
	showCircumference:setFillColor( 0, 0, 0 )

	return true
end



enterArea:addEventListener( "touch", onAreaClicked)

enterCircumcenter:addEventListener( "touch", onCircumferenceClicked)