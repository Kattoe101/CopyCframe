-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local CopyCframe = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CopyCframe.Name = "CopyCframe"
CopyCframe.Parent = ScreenGui
CopyCframe.BackgroundColor3 = Color3.fromRGB(239, 218, 60)
CopyCframe.BorderColor3 = Color3.fromRGB(247, 173, 1)
CopyCframe.BorderSizePixel = 5
CopyCframe.Position = UDim2.new(0.444042802, 0, 0.460447341, 0)
CopyCframe.Size = UDim2.new(0, 72, 0, 31)
CopyCframe.Font = Enum.Font.Ubuntu
CopyCframe.Text = "Copy Cframe"
CopyCframe.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyCframe.TextScaled = true
CopyCframe.TextSize = 14.000
CopyCframe.TextWrapped = true

-- Scripts:

local function ANWJOA_fake_script() -- CopyCframe.Script 
	local script = Instance.new('Script', CopyCframe)

	script.Parent.MouseButton1Click:Connect(function()
		Cframe = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		setclipboard(Cframe)
	end)
end
coroutine.wrap(ANWJOA_fake_script)()
local function KDVNYYR_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	frame = script.Parent.CopyCframe
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
end
coroutine.wrap(KDVNYYR_fake_script)()
