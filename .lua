-- roblox gui with cframe copy button

-- Credits: Kattoe#7992
-- Date: 16-12-2022


-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local CopyCframe = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CopyCframe.Name = "CopyCframe"
CopyCframe.Parent = ScreenGui
CopyCframe.BackgroundColor3 = Color3.fromRGB(255, 219, 12)
CopyCframe.BorderColor3 = Color3.fromRGB(235, 157, 0)
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

local function JUUUIE_fake_script() -- CopyCframe.Script 
	local script = Instance.new('Script', CopyCframe)

	script.Parent.MouseButton1Click:Connect(function()
		Cframe = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		setclipboard(Cframe)
	end)
end
coroutine.wrap(JUUUIE_fake_script)()
local function SBYNQ_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	frame = script.Parent.CopyCframe
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
end
coroutine.wrap(SBYNQ_fake_script)()
