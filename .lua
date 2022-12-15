-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local CopyCframe = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CopyCframe.Name = "CopyCframe"
CopyCframe.Parent = ScreenGui
CopyCframe.BackgroundColor3 = Color3.fromRGB(228, 231, 30)
CopyCframe.BorderColor3 = Color3.fromRGB(243, 184, 33)
CopyCframe.BorderSizePixel = 5
CopyCframe.Position = UDim2.new(0.100132838, 0, 0.154668868, 0)
CopyCframe.Size = UDim2.new(0, 72, 0, 31)
CopyCframe.Font = Enum.Font.Ubuntu
CopyCframe.Text = "Copy Cframe"
CopyCframe.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyCframe.TextScaled = true
CopyCframe.TextSize = 14.000
CopyCframe.TextWrapped = true

-- Scripts:

local function WESF_fake_script() -- CopyCframe.Script 
	local script = Instance.new('Script', CopyCframe)

	script.Parent.MouseButton1Click:Connect(function()
		Cframe = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		setclipboard(Cframe)
	end)
end
coroutine.wrap(WESF_fake_script)()
