local Tween = game:GetService("TweenService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local UIS = game:GetService("UserInputService")

--Search for old UI

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "DamnHub" and v.Enabled == true then
        Tween:Create(v.MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(1.5, 0, 0.5, 0)}):Play()
        wait(1.1)
        v:Destroy()
    end
end

local Library = {}

function Library:AddWindow(WindowTable)
    WindowTable = WindowTable or {}
    WindowTable.Title = WindowTable.Title or "DamnHub"
    WindowTable.GameName = WindowTable.GameName or "GameName"
    WindowTable.LoadingEnabled = WindowTable.LoadingEnabled or false
    WindowTable.MainColor = WindowTable.MainColor or Color3.fromRGB(220,30,50)

    --Instances

    local DamnHub = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local MainFrameCorner = Instance.new("UICorner")
    local LeftFrame = Instance.new("Frame")
    local LeftFrameCorner = Instance.new("UICorner")
    local SFrame = Instance.new("Frame")
    local GuiTitle = Instance.new("TextLabel")
    local GameName = Instance.new("TextLabel")
    local TabsButtonsList = Instance.new("Frame")
    local TabsListLayout = Instance.new("UIListLayout")
    local TabsList = Instance.new("Folder")
    local Shift = Instance.new("Frame")
    local ShiftCorner = Instance.new("UICorner")

    --Parameters

    DamnHub.Name = "DamnHub"
    DamnHub.Parent = game:GetService("CoreGui")
    DamnHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    DamnHub.ResetOnSpawn = false

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = DamnHub
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0)
    MainFrame.Size = UDim2.new(0, 380, 0, 384)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.ZIndex = 1337

    MainFrameCorner.CornerRadius = UDim.new(0, 7)
    MainFrameCorner.Name = "MainFrameCorner"
    MainFrameCorner.Parent = MainFrame

    LeftFrame.Name = "LeftFrame"
    LeftFrame.Parent = MainFrame
    LeftFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    LeftFrame.Size = UDim2.new(0, 96, 0, 384)

    LeftFrameCorner.CornerRadius = UDim.new(0, 7)
    LeftFrameCorner.Name = "LeftFrameCorner"
    LeftFrameCorner.Parent = LeftFrame

    SFrame.Name = "SFrame"
    SFrame.Parent = LeftFrame
    SFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    SFrame.BorderSizePixel = 0
    SFrame.Position = UDim2.new(0.867256522, 0, 0, 0)
    SFrame.Size = UDim2.new(0, 15, 0, 384)

    GuiTitle.Name = "GuiTitle"
    GuiTitle.Parent = LeftFrame
    GuiTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GuiTitle.BackgroundTransparency = 1
    GuiTitle.Position = UDim2.new(0, 0, 0.018229166, 0)
    GuiTitle.Size = UDim2.new(0, 98, 0, 18)
    GuiTitle.ZIndex = 6
    GuiTitle.Font = Enum.Font.GothamMedium
    GuiTitle.Text = WindowTable.Title
    GuiTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    GuiTitle.TextSize = 18
    GuiTitle.TextWrapped = true

    GameName.Name = "GameName"
    GameName.Parent = LeftFrame
    GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GameName.BackgroundTransparency = 1
    GameName.Position = UDim2.new(0, 0, 0.0651041642, 0)
    GameName.Size = UDim2.new(0, 96, 0, 15)
    GameName.ZIndex = 6
    GameName.Font = Enum.Font.GothamMedium
    GameName.Text = tostring(WindowTable.GameName)
    GameName.TextColor3 = Color3.fromRGB(70, 70, 70)
    GameName.TextSize = 13
    GameName.TextWrapped = true

    TabsButtonsList.Name = "TabsButtonsList"
    TabsButtonsList.Parent = MainFrame
    TabsButtonsList.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    TabsButtonsList.BackgroundTransparency = 1
    TabsButtonsList.Position = UDim2.new(0, 0, 0.119791664, 0)
    TabsButtonsList.Size = UDim2.new(0, 98, 0, 293)
    TabsButtonsList.ZIndex = 77
    
    TabsListLayout.Name = "TabsListLayout"
    TabsListLayout.Parent = TabsButtonsList
    TabsListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabsListLayout.Padding = UDim.new(0, 6)

    TabsList.Name = "TabsList"
    TabsList.Parent = MainFrame

    Shift.Name = "Shift"
    Shift.Parent = MainFrame
    Shift.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Shift.BackgroundTransparency = 1
    Shift.Position = UDim2.new(0.258570045, 0, 0, 0)
    Shift.Size = UDim2.new(0, 281, 0, 384)
    Shift.ZIndex = 3

    ShiftCorner.CornerRadius = UDim.new(0, 7)
    ShiftCorner.Name = "ShiftCorner"
    ShiftCorner.Parent = Shift

    --Loading

    Tween:Create(MainFrame, TweenInfo.new(0.97, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()

    if WindowTable.LoadingEnabled then
        local Loading = Instance.new("Frame")
        local LoadingCorner = Instance.new("UICorner")
        local Coffee = Instance.new("ImageLabel")
        local LoadingPro = Instance.new("TextLabel")
        local LoadingProgress = Instance.new("Frame")
        local FR = Instance.new("UICorner")
        local Frame = Instance.new("Frame")
        local FR2 = Instance.new("UICorner")
        local NiceGame = Instance.new("TextLabel")

        NiceGame.Name = "NiceGame"
        NiceGame.Parent = Loading
        NiceGame.AnchorPoint = Vector2.new(0.5, 0.5)
        NiceGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NiceGame.BackgroundTransparency = 1
        NiceGame.Position = UDim2.new(0.5, 0, 0.75, 0)
        NiceGame.Size = UDim2.new(0, 160, 0, 16)
        NiceGame.Font = Enum.Font.GothamMedium
        NiceGame.Text = "Have a nice game!"
        NiceGame.TextColor3 = Color3.fromRGB(45, 45, 45)
        NiceGame.TextTransparency = 1
        NiceGame.TextSize = 16
        NiceGame.TextWrapped = true

        Coffee.Name = "Coffee"
        Coffee.Parent = Loading
        Coffee.AnchorPoint = Vector2.new(0.5, 0.5)
        Coffee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Coffee.BackgroundTransparency = 1
        Coffee.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Coffee.Position = UDim2.new(0.52763, 0, 0.5, 0)
        Coffee.Size = UDim2.new(0, 157, 0, 157)
        Coffee.Image = "rbxassetid://7072707647"
        Coffee.ImageTransparency = 0.999

        Loading.Name = "Loading"
        Loading.Parent = MainFrame
        Loading.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        Loading.Size = UDim2.new(1, 0, 1, 0)
        Loading.ZIndex = 9999

        LoadingCorner.CornerRadius = UDim.new(0, 7)
        LoadingCorner.Name = "LoadingCorner"
        LoadingCorner.Parent = Loading

        LoadingPro.Name = "LoadingPro"
        LoadingPro.Parent = Loading
        LoadingPro.AnchorPoint = Vector2.new(0.5, 0.5)
        LoadingPro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LoadingPro.BackgroundTransparency = 1
        LoadingPro.Position = UDim2.new(0.5, 0, 0.642317712, 0)
        LoadingPro.Size = UDim2.new(0, 358, 0, 30)
        LoadingPro.Font = Enum.Font.GothamBold
        LoadingPro.Text = "Loading in progress"
        LoadingPro.TextColor3 = Color3.fromRGB(255, 255, 255)
        LoadingPro.TextScaled = true
        LoadingPro.TextSize = 14
        LoadingPro.TextWrapped = true
        LoadingPro.TextTransparency = 1
        LoadingPro.BackgroundTransparency = 1

        LoadingProgress.Name = "LoadingProgress"
        LoadingProgress.Parent = Loading
        LoadingProgress.AnchorPoint = Vector2.new(0.5, 0.5)
        LoadingProgress.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        LoadingProgress.BorderSizePixel = 0
        LoadingProgress.Position = UDim2.new(0.5, 0, 0.72, 0)
        LoadingProgress.Size = UDim2.new(0, 250, 0, 5)
        LoadingProgress.BackgroundTransparency = 1

        FR.CornerRadius = UDim.new(0, 7)
        FR.Name = "FR"
        FR.Parent = LoadingProgress

        Frame.Parent = LoadingProgress
        Frame.AnchorPoint = Vector2.new(0, 0.5)
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0, 0, 0.5, 0)
        Frame.Size = UDim2.new(0, 0, 0, 5)
        Frame.BackgroundTransparency = 1

        FR2.CornerRadius = UDim.new(0, 7)
        FR2.Name = "FR2"
        FR2.Parent = Frame

        repeat wait() until Coffee.IsLoaded == true
        Coffee.ImageTransparency = 1

        wait(1.4)
        Tween:Create(Coffee, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 0,Position = UDim2.new(0.527631581, 0, 0.3984375, 0)}):Play()
        wait(0.7)
        Tween:Create(LoadingProgress, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
        Tween:Create(Frame, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
        Tween:Create(LoadingPro, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextTransparency = 0}):Play()
        wait(math.random(150,200)/100)
        wait(0.1)
        Tween:Create(NiceGame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 0,Position = UDim2.new(0.5, 0, 0.78, 0)}):Play()
        wait(0.2)
        Tween:Create(Frame, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(math.random(3,4)/10, 0, 0, 5)}):Play()
        wait(0.6)
        Tween:Create(Frame, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(math.random(5,7)/10, 0, 0, 5)}):Play()
        wait(0.7)
        Tween:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, 5)}):Play()
        wait(0.5)
        LoadingPro.Text = "Loaded!"
        wait(0.3)
        Tween:Create(NiceGame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 1,Position = UDim2.new(0.5, 0, 0.82, 0)}):Play()
        wait(0.7)
        Tween:Create(LoadingProgress, TweenInfo.new(1.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
        Tween:Create(Frame, TweenInfo.new(1.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
        Tween:Create(LoadingPro, TweenInfo.new(1.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextTransparency = 1}):Play()
        wait(1.3)
        Tween:Create(Coffee, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0.527631581, 0, 0.5, 0)}):Play()
        wait(0.91)
        Tween:Create(Coffee, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 1,Size = UDim2.new(0, 200, 0, 200)}):Play()
        Tween:Create(Loading, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
    end

    function UpdateSection()
        for i,v in pairs(TabsList:GetChildren()) do
            for i,n in pairs(v:GetChildren()) do
                if n.Name == "Section" then
                    Size = 19
                    for i,w in pairs(n.Inside:GetChildren()) do
                        if w.Name == "Label" then
                            Size += 27
                        elseif w.Name == "Button" then
                            Size += 29
                        elseif w.Name == "SmallLabel" then
                            Size += 21
                        elseif w.Name == "KeyBind" then
                            Size += 27
                        elseif w.Name == "Slider" then
                            Size += 27
                        elseif w.Name == "Dropdown" then
                            Size += w.Size.Y.Offset+4
                        elseif w.Name == "Toggle" then
                            Size += 36
                        elseif w.Name == "TextBox" then
                            Size += 27
                        end
                    end
                    n.Size = UDim2.new(0, 272, 0, Size)
                end
            end
        end 
    end
    
    local Pages = {}

    function Pages:HideUI()
        DamnHub.Enabled = not DamnHub.Enabled
    end

    function Pages:AddPage(PageTitle,SelectedVal)
        local TextButton = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")
        local Tab = Instance.new("ScrollingFrame")
        local TabListLayout = Instance.new("UIListLayout")

        TextButton.Name = PageTitle.."_Button"
        TextButton.Parent = TabsButtonsList
        TextButton.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
        TextButton.Position = UDim2.new(0.2604, 0, 0, 0)
        TextButton.Size = UDim2.new(0, 90, 0, 18)
        TextButton.ZIndex = 777
        TextButton.AutoButtonColor = false
        TextButton.Font = Enum.Font.GothamBold
        TextButton.Text = PageTitle
        TextButton.TextColor3 = Color3.fromRGB(86, 86, 86)
        TextButton.TextSize = 15
        TextButton.TextWrapped = true

        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = TextButton

        Tab.Name = PageTitle.."_Tab"
        Tab.Parent = TabsList
        Tab.Active = true
        Tab.AnchorPoint = Vector2.new(0.5, 0.5)
        Tab.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
        Tab.BackgroundTransparency = 1
        Tab.BorderSizePixel = 0
        Tab.Position = UDim2.new(0.629, 0, 0.5, 0)
        Tab.Size = UDim2.new(0, 272, 0, 373)
        Tab.CanvasSize = UDim2.new(0, 0, 0, 0)
        Tab.ScrollBarThickness = 0
        Tab.Visible = false
        Tab.AutomaticCanvasSize = Enum.AutomaticSize.Y

        TabListLayout.Name = "TabListLayout"
        TabListLayout.Parent = Tab
        TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        TabListLayout.Padding = UDim.new(0, 6)

        TextButton.MouseButton1Click:Connect(function()
            if TextButton.BackgroundColor3 ~= WindowTable.MainColor then
                Tween:Create(Shift, TweenInfo.new(0.13, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                for i,v in pairs(TabsButtonsList:GetChildren()) do
                    if v.Name ~= "TabsListLayout" then
                        if v ~= TextButton then
                            Tween:Create(v, TweenInfo.new(0.13, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(38, 38, 38),TextColor3 = Color3.fromRGB(86, 86, 86)}):Play()
                        else
                            Tween:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = WindowTable.MainColor,TextColor3 = Color3.new(1,1,1)}):Play()
                        end
                    end
                end
                wait(0.07)
                for i,v in pairs(TabsList:GetChildren()) do
                    v.Visible = false
                end
                Tab.Visible = true
                Tween:Create(Shift, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
            end
        end)

        local Section = {}

        function Section:AddSection(SectionText)
            local Section1 = Instance.new("Frame")
            local SectionTitle = Instance.new("TextLabel")
            local Inside = Instance.new("Frame")
            local InsideListLayout = Instance.new("UIListLayout")

            Section1.Name = "Section"
            Section1.Parent = Tab
            Section1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Section1.BackgroundTransparency = 1
            Section1.Size = UDim2.new(0, 272, 0, 20)

            SectionTitle.Name = "SectionTitle"
            SectionTitle.Parent = Section1
            SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionTitle.BackgroundTransparency = 1
            SectionTitle.Position = UDim2.new(0, 3, 0, 0)
            SectionTitle.Size = UDim2.new(0, 268, 0, 19)
            SectionTitle.Font = Enum.Font.GothamMedium
            SectionTitle.Text = SectionText
            SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            SectionTitle.TextSize = 15
            SectionTitle.TextWrapped = true
            SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

            Inside.Name = "Inside"
            Inside.Parent = Section1
            Inside.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Inside.BackgroundTransparency = 1
            Inside.Position = UDim2.new(0, 0, 0, 22)
            Inside.Size = UDim2.new(1, 0, 0, 1)

            InsideListLayout.Name = "InsideListLayout"
            InsideListLayout.Parent = Inside
            InsideListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            InsideListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            InsideListLayout.Padding = UDim.new(0, 5)

            local Things = {}

            function Things:AddToggle(ToggleText,ToggleSettings,Callback)
                ToggleSettings = ToggleSettings or {}
                ToggleText = ToggleText or "Toggle"
                ToggleSettings.StarterValue = ToggleSettings.StarterValue or false
                Callback = Callback or function() end

                Toggled = ToggleSettings.StarterValue

                local Toggle = Instance.new("Frame")
                local ToggleCorner = Instance.new("UICorner")
                local ToggleTitle = Instance.new("TextLabel")
                local ToggleTitleCorner = Instance.new("UICorner")
                local Toggler = Instance.new("ImageButton")
                local UICorner = Instance.new("UICorner")

                Toggle.Name = "Toggle"
                Toggle.Parent = Inside
                Toggle.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                Toggle.Size = UDim2.new(0, 270, 0, 32)

                ToggleCorner.CornerRadius = UDim.new(0, 5)
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.Parent = Toggle

                ToggleTitle.Name = "ToggleTitle"
                ToggleTitle.Parent = Toggle
                ToggleTitle.AnchorPoint = Vector2.new(0, 0.5)
                ToggleTitle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                ToggleTitle.BackgroundTransparency = 1
                ToggleTitle.BorderSizePixel = 0
                ToggleTitle.Position = UDim2.new(0.02, 0, 0.5, 0)
                ToggleTitle.Size = UDim2.new(0, 199, 0, 23)
                ToggleTitle.Font = Enum.Font.GothamMedium
                ToggleTitle.Text = ToggleText
                ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTitle.TextSize = 17
                ToggleTitle.TextWrapped = true
                ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

                ToggleTitleCorner.CornerRadius = UDim.new(0, 5)
                ToggleTitleCorner.Name = "ToggleTitleCorner"
                ToggleTitleCorner.Parent = ToggleTitle

                Toggler.Name = "Toggler"
                Toggler.Parent = Toggle
                Toggler.AnchorPoint = Vector2.new(0.5, 0.5)
                Toggler.Position = UDim2.new(0.938, 0, 0.5, 0)
                Toggler.Size = UDim2.new(0, 25, 0, 25)
                Toggler.AutoButtonColor = false
                Toggler.Image = "rbxassetid://7072706620"

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Toggler

                Toggle.MouseEnter:Connect(function()
                    Tween:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}):Play()
                end)

                Toggle.MouseLeave:Connect(function()
                    Tween:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(29, 29, 29)}):Play()
                end)

                if ToggleSettings.StarterValue then
                    Toggler.BackgroundColor3 = WindowTable.MainColor
                    Toggler.ImageTransparency = 0
                elseif ToggleSettings.StarterValue == false then
                    Toggler.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
                    Toggler.ImageTransparency = 0.97
                end

                Toggler.MouseButton1Down:Connect(function()
                    Toggled = not Toggled
                    pcall(task.spawn, Callback, Toggled)
                    
                    if Toggled == false then
                        Tween:Create(Toggler, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(38, 38, 38),ImageTransparency = 0.97}):Play()
                    elseif Toggled == true then
                        Tween:Create(Toggler, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = WindowTable.MainColor,ImageTransparency = 0}):Play()
                    end
                end)

                UpdateSection()

                local ToggleFunctions = {}

                function ToggleFunctions:Remove()
                    Toggle:Destroy()
                    UpdateSection()
                end 

                function ToggleFunctions:UpdateText(NewText)
                    ToggleTitle.Text = NewText
                end

                function ToggleFunctions:SetValue(Value)
                    Toggled = Value
                    if Value == false then
                        Tween:Create(Toggler, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(38, 38, 38),ImageTransparency = 0.97}):Play()
                    elseif Value == true then
                        Tween:Create(Toggler, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = WindowTable.MainColor,ImageTransparency = 0}):Play()
                    end
                    pcall(task.spawn, Callback, Toggled)
                end

                function ToggleFunctions:ToggleValue()
                    Toggled = not Toggled
                    if Toggled == false then
                        Tween:Create(Toggler, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(38, 38, 38),ImageTransparency = 0.97}):Play()
                    elseif Toggled == true then
                        Tween:Create(Toggler, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = WindowTable.MainColor,ImageTransparency = 0}):Play()
                    end
                    pcall(task.spawn, Callback, Toggled)
                end

                return ToggleFunctions

            end

            function UpdateTables()
                for i,v in pairs(TabsList:GetChildren()) do
                    for i,n in pairs(v:GetChildren()) do
                        if n.Name == "Section" then
                            for i,w in pairs(n.Inside:GetChildren()) do
                                if w.Name == "Table" then
                                    Size = 27
                                    for i,t in pairs(w.Scrolling:GetChildren()) do
                                        if t.Name == "TablePart" then
                                            Size = Size + 15
                                        end
                                    end
                                    w.Size = UDim2.new(0, 270, 0, Size)
                                end
                            end
                        end
                    end
                end 
            end

            function Things:AddTable(TableText,TablesList)
                TableText = TableText or "Table"
                TablesList = TablesList or {}
                
                local Table = Instance.new("Frame")
                local TableTitle = Instance.new("TextLabel")
                local BKTCorner = Instance.new("UICorner")
                local TableCorner = Instance.new("UICorner")
                local Scrolling = Instance.new("ScrollingFrame")
                local List = Instance.new("UIListLayout")

                Table.Name = "Table"
                Table.Parent = Inside
                Table.BackgroundColor3 = Color3.fromRGB(29, 29, 29)

                TableCorner.CornerRadius = UDim.new(0, 5)
                TableCorner.Name = "TableCorner"
                TableCorner.Parent = Table

                Scrolling.Name = "Scrolling"
                Scrolling.Parent = Table
                Scrolling.Active = true
                Scrolling.AnchorPoint = Vector2.new(0.5, 0)
                Scrolling.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                Scrolling.BackgroundTransparency = 1.000
                Scrolling.BorderSizePixel = 0
                Scrolling.Position = UDim2.new(0, 135, 0, 24)
                Scrolling.Size = UDim2.new(0.959259272, 0, 1, 0)
                Scrolling.CanvasSize = UDim2.new(0, 0, 0, 0)

                List.Name = "List"
                List.Parent = Scrolling
                List.HorizontalAlignment = Enum.HorizontalAlignment.Center
                List.SortOrder = Enum.SortOrder.LayoutOrder
                List.Padding = UDim.new(0, 2)

                TableTitle.Name = "TableTitle"
                TableTitle.Parent = Table
                TableTitle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                TableTitle.BackgroundTransparency = 1
                TableTitle.BorderSizePixel = 0
                TableTitle.Position = UDim2.new(0.02, 0, 0, 12)
                TableTitle.Font = Enum.Font.GothamMedium
                TableTitle.Text = TableText
                TableTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                TableTitle.TextSize = 17
                TableTitle.TextXAlignment = Enum.TextXAlignment.Left

                BKTCorner.CornerRadius = UDim.new(0, 5)
                BKTCorner.Name = "BKTCorner"
                BKTCorner.Parent = TableTitle

                for i,v in next,TablesList do

                    local TablePart = Instance.new("TextLabel")

                    TablePart.Name = "TablePart"
                    TablePart.Parent = Scrolling
                    TablePart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TablePart.BackgroundTransparency = 1
                    TablePart.Size = UDim2.new(1, 0, 0, 13)
                    TablePart.Font = Enum.Font.Gotham
                    TablePart.Text = v
                    TablePart.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TablePart.TextSize = 14
                    TablePart.TextXAlignment = Enum.TextXAlignment.Left

                    UpdateTables()
                end

                UpdateTables()

            end

            function Things:AddBox(BoxText,BoxSettings,Callback)
                BoxSettings = BoxSettings or {}
                BoxSettings.StarterText = BoxSettings.StarterText or "Hello"
                BoxSettings.PlaceholderText = BoxSettings.PlaceholderText or "Placeholder"
                BoxText = BoxText or "TextBox"
                Callback = Callback or function() end

                local TextBox = Instance.new("Frame")
                local TBCorner = Instance.new("UICorner")
                local TBTitle = Instance.new("TextLabel")
                local TBTitleCorner = Instance.new("UICorner")
                local TextBoxText = Instance.new("TextBox")
                local TBBCorner = Instance.new("UICorner")

                TextBox.Name = "TextBox"
                TextBox.Parent = Inside
                TextBox.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                TextBox.Size = UDim2.new(0, 270, 0, 23)

                TBCorner.CornerRadius = UDim.new(0, 5)
                TBCorner.Name = "TBCorner"
                TBCorner.Parent = TextBox

                TBTitle.Name = "TBTitle"
                TBTitle.Parent = TextBox
                TBTitle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                TBTitle.BackgroundTransparency = 1
                TBTitle.BorderSizePixel = 0
                TBTitle.Position = UDim2.new(0.02, 0, 0, 0)
                TBTitle.Size = UDim2.new(0, 136, 0, 23)
                TBTitle.Font = Enum.Font.GothamMedium
                TBTitle.Text = BoxText
                TBTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                TBTitle.TextSize = 17
                TBTitle.TextWrapped = true
                TBTitle.TextXAlignment = Enum.TextXAlignment.Left

                TBTitleCorner.CornerRadius = UDim.new(0, 5)
                TBTitleCorner.Name = "TBTitleCorner"
                TBTitleCorner.Parent = TBTitle

                TextBoxText.Name = "TextBoxText"
                TextBoxText.Parent = TextBox
                TextBoxText.AnchorPoint = Vector2.new(1, 0.5)
                TextBoxText.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                TextBoxText.Position = UDim2.new(0.98, 0, 0.5, 0)
                TextBoxText.Size = UDim2.new(0, 95, 0, 17)
                TextBoxText.Font = Enum.Font.Gotham
                TextBoxText.PlaceholderColor3 = Color3.fromRGB(58, 58, 58)
                TextBoxText.PlaceholderText = BoxSettings.PlaceholderText
                TextBoxText.Text = BoxSettings.StarterText
                TextBoxText.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxText.TextSize = 13
                TextBoxText.TextWrapped = true
                TextBoxText.ClearTextOnFocus = BoxSettings.OnFocusClear

                TBBCorner.CornerRadius = UDim.new(0, 5)
                TBBCorner.Name = "TBBCorner"
                TBBCorner.Parent = TextBoxText

                TextBoxText.Focused:Connect(function()
                    Tween:Create(TextBoxText, TweenInfo.new(0.17, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 110, 0, 17),BackgroundColor3 = Color3.fromRGB(36, 36, 36)}):Play()
                end)

                TextBoxText.FocusLost:Connect(function()
                    pcall(task.spawn, Callback, TextBoxText.Text)
                    Tween:Create(TextBoxText, TweenInfo.new(0.14, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0, 95, 0, 17),BackgroundColor3 = Color3.fromRGB(33, 33, 33)}):Play()
                end)

                UpdateSection()
                
                local TextBoxFunctions = {}

                function TextBoxFunctions:Remove()
                    TextBox:Destroy()
                    UpdateSection()
                end 

                function TextBoxFunctions:UpdateText(NewText)
                    TBTitle.Text = NewText
                end

                return TextBoxFunctions

            end

            function Things:AddDropdown(DropdownText,DropdownTable,Callback)
                DropdownText = DropdownText or "Dropdown"
                Callback = Callback or function() end
                DropdownTable = DropdownTable or {}
                Opened = false
                Cooldown = false

                local Dropdown = Instance.new("Frame")
                local DropdownCorner = Instance.new("UICorner")
                local Sitle = Instance.new("TextLabel")
                local BKTCorner = Instance.new("UICorner")
                local Selected = Instance.new("TextButton")
                local KBTCorner = Instance.new("UICorner")
                local Scrolling = Instance.new("ScrollingFrame")
                local UIListLayout = Instance.new("UIListLayout")

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = Inside
                Dropdown.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                Dropdown.Size = UDim2.new(0, 270, 0, 26)

                DropdownCorner.CornerRadius = UDim.new(0, 5)
                DropdownCorner.Name = "DropdownCorner"
                DropdownCorner.Parent = Dropdown

                Sitle.Name = "Sitle"
                Sitle.Parent = Dropdown
                Sitle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                Sitle.BackgroundTransparency = 1
                Sitle.BorderSizePixel = 0
                Sitle.Position = UDim2.new(0.0199999772, 0, 0, 0)
                Sitle.Size = UDim2.new(0, 166, 0, 25)
                Sitle.Font = Enum.Font.GothamMedium
                Sitle.Text = DropdownText
                Sitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                Sitle.TextSize = 16
                Sitle.TextXAlignment = Enum.TextXAlignment.Left
                Sitle.TextWrapped = true

                BKTCorner.CornerRadius = UDim.new(0, 5)
                BKTCorner.Name = "BKTCorner"
                BKTCorner.Parent = Sitle

                Selected.Name = "Selected"
                Selected.Parent = Dropdown
                Selected.AnchorPoint = Vector2.new(1, 0.5)
                Selected.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Selected.Position = UDim2.new(0, 266, 0, 13)
                Selected.Size = UDim2.new(0, 95, 0, 17)
                Selected.AutoButtonColor = false
                Selected.Font = Enum.Font.GothamMedium
                Selected.Text = "Selected"
                Selected.TextColor3 = Color3.fromRGB(255, 255, 255)
                Selected.TextSize = 14
                Selected.TextWrapped = true

                KBTCorner.CornerRadius = UDim.new(0, 5)
                KBTCorner.Name = "KBTCorner"
                KBTCorner.Parent = Selected

                Scrolling.Name = "Scrolling"
                Scrolling.Parent = Dropdown
                Scrolling.Active = true
                Scrolling.AnchorPoint = Vector2.new(0.5, 0.5)
                Scrolling.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                Scrolling.BorderSizePixel = 0
                Scrolling.Position = UDim2.new(0.5, 0, 0.6, 0)
                Scrolling.Size = UDim2.new(0, 259, 0, 94)
                Scrolling.Visible = false
                Scrolling.CanvasSize = UDim2.new(0, 0, 0, 0)
                Scrolling.AutomaticCanvasSize = Enum.AutomaticSize.Y
                Scrolling.ScrollBarThickness = 0

                UIListLayout.Parent = Scrolling
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 3)

                Selected.MouseButton1Click:Connect(function()
                    if Cooldown == false then
                        Opened = not Opened
                        if Opened then
                            Cooldown = true
                            Tween:Create(Dropdown, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 270, 0, 130)}):Play()
                            Tween:Create(Section1, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 272, 0, Section1.Size.Y.Offset+104)}):Play()
                            wait(0.15)
                            Scrolling.Visible = true
                            Cooldown = false
                        else
                            Cooldown = true
                            Scrolling.Visible = false
                            Tween:Create(Section1, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 272, 0, Section1.Size.Y.Offset-104)}):Play()
                            Tween:Create(Dropdown, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 270, 0, 26)}):Play()
                            wait(0.18)
                            Cooldown = false
                        end
                    end
                end)

                Selected.MouseEnter:Connect(function()
                    Tween:Create(Selected, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
                end)

                Selected.MouseLeave:Connect(function()
                    Tween:Create(Selected, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
                end)
                
                for i,v in next,DropdownTable do
                    local Button = Instance.new("TextButton")
                    local ButtonCorner = Instance.new("UICorner")

                    Button.Name = "Button"
                    Button.Parent = Scrolling
                    Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    Button.Size = UDim2.new(1, 0, 0, 23)
                    Button.AutoButtonColor = false
                    Button.Font = Enum.Font.Gotham
                    Button.Text = v
                    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Button.TextSize = 19

                    ButtonCorner.CornerRadius = UDim.new(0, 5)
                    ButtonCorner.Name = "ButtonCorner"
                    ButtonCorner.Parent = Button

                    Button.MouseEnter:Connect(function()
                        Tween:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(39, 39, 39)}):Play()
                    end)
    
                    Button.MouseLeave:Connect(function()
                        Tween:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
                    end)

                    Button.MouseButton1Down:Connect(function()
                        Scrolling.Visible = false
                        Selected.Text = v
                        pcall(task.spawn, Callback, v)
                        Opened = false
                        wait(0.05)
                        Tween:Create(Section1, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 272, 0, Section1.Size.Y.Offset-104)}):Play()
                        Tween:Create(Dropdown, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 270, 0, 26)}):Play()
                        wait(0.16)
                    end)

                    local DropdownButtonFunctions = {}

                    function DropdownButtonFunctions:Remove()
                        Button:Destroy()
                    end
                end
                
                UpdateSection()

                local DropdownFunctions = {}

                function DropdownFunctions:Remove()
                    Dropdown:Destroy()
                    UpdateSection()
                end 

                return DropdownFunctions

            end

            function Things:AddBind(BindText,BindSettings,Callback)
                BindText = BindText or "KeyBind"
                BindSettings = BindSettings or {}
                Callback = Callback or function() end
                CurrentBind = BindSettings.StarterBind
                
                local KeyBind = Instance.new("Frame")
                local KBCorner = Instance.new("UICorner")
                local KBTitle = Instance.new("TextLabel")
                local BKTCorner = Instance.new("UICorner")
                local KeyBinder = Instance.new("TextButton")
                local KBTCorner = Instance.new("UICorner")

                KeyBind.Name = "KeyBind"
                KeyBind.Parent = Inside
                KeyBind.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                KeyBind.Size = UDim2.new(0, 270, 0, 23)

                KBCorner.CornerRadius = UDim.new(0, 5)
                KBCorner.Name = "KBCorner"
                KBCorner.Parent = KeyBind

                KBTitle.Name = "KBTitle"
                KBTitle.Parent = KeyBind
                KBTitle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                KBTitle.BackgroundTransparency = 1
                KBTitle.BorderSizePixel = 0
                KBTitle.Position = UDim2.new(0.02, 0, 0, 0)
                KBTitle.Size = UDim2.new(0, 199, 0, 23)
                KBTitle.Font = Enum.Font.GothamMedium
                KBTitle.Text = BindText
                KBTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                KBTitle.TextSize = 17
                KBTitle.TextXAlignment = Enum.TextXAlignment.Left

                BKTCorner.CornerRadius = UDim.new(0, 5)
                BKTCorner.Name = "BKTCorner"
                BKTCorner.Parent = KBTitle

                KeyBinder.Name = "KeyBinder"
                KeyBinder.Parent = KeyBind
                KeyBinder.AnchorPoint = Vector2.new(1, 0.5)
                KeyBinder.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                KeyBinder.Position = UDim2.new(0.98, 0, 0.5, 0)
                KeyBinder.Size = UDim2.new(0, 85, 0, 17)
                KeyBinder.AutoButtonColor = false
                KeyBinder.Font = Enum.Font.GothamBold
                KeyBinder.TextColor3 = Color3.fromRGB(255, 255, 255)
                KeyBinder.TextSize = 14

                KBTCorner.CornerRadius = UDim.new(0, 5)
                KBTCorner.Name = "KBTCorner"
                KBTCorner.Parent = KeyBinder
                
                if BindSettings.StarterBind ~= nil then
                    KeyBinder.Text = BindSettings.StarterBind.Name
                else
                    KeyBinder.Text = "None"
                    CurrentBind = nil
                end

                KeyBind.MouseEnter:Connect(function()
                    Tween:Create(KeyBind, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}):Play()
                end)

                KeyBind.MouseLeave:Connect(function()
                    Tween:Create(KeyBind, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(29, 29, 29)}):Play()
                end)

                local StarterBind = game:GetService("UserInputService").InputBegan:Connect(function(Key)
                    if Key.KeyCode == CurrentBind then
                        pcall(task.spawn, Callback)
                        print("Starter Bind")
                    end
                end)

                KeyBinder.MouseButton1Click:Connect(function()
                    KeyBinder.Text = "..."
                    CurrentBind = nil
                    if NewBind ~= nil then
                        NewBind:Disconnect()
                        print("Disconected new bind")
                    end
                    if StarterBind ~= nil then
                        StarterBind:Disconnect()
                        print("Disconected StarterBind")
                    end
                    

                    Keybinding = UIS.InputBegan:Connect(function(input, gameProcessed)
						if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
							CurrentBind = input.KeyCode
                            KeyBinder.Text = input.KeyCode.Name
                            Keybinding:Disconnect()

                            NewBind = UIS.InputBegan:Connect(function(Key)
                                if Key.KeyCode == CurrentBind then
                                    pcall(task.spawn, Callback)
                                    print("NewBind")
                                end
                            end)
                        else
                            KeyBinder.Text = "None"
                            CurrentBind = nil
                            Keybinding:Disconnect()
						end
                    end)
                end)

                UpdateSection()

                local BindFunctions = {}

                function BindFunctions:Remove()
                    KeyBind:Destroy()
                    UpdateSection()
                end 

                function BindFunctions:UpdateText(NewText)
                    KBTitle.Text = NewText
                end

                return BindFunctions

            end

            function Things:AddLabel(LabelText)
                LabelText = LabelText or "Label"

                local Label = Instance.new("TextLabel")
                local LabelCorner = Instance.new("UICorner")

                Label.Name = "Label"
                Label.Parent = Inside
                Label.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                Label.BorderSizePixel = 0
                Label.Size = UDim2.new(0, 270, 0, 23)
                
                Label.Font = Enum.Font.GothamMedium
                Label.TextColor3 = Color3.fromRGB(255, 255, 255)
                Label.TextSize = 19
                Label.Text = LabelText

                LabelCorner.CornerRadius = UDim.new(0, 5)
                LabelCorner.Name = "LabelCorner"
                LabelCorner.Parent = Label

                UpdateSection()
                
                local LabelFunctions = {}

                function LabelFunctions:Remove()
                    Label:Destroy()
                    UpdateSection()
                end 

                function LabelFunctions:UpdateText(NewText)
                    Label.Text = NewText
                end

                return LabelFunctions

            end

            function Things:AddSmallLabel(SmallLabelText)
                SmallLabelText = SmallLabelText or "Small Label"

                local SmallLabel = Instance.new("TextLabel")
                local SmallLabelCorner = Instance.new("UICorner")

                SmallLabel.Name = "SmallLabel"
                SmallLabel.Parent = Inside
                SmallLabel.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                SmallLabel.BorderSizePixel = 0
                SmallLabel.Size = UDim2.new(0, 270, 0, 17)
                SmallLabel.Font = Enum.Font.GothamMedium
                SmallLabel.Text = SmallLabelText
                SmallLabel.TextColor3 = Color3.fromRGB(68, 68, 68)
                SmallLabel.TextSize = 13

                SmallLabelCorner.CornerRadius = UDim.new(0, 5)
                SmallLabelCorner.Name = "SmallLabelCorner"
                SmallLabelCorner.Parent = SmallLabel

                UpdateSection()
                
                local SmallLabelFunctions = {}

                function SmallLabelFunctions:Remove()
                    SmallLabel:Destroy()
                    UpdateSection()
                end 

                function SmallLabelFunctions:UpdateText(NewText)
                    SmallLabel.Text = NewText
                end 


                return SmallLabelFunctions

            end

            function Things:AddSlider(SliderText,SliderSettings,Callback)
                Callback = Callback or function() end
                SliderSettings = SliderSettings or {}
                SliderSettings.Min = SliderSettings.Min or 0
                SliderSettings.Max = SliderSettings.Max or 100
                SliderSettings.Current = SliderSettings.Current or 50
                
                local Slider = Instance.new("Frame")
                local SLCorner = Instance.new("UICorner")
                local SliderTitle = Instance.new("TextLabel")
                local BKTCorner = Instance.new("UICorner")
                local Slide = Instance.new("TextButton")
                local SLIDCorner = Instance.new("UICorner")
                local CurrentSL = Instance.new("Frame")
                local CSLCorner = Instance.new("UICorner")
                local Number = Instance.new("TextBox")

                Slider.Name = "Slider"
                Slider.Parent = Inside
                Slider.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
                Slider.Size = UDim2.new(0, 270, 0, 23)

                SLCorner.CornerRadius = UDim.new(0, 5)
                SLCorner.Name = "SLCorner"
                SLCorner.Parent = Slider

                SliderTitle.Name = "SliderTitle"
                SliderTitle.Parent = Slider
                SliderTitle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                SliderTitle.BackgroundTransparency = 1
                SliderTitle.BorderSizePixel = 0
                SliderTitle.Position = UDim2.new(0.02, 0, 0, 0)
                SliderTitle.Size = UDim2.new(0, 99, 0, 23)
                SliderTitle.Font = Enum.Font.GothamMedium
                SliderTitle.Text = SliderText
                SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                SliderTitle.TextSize = 15
                SliderTitle.TextWrapped = true
                SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

                BKTCorner.CornerRadius = UDim.new(0, 5)
                BKTCorner.Name = "BKTCorner"
                BKTCorner.Parent = SliderTitle

                Slide.Name = "Slide"
                Slide.Parent = Slider
                Slide.AnchorPoint = Vector2.new(0.5, 0.5)
                Slide.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
                Slide.Position = UDim2.new(0.746777654, 0, 0.5, 0)
                Slide.Size = UDim2.new(0, 130, 0, 10)
                Slide.AutoButtonColor = false
                Slide.Font = Enum.Font.SourceSans
                Slide.Text = ""
                Slide.TextColor3 = Color3.fromRGB(0, 0, 0)
                Slide.TextSize = 14
                Slide.TextWrapped = true

                SLIDCorner.CornerRadius = UDim.new(0, 5)
                SLIDCorner.Name = "SLIDCorner"
                SLIDCorner.Parent = Slide

                CurrentSL.Name = "CurrentSL"
                CurrentSL.Parent = Slide
                CurrentSL.BackgroundColor3 = WindowTable.MainColor
                CurrentSL.BorderSizePixel = 0

                CurrentSL.Size = UDim2.new(math.clamp(1 - ((SliderSettings.Max - SliderSettings.Current) / (SliderSettings.Max - SliderSettings.Min)),0, 130),0, 0, 10)
                
                CSLCorner.CornerRadius = UDim.new(0, 5)
                CSLCorner.Name = "CSLCorner"
                CSLCorner.Parent = CurrentSL

                Number.Parent = Slider
                Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Number.BackgroundTransparency = 1
                Number.Position = UDim2.new(0.389999986, 0, 0, 0)
                Number.Size = UDim2.new(0, 30, 1, 0)
                Number.Font = Enum.Font.GothamMedium
                Number.Text = tostring(SliderSettings.Current)
                Number.TextColor3 = Color3.fromRGB(75, 75, 75)
                Number.TextSize = 13
                Number.TextWrapped = true

                Number.FocusLost:Connect(function()
                    SliderSettings.Current = tonumber(Number.Text)
                    if (tostring(SliderSettings.Current):match("^%d+$")) then
                        if SliderSettings.Current >= SliderSettings.Max then
                            SliderSettings.Current = SliderSettings.Max
                            Number.Text = SliderSettings.Max
                        elseif SliderSettings.Min >= SliderSettings.Current then
                            SliderSettings.Current = SliderSettings.Min
                            Number.Text = SliderSettings.Min
                        end
                    else
                        SliderSettings.Current = SliderSettings.Min
                        Number.Text = SliderSettings.Min
                    end
                    Tween:Create(CurrentSL, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(math.clamp(1 - ((SliderSettings.Max - SliderSettings.Current) / (SliderSettings.Max - SliderSettings.Min)),0, 130),0, 0, 10)}):Play()
                    SliderSettings.Current = Number.Text
                    pcall(task.spawn, Callback, SliderSettings.Current)
                end)

                Slider.MouseEnter:Connect(function()
                    Tween:Create(Slider, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(28, 28, 28)}):Play()
                end)

                Slider.MouseLeave:Connect(function()
                    Tween:Create(Slider, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(26, 26, 26)}):Play()
                end)

                --Not by me

                Slide.MouseButton1Down:Connect(function()
                    SliderSettings.Current = math.floor((((tonumber(SliderSettings.Max) - tonumber(SliderSettings.Min)) / 130) * CurrentSL.AbsoluteSize.X) + tonumber(SliderSettings.Min)) or 0
                    if SliderSettings.Current ~= nil then
                        Number.Text = tostring(SliderSettings.Current)
                    end
                    pcall(task.spawn, Callback, SliderSettings.Current)
                    CurrentSL.Size = UDim2.new(0, math.clamp(Mouse.X - CurrentSL.AbsolutePosition.X, 0, 130), 0, 10)
                    moveconnection = Mouse.Move:Connect(function()
                        SliderSettings.Current = math.floor((((tonumber(SliderSettings.Max) - tonumber(SliderSettings.Min)) / 130) * CurrentSL.AbsoluteSize.X) + tonumber(SliderSettings.Min))
                        if SliderSettings.Current ~= nil then
                            Number.Text = tostring(SliderSettings.Current)
                        end
                        pcall(task.spawn, Callback, SliderSettings.Current)
                        CurrentSL.Size = UDim2.new(0, math.clamp(Mouse.X - CurrentSL.AbsolutePosition.X, 0, 130), 0, 10)
                    end)
                    releaseconnection = UIS.InputEnded:Connect(function(OtherMouse)
                        if OtherMouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            SliderSettings.Current = math.floor((((tonumber(SliderSettings.Max) - tonumber(SliderSettings.Min)) / 130) * CurrentSL.AbsoluteSize.X) + tonumber(SliderSettings.Min))
                            if SliderSettings.Current ~= nil then
                                Number.Text = tostring(SliderSettings.Current)
                            end
                            pcall(task.spawn, Callback, SliderSettings.Current)
                            CurrentSL.Size = UDim2.new(0, math.clamp(Mouse.X - CurrentSL.AbsolutePosition.X, 0, 130), 0, 10)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
                
                UpdateSection()

                local SliderFunctions = {}

                function SliderFunctions:Remove()
                    Slider:Destroy()
                    UpdateSection()
                end 

                return SliderFunctions

            end

            function Things:AddButton(ButtonText,Callback)
                ButtonText = ButtonText or "Button"
                Callback = Callback or function() end
                IsDown = nil
                
                local Button = Instance.new("TextButton")
                local ButtonCorner = Instance.new("UICorner")

                Button.Name = "Button"
                Button.Parent = Inside
                Button.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(0, 270, 0, 25)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.GothamMedium
                Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                Button.TextSize = 20
                Button.TextWrapped = true
                Button.Text = ButtonText

                ButtonCorner.CornerRadius = UDim.new(0, 5)
                ButtonCorner.Name = "ButtonCorner"
                ButtonCorner.Parent = Button

                Button.MouseButton1Down:Connect(function()
                    IsDown = true
                    Tween:Create(Button, TweenInfo.new(0.13, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = WindowTable.MainColor}):Play()
                    pcall(task.spawn, Callback)
                end)

                Button.MouseButton1Up:Connect(function()
                    if IsDown then
                        IsDown = not IsDown
                        Tween:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(36, 36, 36)}):Play()
                    end
                end)

                Button.MouseEnter:Connect(function()
                    IsDown = false
                    Tween:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(36, 36, 36)}):Play()
                end)

                Button.MouseLeave:Connect(function()
                    IsDown = false
                    Tween:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(29, 29, 29)}):Play()
                end)

                UpdateSection()
                
                local ButtonFunctions = {}

                function ButtonFunctions:Remove()
                    Button:Destroy()
                    UpdateSection()
                end 

                function ButtonFunctions:UpdateText(NewText)
                    Button.Text = NewText
                end 


                return ButtonFunctions

            end
            
            return Things
            
        end

        return Section

    end

    --SelectPage Function

    function SelectPage(PageName)
        for i,v in pairs(TabsList:GetChildren()) do
            if v.Name ~= PageName.."_Tab" then
                v.Visible = false
            else
                v.Visible = true
            end
        end
        for i,v in pairs(TabsButtonsList:GetChildren()) do
            if v.Name == PageName.."_Button" then
                v.TextColor3 = Color3.fromRGB(255, 255, 255)
                v.BackgroundColor3 = WindowTable.MainColor
            end
        end
    end

    dragToggle = nil
    dragInput = nil
    dragStart = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(.04), {Position = Position}):Play()
    end

    MainFrame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragToggle = true
            dragStart = input.Position
            startPos = MainFrame.Position
            input.Changed:Connect(function()
                if (input.UserInputState == Enum.UserInputState.End) then
                    dragToggle = false
                end
            end)
        end
    end)

    MainFrame.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end)

    return Pages

