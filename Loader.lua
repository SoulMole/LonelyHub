getgenv().MainColor = Color3.fromRGB(144, 66, 245)

local MainColor = getgenv().MainColor
local PhantomForcesGameID = 292439477
local PhantomForcesLoadstring = "https://raw.githubusercontent.com/SoulMole/LonelyHub/main/PhantomForces.lua"

local function LoadGUI()
    local LonelyLoader = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    local Header = Instance.new("Frame")
    local HeaderCorner = Instance.new("UICorner")
    local HeaderCover = Instance.new("Frame")
    local CloseButton = Instance.new("ImageButton")
    local TextLabel = Instance.new("TextLabel")
    local ContentArea = Instance.new("Frame")
    local GameButton = Instance.new("TextButton")
    local GameButtonCorner = Instance.new("UICorner")
    local Developer = Instance.new("TextLabel")
    local DeveloperCorner = Instance.new("UICorner")

    LonelyLoader.Name = "LonelyLoader"
    LonelyLoader.Parent = game.CoreGui
    LonelyLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = LonelyLoader
    Main.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.421352237, 0, 0.423631847, 0)
    Main.Size = UDim2.new(0, 300, 0, 164)

    MainCorner.CornerRadius = UDim.new(0, 4)
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = Main

    Header.Name = "Header"
    Header.Parent = Main
    Header.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
    Header.Size = UDim2.new(0, 300, 0, 28)

    HeaderCorner.CornerRadius = UDim.new(0, 4)
    HeaderCorner.Name = "HeaderCorner"
    HeaderCorner.Parent = Header

    HeaderCover.Name = "HeaderCover"
    HeaderCover.Parent = Main
    HeaderCover.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
    HeaderCover.BorderColor3 = Color3.fromRGB(32, 34, 37)
    HeaderCover.BorderSizePixel = 0
    HeaderCover.Position = UDim2.new(0, 0, 0.109999999, 0)
    HeaderCover.Size = UDim2.new(0, 300, 0, 10)

    CloseButton.Name = "Close Button"
    CloseButton.Parent = Main
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.BackgroundTransparency = 1.000
    CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CloseButton.BorderSizePixel = 0
    CloseButton.Position = UDim2.new(0.903999984, 0, 0.0149999997, 0)
    CloseButton.Size = UDim2.new(0, 24, 0, 24)
    CloseButton.Image = "rbxassetid://3926305904"
    CloseButton.ImageRectOffset = Vector2.new(284, 4)
    CloseButton.ImageRectSize = Vector2.new(24, 24)

    TextLabel.Parent = Main
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.0390907787, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 105, 0, 29)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = "lonely loader"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 16.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    ContentArea.Name = "ContentArea"
    ContentArea.Parent = Main
    ContentArea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ContentArea.BackgroundTransparency = 1.000
    ContentArea.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ContentArea.BorderSizePixel = 0
    ContentArea.Position = UDim2.new(0.0333333351, 0, 0.226666331, 0)
    ContentArea.Size = UDim2.new(0, 278, 0, 117)

    GameButton.Name = "GameButton"
    GameButton.Parent = ContentArea
    GameButton.BackgroundColor3 = getgenv().LH_Color
    GameButton.BorderSizePixel = 0
    GameButton.Position = UDim2.new(0.0816766769, 0, 0.155548275, 0)
    GameButton.Size = UDim2.new(0, 233, 0, 35)
    GameButton.Font = Enum.Font.Gotham
    GameButton.Text = "Loading..."
    GameButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    GameButton.TextSize = 16.000
    GameButton.BackgroundColor3 = MainColor
    GameButtonCorner.CornerRadius = UDim.new(0, 4)
    GameButtonCorner.Name = "GameButtonCorner"
    GameButtonCorner.Parent = GameButton

    Developer.Name = "Developer"
    Developer.Parent = ContentArea
    Developer.BackgroundColor3 = Color3.fromRGB(61, 63, 70)
    Developer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Developer.BorderSizePixel = 0
    Developer.Position = UDim2.new(0.079136692, 0, 0.553485572, 0)
    Developer.Size = UDim2.new(0, 233, 0, 35)
    Developer.Font = Enum.Font.Gotham
    Developer.Text = "By: Lonely Planet#0001"
    Developer.TextColor3 = Color3.fromRGB(255, 255, 255)
    Developer.TextSize = 16.000

    DeveloperCorner.CornerRadius = UDim.new(0, 4)
    DeveloperCorner.Name = "DeveloperCorner"
    DeveloperCorner.Parent = Developer

    -- Close Script
    local function CloseScript()
        local script = Instance.new('LocalScript', CloseButton)  

        local CloseBtn = script.Parent 
        local Elements = {CloseBtn, script.Parent.Parent, script.Parent.Parent['ContentArea'], script.Parent.Parent['HeaderCover'], script.Parent.Parent['Header'], script.Parent.Parent['ContentArea']['Developer'], script.Parent.Parent['ContentArea']['GameButton'], script.Parent.Parent['TextLabel']}
        
        CloseBtn.MouseButton1Click:Connect(function()
            for _,e in pairs(Elements) do
                game.TweenService:Create(e, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                    ImageTransparency = 1
                }):Play()
            end
            wait(0.25)
            script.Parent.Parent.Parent:Destroy()
        end)
    end
    coroutine.wrap(CloseScript)()

    -- Game Load Script
    local function GameLoadScript()
        local script = Instance.new('LocalScript', GameButton)
        
        script.Parent.MouseButton1Click:Connect(function()       
            loadstring(game:HttpGet(PhantomForcesLoadstring))()
            script.Parent.Parent.Parent.Parent:Destroy()
        end)
    end
    coroutine.wrap(GameLoadScript)()
end

-- Load The GUI
if game.PlaceId == PhantomForcesGameID then LoadGUI()
else print('lonely hub: Not loaded, invalid game') end