-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On March 19 2018
--
-- This program will tell if a number that a user has entered if its negative or
-----------------------------------------------------------------------------------------

-- Making variables
local userInput
local computerOutput
local zero 
-- Changing Background
display.setDefault( "background", 1, 1, 1 )

-- Importing Text 
local instructions = display.newText("Type in a Number/Digit", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 100)
instructions:setFillColor ( 0, 0, 0 )
instructions.id = "The instructions for the user"

local outputText = display.newText("Your Number is :", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 75)
outputText:setFillColor ( 0, 0, 0 )
outputText.id = "Computers Output"

--Importing TextField
local numberTextField = native.newTextField( display.contentCenterX, display.contentCenterY, 1000, 120)
numberTextField.id = "User input"

-- Importing function button
local calculationButton = display.newImageRect("./assets/sprites/Button.png", 406, 157)
calculationButton.x = display.contentCenterX
calculationButton.y = display.contentCenterY + 400
calculationButton.id = "Calculation Button"

-- Making Function
local function calculationButtonTouch( event )
	-- This funtion will tell if the number is if the # is +, -, 0

	local userInput = tonumber (numberTextField.text)
	local zero = 0

	if zero < userInput then
		outputText.text = "Your Number is : ".."Postive"..""
	elseif zero > userInput then
		outputText.text = "Your Number is : ".."Negative"..""
	elseif zero == userInput then 
		outputText.text = "Your Number is : ".."Zero"..""
	end
	

	
end

calculationButton:addEventListener("touch",calculationButtonTouch )