end


function Library:Notify(NotifyTable)

    NotifyTable.NotifyTitle = NotifyTable.NotifyTitle or "Notify"
    NotifyTable.NotifyText = NotifyTable.NotifyText or "Text"
    NotifyTable.Duration = NotifyTable.Duration or 1.5

    local NotifyColor

    if NotifyTable.NotifyType == "Error" then
        NotifyColor = Color3.new(1,0,0)
    elseif NotifyTable.NotifyType == "Warn" then
        NotifyColor = Color3.new(0.9,0.9,0)
    elseif NotifyTable.NotifyType == "Success" then
        NotifyColor = Color3.new(0,0.95,0)
    else
        NotifyColor = Color3.new(1,1,1)
    end

    if not game.CoreGui:FindFirstChild("Notifications") then

        --Instance Notification Holder

        local Notifications = Instance.new("ScreenGui")
        local Holder = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")

        Notifications.Name = "Notifications"
        Notifications.Parent = game.CoreGui

        Holder.Name = "Holder"
        Holder.Parent = Notifications
        Holder.AnchorPoint = Vector2.new(0, 1)
        Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Holder.BackgroundTransparency = 1.000
        Holder.Position = UDim2.new(0, 4, 1, -4)
        Holder.Size = UDim2.new(0, 100, 0, 6)

        UIListLayout.Parent = Holder
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
        UIListLayout.Padding = UDim.new(0, 5)

    end

    local Notif = Instance.new("Frame")
    local NotifCorner = Instance.new("UICorner")
    local NotifProgress = Instance.new("Frame")
    local NCorner = Instance.new("UICorner")
    local Progresss = Instance.new("Frame")
    local ProgresssCorner = Instance.new("UICorner")
    local NotifTitle = Instance.new("TextLabel")
    local NotifText = Instance.new("TextLabel")
    local Left = Instance.new("Frame")
    local LeftCorner = Instance.new("UICorner")

    Notif.Name = "Notif"
    Notif.Parent = game.CoreGui.Notifications.Holder
    Notif.AnchorPoint = Vector2.new(0, 1)
    Notif.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Notif.Position = UDim2.new(0, 4, 1, -3)
    Notif.Size = UDim2.new(0, 252, 0, 45)
    Notif.BackgroundTransparency = 1

    NotifCorner.CornerRadius = UDim.new(0, 3)
    NotifCorner.Name = "NotifCorner"
    NotifCorner.Parent = Notif

    NotifProgress.Name = "NotifProgress"
    NotifProgress.Parent = Notif
    NotifProgress.AnchorPoint = Vector2.new(0.5, 0.5)
    NotifProgress.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    NotifProgress.Position = UDim2.new(0.5070436, 0, 0.86, 0)
    NotifProgress.Size = UDim2.new(0, 239, 0, 4)
    NotifProgress.BackgroundTransparency = 1

    NCorner.CornerRadius = UDim.new(0, 555)
    NCorner.Name = "NCorner"
    NCorner.Parent = NotifProgress

    Progresss.Name = "Progresss"
    Progresss.Parent = NotifProgress
    Progresss.AnchorPoint = Vector2.new(0, 0.5)
    Progresss.BackgroundColor3 = NotifyColor
    Progresss.Position = UDim2.new(0, 0, 0.5, 0)
    Progresss.Size = UDim2.new(0, 0, 0, 4)
    Progresss.BorderSizePixel = 0

    ProgresssCorner.CornerRadius = UDim.new(0, 555)
    ProgresssCorner.Name = "ProgresssCorner"
    ProgresssCorner.Parent = Progresss

    NotifTitle.Name = "NotifTitle"
    NotifTitle.Parent = Notif
    NotifTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotifTitle.BackgroundTransparency = 1.000
    NotifTitle.Position = UDim2.new(0, 8, 0, 2)
    NotifTitle.Size = UDim2.new(0, 196, 0, 16)
    NotifTitle.Font = Enum.Font.GothamMedium
    NotifTitle.Text = NotifyTable.NotifyTitle
    NotifTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotifTitle.TextScaled = true
    NotifTitle.TextSize = 20.000
    NotifTitle.TextWrapped = true
    NotifTitle.TextTransparency = 1
    NotifTitle.TextXAlignment = Enum.TextXAlignment.Left

    NotifText.Name = "NotifText"
    NotifText.Parent = Notif
    NotifText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotifText.BackgroundTransparency = 1.000
    NotifText.Position = UDim2.new(0, 8, 0, 19)
    NotifText.Size = UDim2.new(0, 240, 0, 14)
    NotifText.Font = Enum.Font.Gotham
    NotifText.Text = NotifyTable.NotifyText
    NotifText.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotifText.TextSize = 13.000
    NotifText.TextWrapped = true
    NotifText.TextTransparency = 1
    NotifText.TextXAlignment = Enum.TextXAlignment.Left

    Left.Name = "Left"
    Left.Parent = Notif
    Left.BackgroundColor3 = NotifyColor
    Left.Position = UDim2.new(0, -30, 0, 0)
    Left.Size = UDim2.new(0, 3, 0, 45)

    LeftCorner.CornerRadius = UDim.new(0, 6)
    LeftCorner.Name = "LeftCorner"
    LeftCorner.Parent = Left

        Tween:Create(Left, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -1, 0, 0)}):Play()
        task.wait(0.19)
        Tween:Create(Notif, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
        task.wait(0.15)
        Tween:Create(NotifTitle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
        Tween:Create(NotifText, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
        Tween:Create(NotifProgress, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
        Tween:Create(Progresss, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
        task.wait(0.22)
        Tween:Create(Progresss, TweenInfo.new(NotifyTable.Duration, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(1, 0, 0, 4)}):Play()
        task.wait(NotifyTable.Duration)
        Tween:Create(Progresss, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 4)}):Play()
        task.wait(0.07)
        Tween:Create(NotifTitle, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
        Tween:Create(NotifText, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
        Tween:Create(NotifProgress, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
        Tween:Create(Progresss, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
        task.wait(0.1)
        Tween:Create(Notif, TweenInfo.new(0.09, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
        task.wait(0.09)
        Tween:Create(Left, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -30, 0, 0)}):Play()
        task.wait(0.1)
        Notif:Destroy()

end

return Library
