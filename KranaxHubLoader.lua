local Players = game:GetService("Players")
local plr = Players.LocalPlayer

--Main Instances--
local screenGui = Instance.new("ScreenGui")
local layout = Instance.new("Frame", screenGui)


local mainContainer = Instance.new("Frame", layout)
local Topbar = Instance.new("Frame", mainContainer)
local menuButton = Instance.new("TextButton", screenGui)
--UICorners--
local MCcorner = Instance.new("UICorner", mainContainer)
local TBcorner = Instance.new("UICorner", Topbar)
--Misc--
local DD = Instance.new("UIDragDetector", mainContainer)
local layoutRatio = Instance.new("UIAspectRatioConstraint", layout)
local MCRatio = Instance.new("UIAspectRatioConstraint", mainContainer)
local MBRatio = Instance.new("UIAspectRatioConstraint", menuButton)
--Topbar--
local Exit = Instance.new("TextButton", Topbar)
local HubTitle = Instance.new("TextLabel", Topbar)

--KranaxGUI Code--
screenGui.Name = "KranaxHUB"
screenGui.Parent = game.CoreGui
screenGui.IgnoreGuiInset = true

--Layout Code--
layout.AnchorPoint = Vector2.new(0.5,0.5)
layout.Position = UDim2.new(0.5, 0, 0.5, 0)
layout.Size = UDim2.new(1, 0, 1, 0)
layout.Transparency = 1
layoutRatio.AspectRatio = 2.378
layoutRatio.AspectType = Enum.AspectType.FitWithinMaxSize
layoutRatio.DominantAxis = Enum.DominantAxis.Width

--MC Code--
mainContainer.Visible = false
mainContainer.AnchorPoint = Vector2.new(0.5,0.5)
mainContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
mainContainer.Size = UDim2.new(0.515, 0, 0.743, 0)
mainContainer.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MCRatio.AspectRatio = 1.65
MCRatio.AspectType = Enum.AspectType.FitWithinMaxSize
MCRatio.DominantAxis = Enum.DominantAxis.Width
MCcorner.CornerRadius = UDim.new(0.02, 0)

--MenuButton Code--
menuButton.MouseButton1Click:Connect(function()
	mainContainer.Visible = not mainContainer.Visible
end)

menuButton.AnchorPoint = Vector2.new(1, 0.5)
menuButton.Position = UDim2.new(1, 0, 0.972, 0)
menuButton.Size = UDim2.new(0.12, 0, 0.061, 0)
menuButton.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
menuButton.TextColor3 = Color3.fromRGB(117, 117, 117)
menuButton.Font = Enum.Font.SourceSans
menuButton.TextScaled = true
menuButton.Text = "Kranax Hub"
MBRatio.AspectRatio = 4.667
MBRatio.AspectType = Enum.AspectType.FitWithinMaxSize
MBRatio.DominantAxis = Enum.DominantAxis.Width


--Topbar Code--
Topbar.AnchorPoint = Vector2.new(0, 0.5)
Topbar.Position = UDim2.new(0, 0, 0.033, 0)
Topbar.Size = UDim2.new(1, 0, 0.066, 0)
Topbar.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
TBcorner.CornerRadius = UDim.new(0.1, 0)
Exit.AnchorPoint = Vector2.new(1, 0.5)
Exit.Position = UDim2.new(0.985, 0, 0.5, 0)
Exit.Size = UDim2.new(0.026, 0, 1, 0)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(117, 117, 117)
Exit.TextScaled = true
Exit.BackgroundTransparency = 1
HubTitle.Text = "      Kranax Hub"
HubTitle.TextScaled = true
HubTitle.Font = Enum.Font.SourceSans
HubTitle.TextXAlignment = Enum.TextXAlignment.Left
HubTitle.TextColor3 = Color3.fromRGB(117, 117, 117)
HubTitle.Size = UDim2.new(0.959, 0, 1, 0)
HubTitle.Position = UDim2.new(0, 0, 0, 0)
HubTitle.BackgroundTransparency = 1

Exit.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)
