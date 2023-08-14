local CoreGui = game:GetService("CoreGui")
--# Services
local Funny_Sound: Sound = Instance.new("Sound")
--# Funny Sound
local Random_Sounds = {
	9114828835,
	9114038441,
	157636218, 
	157636421,
	5732963084, 
	948844241, 
	8328695091, 
	9080161598, 
	5659823493,
	9114177820,
	6420027936,
	4516507682
}

--# list all sound effects when you release this please

local fake_wiget_info: DockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float, false, true, 10, 10)
--# create fake wiget info

local fake_wiget: DockWidgetPluginGui = plugin:CreateDockWidgetPluginGui("Random Sound Plugin", fake_wiget_info)

fake_wiget.Name = "Random Sound Plugin"
fake_wiget.Title = "Random Sound Plugin"
--# set up fake wiget stuff

Funny_Sound.Name = "Funny_Sound"
Funny_Sound.Parent = fake_wiget
--# name it and parent it


while true do
	local funny_time: number = math.random(10, 420)
	--# pick a time between 10 seconds out of 7 (420 seconds) minutes

	local random_sound: number = Random_Sounds[math.random(1, #Random_Sounds)]
	--# pick a sound from the table
	
	
	task.wait(funny_time)
	--# now wait
	Funny_Sound.SoundId = "rbxassetid://"..random_sound
	Funny_Sound:Play()
	--# play sound
end