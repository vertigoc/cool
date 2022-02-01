local Lib = {}

local Themes = {
    DarkMode = {
        ["Background"] = Color3.new(0.137254, 0.137254, 0.137254),
        ["TextColor"] = Color3.new(1,1,1),
        ["ElementColor"] = Color3.new(0.196078, 0.196078, 0.196078),
        ["IconColor"] = Color3.new(1,1,1),
        ["ActiveColor"] = Color3.new(0.266667, 0.458824, 0.807843),
        ["TitleColor"] = Color3.new(1,1,1),
        ["BorderColor"] = Color3.new(1,1,1)
    },
    LightMode = {
        ["Background"] = Color3.new(1,1,1),
        ["TitleColor"] = Color3.new(0,0,0),
        ["TextColor"] = Color3.new(1,1,1),
        ["ElementColor"] = Color3.new(0.623529, 0.623529, 0.623529),
        ["IconColor"] = Color3.new(1,1,1),
        ["ActiveColor"] = Color3.new(0.266667, 0.458824, 0.807843),
        ["BorderColor"] = Color3.new(0.623529, 0.623529, 0.623529)
    }
}

local input = game:GetService("UserInputService")

function Lib:DraggingEnabled(frame, parent)
        
    parent = parent or frame

    local dragging = false
    local dragInput, mousePos, framePos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = parent.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    input.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end)
end

function Lib:CreateWindow(Name, Theme)
    Name = Name or "Un Named"
    if Theme == "DarkMode" then
        Theme = Themes.DarkMode
    elseif Theme == "LightMode" then
        Theme = Themes.LightMode
    end
    Theme = Theme or Themes.DarkMode

    local namescreen = "VertigosLib"
    if game:GetService("CoreGui"):FindFirstChild(namescreen) then
        game:GetService("CoreGui")[namescreen]:Destroy()
    end

    local screenGui = Instance.new("ScreenGui",game:GetService("CoreGui"))
    local Instances = {
        ["UIListLayout_1"] = Instance.new("UIListLayout"),
        ["Frame_1"] = Instance.new("Frame"),
        ["Folder_1"] = Instance.new("Folder"),
        ["UICorner_1"] = Instance.new("UICorner"),
        ["Frame_3"] = Instance.new("Frame"),
        ["TextLabel_1"] = Instance.new("TextLabel"),
        ["Frame_2"] = Instance.new("Frame"),
        ["ScrollingFrame_2"] = Instance.new("ScrollingFrame"),
        ["Frame_4"] = Instance.new("Frame")
    }

    Lib:DraggingEnabled(Instances.Frame_2 ,Instances.Frame_1)

    screenGui.Name = "VertigosLib"

    local toggled = true

    input.InputBegan:Connect(function(keycode)
        if keycode.KeyCode == Enum.KeyCode.Insert then
            if toggled == true then
                toggled = false
                screenGui.Enabled = false
                else
                    toggled = true
                    screenGui.Enabled = true
            end
        end
    end)

    Instances.Frame_1.Parent = screenGui
    Instances.Frame_1.BackgroundColor3 = Theme.Background
    Instances.Frame_1.BorderSizePixel = 0
    Instances.Frame_1.Position = UDim2.new(0.29411765933037, 0, 0.25237190723419, 0)
    Instances.Frame_1.Size = UDim2.new(0, 408, 0, 283)
    Instances.Frame_1.Name = 'Main'

    Instances.UICorner_1.Parent = Instances.Frame_1
    Instances.UICorner_1.CornerRadius = UDim.new(0, 4)

    Instances.Frame_2.Parent = Instances.Frame_1
    Instances.Frame_2.BackgroundColor3 = Theme.Background
    Instances.Frame_2.BorderSizePixel = 0
    Instances.Frame_2.Position = UDim2.new(0.0064338147640228, 0, 0.02026940882206, 0)
    Instances.Frame_2.Size = UDim2.new(0, 401, 0, 32)
    Instances.Frame_2.Name = 'TopMenu'

    Instances.TextLabel_1.Parent = Instances.Frame_2
    Instances.TextLabel_1.Font = Enum.Font.SourceSans
    Instances.TextLabel_1.Text = Name
    Instances.TextLabel_1.TextColor3 = Theme.TitleColor
    Instances.TextLabel_1.TextSize = 20
    Instances.TextLabel_1.TextWrapped = true
    Instances.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
    Instances.TextLabel_1.BackgroundColor3 = Theme.TitleColor
    Instances.TextLabel_1.BackgroundTransparency = 1
    Instances.TextLabel_1.BorderSizePixel = 0
    Instances.TextLabel_1.Position = UDim2.new(0.022443890571594, 0, 0, 0)
    Instances.TextLabel_1.Size = UDim2.new(0, 81, 0, 32)
    Instances.TextLabel_1.Name = 'Title'
    Instances.TextLabel_1.TextScaled = true

    Instances.ScrollingFrame_2.Parent = Instances.Frame_2
    Instances.ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)
    Instances.ScrollingFrame_2.ScrollBarImageColor3 = Color3.new(0, 0, 0)
    Instances.ScrollingFrame_2.ScrollBarThickness = 0
    Instances.ScrollingFrame_2.Active = true
    Instances.ScrollingFrame_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.ScrollingFrame_2.BackgroundTransparency = 1
    Instances.ScrollingFrame_2.BorderSizePixel = 0
    Instances.ScrollingFrame_2.Position = UDim2.new(0.22702200710773, 0, 0, 0)
    Instances.ScrollingFrame_2.Size = UDim2.new(0.77499997615814, 0, 0.89899998903275, 0)
    Instances.ScrollingFrame_2.Name = 'ScrollInTop'

    Instances.UIListLayout_1.Parent = Instances.ScrollingFrame_2
    Instances.UIListLayout_1.Padding = UDim.new(0, 5)
    Instances.UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
    Instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
    Instances.UIListLayout_1.Name = 'Sort'

    Instances.Frame_3.Parent = Instances.Frame_1
    Instances.Frame_3.BackgroundColor3 = Theme.BorderColor
    Instances.Frame_3.BorderSizePixel = 0
    Instances.Frame_3.Position = UDim2.new(0, 0, 0.1342756152153, 0)
    Instances.Frame_3.Selectable = true
    Instances.Frame_3.Size = UDim2.new(0, 408, 0, 2)
    Instances.Frame_3.Name = 'border'

    Instances.Frame_4.Parent = Instances.Frame_1
    Instances.Frame_4.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.Frame_4.BackgroundTransparency = 1
    Instances.Frame_4.Position = UDim2.new(0, 0, 0.14134275913239, 0)
    Instances.Frame_4.Size = UDim2.new(0, 408, 0, 234)
    Instances.Frame_4.Name = 'PageHolder'

    Instances.Folder_1.Parent = Instances.Frame_4
    Instances.Folder_1.Name = 'Pages'

    local function UpdateSizeButtons()
        local cS = Instances.UIListLayout_1.AbsoluteContentSize

        game.TweenService:Create(Instances.ScrollingFrame_2, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
        }):Play()
    end
    UpdateSizeButtons()

    local Tabs = {}
    local first = true

    function Tabs:CreateTab(Name)
        local Name = Name or "Un-named"
        
        local TabInstances = {
            ["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
            ["TextButton_1"] = Instance.new("TextButton"),
            ["UIListLayout_1"] = Instance.new("UIListLayout"),
            ["UICorner_2"] = Instance.new("UICorner")
        }

        --Took From Kavo
        local function UpdateSize()
            local cS = TabInstances.UIListLayout_1.AbsoluteContentSize

            game.TweenService:Create(TabInstances.ScrollingFrame_1, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
            }):Play()
        end
        

        TabInstances.ScrollingFrame_1.Parent = Instances.Folder_1
        TabInstances.ScrollingFrame_1.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabInstances.ScrollingFrame_1.ScrollBarImageColor3 = Color3.new(0, 0, 0)
        TabInstances.ScrollingFrame_1.ScrollBarThickness = 0
        TabInstances.ScrollingFrame_1.Active = true
        TabInstances.ScrollingFrame_1.BackgroundColor3 = Theme.Background
        TabInstances.ScrollingFrame_1.BorderSizePixel = 0
        TabInstances.ScrollingFrame_1.Position = UDim2.new(0.018688725307584, 0, 0.02620087377727, 0)
        TabInstances.ScrollingFrame_1.Size = UDim2.new(0, 395, 0, 230)
        TabInstances.ScrollingFrame_1.Name = Name

        TabInstances.UIListLayout_1.Parent = TabInstances.ScrollingFrame_1
        TabInstances.UIListLayout_1.Padding = UDim.new(0, 4)
        TabInstances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
        TabInstances.UIListLayout_1.Name = 'PageSort'

        TabInstances.TextButton_1.Parent = Instances.ScrollingFrame_2
        TabInstances.TextButton_1.Font = Enum.Font.SourceSans
        TabInstances.TextButton_1.Text = Name
        TabInstances.TextButton_1.TextColor3 = Theme.TextColor
        TabInstances.TextButton_1.TextSize = 17
        TabInstances.TextButton_1.TextStrokeColor3 = Color3.new(0.137255, 0.137255, 0.137255)
        TabInstances.TextButton_1.TextWrapped = true
        TabInstances.TextButton_1.BackgroundColor3 = Theme.ActiveColor
        TabInstances.TextButton_1.BorderSizePixel = 0
        TabInstances.TextButton_1.Size = UDim2.new(0, 85, 0, 28)
        TabInstances.TextButton_1.Name = Name

        TabInstances.UICorner_2.Parent = TabInstances.TextButton_1
        TabInstances.UICorner_2.CornerRadius = UDim.new(0, 3)

        UpdateSizeButtons()
        --Took from kavo cus idk how todo tabs well
        if first then
            first = false
            TabInstances.ScrollingFrame_1.Visible = true
            TabInstances.TextButton_1.BackgroundTransparency = 0
            TabInstances.TextButton_1.TextColor3 = Theme.TextColor
            UpdateSize()
        else
            TabInstances.ScrollingFrame_1.Visible = false
            TabInstances.TextButton_1.BackgroundTransparency = 1
            TabInstances.TextButton_1.TextColor3 = Theme.ActiveColor
        end

        UpdateSize()
        TabInstances.ScrollingFrame_1.ChildAdded:Connect(UpdateSize)
        TabInstances.ScrollingFrame_1.ChildRemoved:Connect(UpdateSize)

        TabInstances.TextButton_1.MouseButton1Down:Connect(function()
            UpdateSizeButtons()
            UpdateSize()
            for i,v in next, Instances.Folder_1:GetChildren() do
                v.Visible = false
            end
            for i,v in next, Instances.ScrollingFrame_2:GetChildren() do
                if v.ClassName == "TextButton" then
                    v.BackgroundTransparency = 1
                    v.TextColor3 = Theme.ActiveColor
                end
            end
            TabInstances.ScrollingFrame_1.Visible = true
            TabInstances.TextButton_1.BackgroundTransparency = 0
            TabInstances.TextButton_1.TextColor3 = Theme.TextColor
        end)

        local InsideTabs = {}

        function InsideTabs:CreateLabel(Text)
            UpdateSize()
            local Text = Text or "Label"
            local LabelInstances = {
                ["TextLabel_2"] = Instance.new("TextLabel"),
                ["UICorner_3"] = Instance.new("UICorner")
            }

            LabelInstances.TextLabel_2.Parent = TabInstances.ScrollingFrame_1
            LabelInstances.TextLabel_2.Font = Enum.Font.SourceSans
            LabelInstances.TextLabel_2.Text = "  "..Text
            LabelInstances.TextLabel_2.TextColor3 = Theme.TextColor
            LabelInstances.TextLabel_2.TextSize = 19
            LabelInstances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            LabelInstances.TextLabel_2.BackgroundColor3 = Theme.ElementColor
            LabelInstances.TextLabel_2.BorderSizePixel = 0
            LabelInstances.TextLabel_2.Size = UDim2.new(0, 388, 0, 35)
            LabelInstances.TextLabel_2.Name = 'Label'   
            
            LabelInstances.UICorner_3.Parent = LabelInstances.TextLabel_2
            LabelInstances.UICorner_3.CornerRadius = UDim.new(0, 3)

            UpdateSize()
        end
        function InsideTabs:CreateButton(Text, ButtonText, Callback)
            UpdateSize()
            Text = Text or "Button"
            Callback = Callback or function () end

            local ButtonInstances = {
                ["UICorner_3"] = Instance.new("UICorner"),
                ["TextButton_2"] = Instance.new("TextButton"),
                ["Frame_5"] = Instance.new("Frame"),
                ["UICorner_4"] = Instance.new("UICorner"),
                ["ImageButton_1"] = Instance.new("ImageButton"),
                ["TextLabel_2"] = Instance.new("TextLabel"),
            }
            
            ButtonInstances.Frame_5.Parent = TabInstances.ScrollingFrame_1
            ButtonInstances.Frame_5.BackgroundColor3 = Theme.ElementColor
            ButtonInstances.Frame_5.Position = UDim2.new(0.010204081423581, 0, 0, 0)
            ButtonInstances.Frame_5.Size = UDim2.new(0, 388, 0, 35)
            ButtonInstances.Frame_5.Name = 'ButtonFrame'
            
            ButtonInstances.UICorner_3.Parent = ButtonInstances.Frame_5
            ButtonInstances.UICorner_3.CornerRadius = UDim.new(0, 3)
            
            ButtonInstances.ImageButton_1.Parent = ButtonInstances.Frame_5
            ButtonInstances.ImageButton_1.Image = 'rbxassetid://3926305904'
            ButtonInstances.ImageButton_1.ImageRectOffset = Vector2.new(84, 204)
            ButtonInstances.ImageButton_1.ImageRectSize = Vector2.new(36, 36)
            ButtonInstances.ImageButton_1.BackgroundTransparency = 1
            ButtonInstances.ImageButton_1.LayoutOrder = 8
            ButtonInstances.ImageButton_1.Position = UDim2.new(0, 1, 0.12899999320507, 0)
            ButtonInstances.ImageButton_1.Size = UDim2.new(0, 25, 0, 25)
            ButtonInstances.ImageButton_1.ZIndex = 2
            ButtonInstances.ImageButton_1.Name = 'ButtonIcon'
            ButtonInstances.ImageButton_1.ImageColor3 = Theme.IconColor
            
            ButtonInstances.TextLabel_2.Parent = ButtonInstances.Frame_5
            ButtonInstances.TextLabel_2.Font = Enum.Font.SourceSans
            ButtonInstances.TextLabel_2.Text = " "..Text
            ButtonInstances.TextLabel_2.TextColor3 = Theme.TextColor
            ButtonInstances.TextLabel_2.TextSize = 19
            ButtonInstances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            ButtonInstances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
            ButtonInstances.TextLabel_2.BackgroundTransparency = 1
            ButtonInstances.TextLabel_2.Position = UDim2.new(0.069000013172626, 0, 0.14300014078617, 0)
            ButtonInstances.TextLabel_2.Size = UDim2.new(0, 243, 0, 25)
            ButtonInstances.TextLabel_2.Name = 'ButtonText'
            
            ButtonInstances.TextButton_2.Parent = ButtonInstances.Frame_5
            ButtonInstances.TextButton_2.Font = Enum.Font.SourceSans
            ButtonInstances.TextButton_2.Text = ButtonText
            ButtonInstances.TextButton_2.TextColor3 = Theme.TextColor
            ButtonInstances.TextButton_2.TextSize = 18
            ButtonInstances.TextButton_2.BackgroundColor3 = Theme.ActiveColor
            ButtonInstances.TextButton_2.Position = UDim2.new(0.67688143253326, 0, 0.14300014078617, 0)
            ButtonInstances.TextButton_2.Size = UDim2.new(0, 115, 0, 25)
            ButtonInstances.TextButton_2.Name = 'Activate'
            
            ButtonInstances.UICorner_4.Parent = ButtonInstances.TextButton_2
            ButtonInstances.UICorner_4.CornerRadius = UDim.new(0, 3)

            UpdateSize()

            ButtonInstances.TextButton_2.MouseButton1Down:Connect(function()
                pcall(Callback)
            end)
        end
        function InsideTabs:CreateToggle(Text, State, Callback)
            UpdateSize()
            Text = Text or "Toggle"
            State = State or "false"
            Callback = Callback or function () end
            local toggled = false

            local ToggleInstances = {
                ["TextButton_1"] = Instance.new("TextButton"),
                ["ImageButton_2"] = Instance.new("ImageButton"),
                ["TextButton_2"] = Instance.new("TextButton"),
                ["TextLabel_2"] = Instance.new("TextLabel"),
                ["ImageButton_1"] = Instance.new("ImageButton"),
                ["UICorner_3"] = Instance.new("UICorner"),
                ["Frame_5"] = Instance.new("Frame"),
            }
            
            ToggleInstances.Frame_5.Parent = TabInstances.ScrollingFrame_1
            ToggleInstances.Frame_5.BackgroundColor3 = Theme.ElementColor
            ToggleInstances.Frame_5.Size = UDim2.new(0, 388, 0, 35)
            ToggleInstances.Frame_5.Name = 'ToggleFrame'
            
            ToggleInstances.UICorner_3.Parent = ToggleInstances.Frame_5
            ToggleInstances.UICorner_3.CornerRadius = UDim.new(0, 3)
            
            ToggleInstances.TextLabel_2.Parent = ToggleInstances.Frame_5
            ToggleInstances.TextLabel_2.Font = Enum.Font.SourceSans
            ToggleInstances.TextLabel_2.Text = " "..Text
            ToggleInstances.TextLabel_2.TextColor3 = Theme.TextColor
            ToggleInstances.TextLabel_2.TextSize = 19
            ToggleInstances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            ToggleInstances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
            ToggleInstances.TextLabel_2.BackgroundTransparency = 1
            ToggleInstances.TextLabel_2.Position = UDim2.new(0.069000013172626, 0, 0.11442871391773, 0)
            ToggleInstances.TextLabel_2.Size = UDim2.new(0, 251, 0, 25)
            ToggleInstances.TextLabel_2.Name = 'ToggleText'
            
            ToggleInstances.ImageButton_1.Parent = ToggleInstances.Frame_5
            ToggleInstances.ImageButton_1.Image = 'rbxassetid://3926305904'
            ToggleInstances.ImageButton_1.ImageRectOffset = Vector2.new(324, 964)
            ToggleInstances.ImageButton_1.ImageRectSize = Vector2.new(36, 36)
            ToggleInstances.ImageButton_1.BackgroundTransparency = 1
            ToggleInstances.ImageButton_1.LayoutOrder = 16
            ToggleInstances.ImageButton_1.Position = UDim2.new(0, 1, 0.12899999320507, 0)
            ToggleInstances.ImageButton_1.Size = UDim2.new(0, 25, 0, 25)
            ToggleInstances.ImageButton_1.ZIndex = 2
            ToggleInstances.ImageButton_1.Name = 'DisabledToggle'
            ToggleInstances.ImageButton_1.ImageColor3 = Theme.IconColor
            
            ToggleInstances.ImageButton_2.Parent = ToggleInstances.Frame_5
            ToggleInstances.ImageButton_2.Image = 'rbxassetid://3926309567'
            ToggleInstances.ImageButton_2.ImageRectOffset = Vector2.new(784, 420)
            ToggleInstances.ImageButton_2.ImageRectSize = Vector2.new(48, 48)
            ToggleInstances.ImageButton_2.BackgroundTransparency = 1
            ToggleInstances.ImageButton_2.LayoutOrder = 15
            ToggleInstances.ImageButton_2.Position = UDim2.new(0, 1, 0.12899999320507, 0)
            ToggleInstances.ImageButton_2.Size = UDim2.new(0, 25, 0, 25)
            ToggleInstances.ImageButton_2.Visible = false
            ToggleInstances.ImageButton_2.ZIndex = 2
            ToggleInstances.ImageButton_2.Name = 'EnabledToggle'
            ToggleInstances.ImageButton_2.ImageColor3 = Theme.IconColor
            
            ToggleInstances.TextButton_2.Parent = ToggleInstances.Frame_5
            ToggleInstances.TextButton_2.Font = Enum.Font.SourceSans
            ToggleInstances.TextButton_2.Text = ' '
            ToggleInstances.TextButton_2.TextColor3 = Color3.new(0, 0, 0)
            ToggleInstances.TextButton_2.TextSize = 1
            ToggleInstances.TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
            ToggleInstances.TextButton_2.BackgroundTransparency = 1
            ToggleInstances.TextButton_2.Position = UDim2.new(0, 0, 0, 0)
            ToggleInstances.TextButton_2.Size = UDim2.new(0, 388, 0, 35)
            ToggleInstances.TextButton_2.Name = 'ActivateToggle'

            UpdateSize()

            if State == false then
                ToggleInstances.ImageButton_1.Visible = false
                ToggleInstances.ImageButton_2.Visible = true
                pcall(Callback, State)
                else
                    ToggleInstances.ImageButton_1.Visible = true
                    ToggleInstances.ImageButton_2.Visible = false
                    pcall(Callback, State)
            end

            ToggleInstances.TextButton_2.MouseButton1Down:Connect(function()
                if State == true then
                    ToggleInstances.ImageButton_1.Visible = true
                    ToggleInstances.ImageButton_2.Visible = false
                    State = false
                    pcall(Callback, State)
                else
                    ToggleInstances.ImageButton_1.Visible = false
                    ToggleInstances.ImageButton_2.Visible = true
                    State = true
                    pcall(Callback, State)
                end
            end)
        end
        function InsideTabs:CreateTextButton(Text, PlaceHolder, Callback)
            UpdateSize()
            Text = Text or "Text Box"
            PlaceHolder = PlaceHolder or "Text.."
            Callback = Callback or function () end

            local TextBoxInstances = {
                ["UICorner_4"] = Instance.new("UICorner"),
                ["UICorner_3"] = Instance.new("UICorner"),
                ["Frame_5"] = Instance.new("Frame"),
                ["TextLabel_2"] = Instance.new("TextLabel"),
                ["TextBox_1"] = Instance.new("TextBox"),
                ["ImageButton_1"] = Instance.new("ImageButton")
            }
            
            TextBoxInstances.Frame_5.Parent = TabInstances.ScrollingFrame_1
            TextBoxInstances.Frame_5.BackgroundColor3 = Theme.ElementColor
            TextBoxInstances.Frame_5.Size = UDim2.new(0, 389, 0, 35)
            TextBoxInstances.Frame_5.Name = 'TextBoxFrame'
            
            TextBoxInstances.UICorner_3.Parent = TextBoxInstances.Frame_5
            TextBoxInstances.UICorner_3.CornerRadius = UDim.new(0, 3)
            
            TextBoxInstances.TextLabel_2.Parent = TextBoxInstances.Frame_5
            TextBoxInstances.TextLabel_2.Font = Enum.Font.SourceSans
            TextBoxInstances.TextLabel_2.Text = " "..Text
            TextBoxInstances.TextLabel_2.TextColor3 = Theme.TextColor
            TextBoxInstances.TextLabel_2.TextSize = 19
            TextBoxInstances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            TextBoxInstances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
            TextBoxInstances.TextLabel_2.BackgroundTransparency = 1
            TextBoxInstances.TextLabel_2.Position = UDim2.new(0.069000005722046, 0, 0.11442871391773, 0)
            TextBoxInstances.TextLabel_2.Size = UDim2.new(0, 224, 0, 25)
            TextBoxInstances.TextLabel_2.Name = 'TextBoxText'
            
            TextBoxInstances.TextBox_1.Parent = TextBoxInstances.Frame_5
            TextBoxInstances.TextBox_1.CursorPosition = -1
            TextBoxInstances.TextBox_1.Font = Enum.Font.SourceSans
            TextBoxInstances.TextBox_1.PlaceholderColor3 = Color3.new(0.905882, 0.905882, 0.905882)
            TextBoxInstances.TextBox_1.PlaceholderText = PlaceHolder
            TextBoxInstances.TextBox_1.Text = ''
            TextBoxInstances.TextBox_1.TextColor3 = Theme.TextColor
            TextBoxInstances.TextBox_1.TextScaled = false
            TextBoxInstances.TextBox_1.TextSize = 16
            TextBoxInstances.TextBox_1.TextWrapped = true
            TextBoxInstances.TextBox_1.BackgroundColor3 = Theme.Background
            TextBoxInstances.TextBox_1.BorderSizePixel = 0
            TextBoxInstances.TextBox_1.Position = UDim2.new(0.67688143253326, 0, 0.14300014078617, 0)
            TextBoxInstances.TextBox_1.Size = UDim2.new(0, 115, 0, 25)
            
            TextBoxInstances.UICorner_4.Parent = TextBoxInstances.TextBox_1
            TextBoxInstances.UICorner_4.CornerRadius = UDim.new(0, 4)
            
            TextBoxInstances.ImageButton_1.Parent = TextBoxInstances.Frame_5
            TextBoxInstances.ImageButton_1.Image = 'rbxassetid://3926305904'
            TextBoxInstances.ImageButton_1.ImageRectOffset = Vector2.new(924, 364)
            TextBoxInstances.ImageButton_1.ImageRectSize = Vector2.new(36, 36)
            TextBoxInstances.ImageButton_1.BackgroundTransparency = 1
            TextBoxInstances.ImageButton_1.LayoutOrder = 4
            TextBoxInstances.ImageButton_1.Position = UDim2.new(0, 1, 0.12899999320507, 0)
            TextBoxInstances.ImageButton_1.Size = UDim2.new(0, 25, 0, 25)
            TextBoxInstances.ImageButton_1.ZIndex = 2
            TextBoxInstances.ImageButton_1.Name = 'edit'
            TextBoxInstances.ImageButton_1.ImageColor3 = Theme.IconColor
            
            UpdateSize()

            TextBoxInstances.TextBox_1.FocusLost:Connect(function(EnterPressed)
                if not EnterPressed then 
                    TextBoxInstances.TextBox_1.TextScaled = true
                    return
                else
                    Callback(TextBoxInstances.TextBox_1.Text)
                    wait(.2)
                    TextBoxInstances.TextBox_1.Text = ""  
                    TextBoxInstances.TextScaled = false
                end
            end)
        end
        function InsideTabs:CreateSlider(Text, Min, Max, Callback)
            UpdateSize()
            Text = Text or "Slider"
            Min = Min or 0
            Max = Max or 200
            Callback = Callback or function () end

            local SliderInstances = {
                ["TextButton_2"] = Instance.new("TextButton"),
                ["Frame_5"] = Instance.new("Frame"),
                ["Frame_6"] = Instance.new("Frame"),
                ["TextLabel_3"] = Instance.new("TextLabel"),
                ["UICorner_5"] = Instance.new("UICorner"),
                ["ImageButton_1"] = Instance.new("ImageButton"),
                ["TextLabel_2"] = Instance.new("TextLabel"),
                ["UICorner_3"] = Instance.new("UICorner"),
                ["UICorner_4"] = Instance.new("UICorner")
            }
            
            SliderInstances.Frame_5.Parent = TabInstances.ScrollingFrame_1
            SliderInstances.Frame_5.BackgroundColor3 = Theme.ElementColor
            SliderInstances.Frame_5.Size = UDim2.new(0, 389, 0, 35)
            SliderInstances.Frame_5.Name = 'SliderFrame'
            
            SliderInstances.UICorner_3.Parent = SliderInstances.Frame_5
            SliderInstances.UICorner_3.CornerRadius = UDim.new(0, 3)
            
            SliderInstances.TextLabel_2.Parent = SliderInstances.Frame_5
            SliderInstances.TextLabel_2.Font = Enum.Font.SourceSans
            SliderInstances.TextLabel_2.Text = " "..Text
            SliderInstances.TextLabel_2.TextColor3 = Theme.TextColor
            SliderInstances.TextLabel_2.TextSize = 19
            SliderInstances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            SliderInstances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
            SliderInstances.TextLabel_2.BackgroundTransparency = 1
            SliderInstances.TextLabel_2.Position = UDim2.new(0.069000005722046, 0, 0.11442871391773, 0)
            SliderInstances.TextLabel_2.Size = UDim2.new(0, 144, 0, 25)
            SliderInstances.TextLabel_2.Name = 'SliderText'
            
            SliderInstances.ImageButton_1.Parent = SliderInstances.Frame_5
            SliderInstances.ImageButton_1.Image = 'rbxassetid://3926305904'
            SliderInstances.ImageButton_1.ImageRectOffset = Vector2.new(364, 44)
            SliderInstances.ImageButton_1.ImageRectSize = Vector2.new(36, 36)
            SliderInstances.ImageButton_1.BackgroundTransparency = 1
            SliderInstances.ImageButton_1.LayoutOrder = 1
            SliderInstances.ImageButton_1.Position = UDim2.new(0, 1, 0.12899999320507, 0)
            SliderInstances.ImageButton_1.Size = UDim2.new(0, 25, 0, 25)
            SliderInstances.ImageButton_1.ZIndex = 2
            SliderInstances.ImageButton_1.Name = 'timeline'
            SliderInstances.ImageButton_1.ImageColor3 = Theme.IconColor
            
            SliderInstances.TextButton_2.Parent = SliderInstances.Frame_5
            SliderInstances.TextButton_2.Font = Enum.Font.SourceSans
            SliderInstances.TextButton_2.Text = ' '
            SliderInstances.TextButton_2.TextColor3 = Color3.new(0, 0, 0)
            SliderInstances.TextButton_2.TextSize = 14
            SliderInstances.TextButton_2.BackgroundColor3 = Theme.Background
            SliderInstances.TextButton_2.BorderSizePixel = 0
            SliderInstances.TextButton_2.Position = UDim2.new(0.53470438718796, 0, 0.25728586316109, 0)
            SliderInstances.TextButton_2.Size = UDim2.new(0, 170, 0, 16)
            SliderInstances.TextButton_2.Name = 'BehindButton'
            
            SliderInstances.UICorner_4.Parent = SliderInstances.TextButton_2
            SliderInstances.UICorner_4.CornerRadius = UDim.new(0, 4)
            
            SliderInstances.Frame_6.Parent = SliderInstances.TextButton_2
            SliderInstances.Frame_6.BackgroundColor3 = Theme.ActiveColor
            SliderInstances.Frame_6.Size = UDim2.new(0, 0, 0, 16)
            SliderInstances.Frame_6.Name = 'Infront'
            SliderInstances.Frame_6.BorderSizePixel = 0
            
            SliderInstances.UICorner_5.Parent = SliderInstances.Frame_6
            SliderInstances.UICorner_5.CornerRadius = UDim.new(0, 4)
            
            SliderInstances.TextLabel_3.Parent = SliderInstances.Frame_5
            SliderInstances.TextLabel_3.Font = Enum.Font.SourceSans
            SliderInstances.TextLabel_3.Text = Min
            SliderInstances.TextLabel_3.TextColor3 = Theme.TextColor
            SliderInstances.TextLabel_3.TextSize = 19
            SliderInstances.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Right
            SliderInstances.TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
            SliderInstances.TextLabel_3.BackgroundTransparency = 1
            SliderInstances.TextLabel_3.Position = UDim2.new(0.43968078494072, 0, 0.085857279598713, 0)
            SliderInstances.TextLabel_3.Size = UDim2.new(0, 36, 0, 25)
            SliderInstances.TextLabel_3.Name = 'SliderValue'

            UpdateSize()

            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value;
             
            SliderInstances.TextButton_2.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(Max) - tonumber(Min)) / 170) * SliderInstances.Frame_6.AbsoluteSize.X) + tonumber(Min)) or 0
                pcall(function()
                    Callback(Value)
                end)
                SliderInstances.Frame_6.Size = UDim2.new(0, math.clamp(mouse.X - SliderInstances.Frame_6.AbsolutePosition.X, 0, 170), 0, 16)
                moveconnection = mouse.Move:Connect(function()
                    SliderInstances.TextLabel_3.Text = Value
                    Value = math.floor((((tonumber(Max) - tonumber(Min)) / 170) * SliderInstances.Frame_6.AbsoluteSize.X) + tonumber(Min))
                    pcall(function()
                        Callback(Value)
                    end)
                    SliderInstances.Frame_6.Size = UDim2.new(0, math.clamp(mouse.X - SliderInstances.Frame_6.AbsolutePosition.X, 0, 170), 0, 16)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(Max) - tonumber(Min)) / 170) * SliderInstances.Frame_6.AbsoluteSize.X) + tonumber(Min))
                        pcall(function()
                            Callback(Value)
                        end)
                        SliderInstances.Frame_6.Size = UDim2.new(0, math.clamp(mouse.X - SliderInstances.Frame_6.AbsolutePosition.X, 0, 170), 0, 16)
                        SliderInstances.TextLabel_3.Text = Value
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
        end
        function InsideTabs:CreateDropdown(Text, List, Callback)
            Text = Text or "DropDown"
            List = List or {"Input A Table!", "Input A Table!"}
            Callback = Callback or Callback
            local ForRefresh = {}
            
            local DropDownInstances = {
                ["UIListLayout_3"] = Instance.new("UIListLayout"),
                ["UICorner_3"] = Instance.new("UICorner"),
                ["ImageButton_1"] = Instance.new("ImageButton"),
                ["TextLabel_2"] = Instance.new("TextLabel"),
                ["TextButton_2"] = Instance.new("TextButton"),
                ["Frame_5"] = Instance.new("Frame")
            }
            
            DropDownInstances.Frame_5.Parent = TabInstances.ScrollingFrame_1
            DropDownInstances.Frame_5.BackgroundColor3 = Theme.ElementColor
            DropDownInstances.Frame_5.ClipsDescendants = true
            DropDownInstances.Frame_5.Position = UDim2.new(0, 0, 0.17410714924335, 0)
            DropDownInstances.Frame_5.Size = UDim2.new(0, 389, 0, 35)
            DropDownInstances.Frame_5.Name = 'DropDownFrame'
            
            DropDownInstances.UICorner_3.Parent = DropDownInstances.Frame_5
            DropDownInstances.UICorner_3.CornerRadius = UDim.new(0, 3)
            
            DropDownInstances.TextButton_2.Parent = DropDownInstances.Frame_5
            DropDownInstances.TextButton_2.Font = Enum.Font.SourceSans
            DropDownInstances.TextButton_2.Text = ''
            DropDownInstances.TextButton_2.TextColor3 = Color3.new(0, 0, 0)
            DropDownInstances.TextButton_2.TextSize = 14
            DropDownInstances.TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
            DropDownInstances.TextButton_2.BackgroundTransparency = 1
            DropDownInstances.TextButton_2.Size = UDim2.new(0, 389, 0, 35)
            DropDownInstances.TextButton_2.Name = 'Activate'
            
            DropDownInstances.ImageButton_1.Parent = DropDownInstances.TextButton_2
            DropDownInstances.ImageButton_1.Image = 'rbxassetid://3926305904'
            DropDownInstances.ImageButton_1.ImageRectOffset = Vector2.new(644, 364)
            DropDownInstances.ImageButton_1.ImageRectSize = Vector2.new(36, 36)
            DropDownInstances.ImageButton_1.BackgroundTransparency = 1
            DropDownInstances.ImageButton_1.Position = UDim2.new(0.0089974403381348, 0, 0.12857142090797, 0)
            DropDownInstances.ImageButton_1.Size = UDim2.new(0, 25, 0, 25)
            DropDownInstances.ImageButton_1.ZIndex = 2
            DropDownInstances.ImageButton_1.Name = 'Icon'
            DropDownInstances.ImageButton_1.ImageColor3 = Theme.IconColor
            
            DropDownInstances.TextLabel_2.Parent = DropDownInstances.TextButton_2
            DropDownInstances.TextLabel_2.Font = Enum.Font.SourceSans
            DropDownInstances.TextLabel_2.Text = ""..Text
            DropDownInstances.TextLabel_2.TextColor3 = Theme.TextColor
            DropDownInstances.TextLabel_2.TextSize = 19
            DropDownInstances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            DropDownInstances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
            DropDownInstances.TextLabel_2.BackgroundTransparency = 1
            DropDownInstances.TextLabel_2.BorderSizePixel = 0
            DropDownInstances.TextLabel_2.Position = UDim2.new(0.082262210547924, 0, 0, 0)
            DropDownInstances.TextLabel_2.Size = UDim2.new(0, 200, 0, 35)
            DropDownInstances.TextLabel_2.Name = 'Title'

            UpdateSize()

            local function UpdateSizeDropDown()
                local cS = DropDownInstances.UIListLayout_3.AbsoluteContentSize
        
                game.TweenService:Create(DropDownInstances.Frame_5, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    Size = UDim2.new(0,cS.X,0,cS.Y)
                }):Play()
            end
            
            DropDownInstances.UIListLayout_3.Parent = DropDownInstances.Frame_5
            DropDownInstances.UIListLayout_3.Padding = UDim.new(0, 3)
            DropDownInstances.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UpdateSize()

            local Dropped = false

            local function DropBox()
                if Dropped == false then
                    DropDownInstances.Frame_5:TweenSize(UDim2.new(0, 389, 0, 115), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, .1)
                    UpdateSize()  
                    UpdateSizeDropDown() 
                    Dropped = true 
                else
                    DropDownInstances.Frame_5:TweenSize(UDim2.new(0, 389, 0, 35), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, .1)
                    UpdateSize()
                    Dropped = false
                end
            end

            DropDownInstances.TextButton_2.MouseButton1Down:Connect(function()
                DropBox()
                wait(.2)
                UpdateSize()
            end)
            UpdateSize()

            for i, v in next, List do
                local DropDownButtons = {
                    ["TextButton_3"] = Instance.new("TextButton"),
                    ["UiCorner_Dropped"] = Instance.new("UICorner")
                }

                DropDownButtons.TextButton_3.Parent = DropDownInstances.Frame_5
                DropDownButtons.TextButton_3.Font = Enum.Font.SourceSans
                DropDownButtons.TextButton_3.TextColor3 = Theme.TextColor
                DropDownButtons.TextButton_3.TextSize = 19
                DropDownButtons.TextButton_3.BackgroundColor3 = Theme.Background
                DropDownButtons.TextButton_3.BorderSizePixel = 0
                DropDownButtons.TextButton_3.Position = UDim2.new(0, 0, 0.21111111342907, 0)
                DropDownButtons.TextButton_3.Size = UDim2.new(0, 389, 0, 35)
                DropDownButtons.TextButton_3.Text = v
                DropDownButtons.TextButton_3.Name = "Inserted"

                DropDownButtons.UiCorner_Dropped.Parent = DropDownButtons.TextButton_3
                DropDownButtons.UiCorner_Dropped.CornerRadius = UDim.new(0, 3)

                DropDownButtons.TextButton_3.MouseButton1Down:Connect(function()
                    Dropped = true
                    Callback(v)
                    DropDownInstances.TextLabel_2.Text = v
                    DropBox()
                    wait(.2)
                    UpdateSize()
                end)
                function ForRefresh:Refresh(List2)
                    List2 = List2 or {"Table Refreshed!", "yes?"}
                    for i, v in pairs(DropDownInstances.Frame_5:GetChildren()) do
                        if v.Name == "Inserted" then
                            v:Destroy()
                        end
                    end
                    for i2, v2 in next, List2 do
                        local DropDownButtons = {
                            ["TextButton_3"] = Instance.new("TextButton"),
                            ["UiCorner_Dropped"] = Instance.new("UICorner")
                        }
        
                        DropDownButtons.TextButton_3.Parent = DropDownInstances.Frame_5
                        DropDownButtons.TextButton_3.Font = Enum.Font.SourceSans
                        DropDownButtons.TextButton_3.TextColor3 = Theme.TextColor
                        DropDownButtons.TextButton_3.TextSize = 19
                        DropDownButtons.TextButton_3.BackgroundColor3 = Theme.Background
                        DropDownButtons.TextButton_3.BorderSizePixel = 0
                        DropDownButtons.TextButton_3.Position = UDim2.new(0, 0, 0.21111111342907, 0)
                        DropDownButtons.TextButton_3.Size = UDim2.new(0, 389, 0, 35)
                        DropDownButtons.TextButton_3.Text = v2
                        DropDownButtons.TextButton_3.Name = "Inserted"
        
                        DropDownButtons.UiCorner_Dropped.Parent = DropDownButtons.TextButton_3
                        DropDownButtons.UiCorner_Dropped.CornerRadius = UDim.new(0, 3)
        
                        DropDownButtons.TextButton_3.MouseButton1Down:Connect(function()
                            Dropped = true
                            Callback(v2)
                            DropDownInstances.TextLabel_2.Text = v2
                            DropBox()
                            wait(.2)
                            UpdateSize()
                        end)
                        UpdateSizeDropDown()
                        UpdateSize()
                    end
                end
            end
            return ForRefresh;
        end
        return InsideTabs;
    end
    return Tabs;
end
return Lib;

--[[
function InsideTabs:CreateKeyBind(Text, Keybind, Callback)
    UpdateSize()
    Text = Text or "KeyBind"
    Keybind = Keybind or Enum.KeyCode.Insert
    Callback = Callback or function () end
    local oldKey = Keybind.Name

    local KeyBindInstances = {
        ["TextButton_3"] = Instance.new("TextButton"),
        ["TextButton_2"] = Instance.new("TextButton"),
        ["TextLabel_2"] = Instance.new("TextLabel"),
        ["UICorner_4"] = Instance.new("UICorner"),
        ["ImageButton_1"] = Instance.new("ImageButton"),
        ["UICorner_3"] = Instance.new("UICorner"),
        ["Frame_5"] = Instance.new("Frame"),
    }
    KeyBindInstances.Frame_5.Parent = TabInstances.ScrollingFrame_1
    KeyBindInstances.Frame_5.BackgroundColor3 = Theme.ElementColor
    KeyBindInstances.Frame_5.ClipsDescendants = true
    KeyBindInstances.Frame_5.Size = UDim2.new(0, 389, 0, 35)
    KeyBindInstances.Frame_5.Name = 'KeyBindFrame'

    KeyBindInstances.UICorner_3.Parent = KeyBindInstances.Frame_5
    KeyBindInstances.UICorner_3.CornerRadius = UDim.new(0, 3)

    KeyBindInstances.TextButton_2.Parent = KeyBindInstances.Frame_5
    KeyBindInstances.TextButton_2.Font = Enum.Font.SourceSans
    KeyBindInstances.TextButton_2.Text = ''
    KeyBindInstances.TextButton_2.TextColor3 = Color3.new(0, 0, 0)
    KeyBindInstances.TextButton_2.TextSize = 14
    KeyBindInstances.TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
    KeyBindInstances.TextButton_2.BackgroundTransparency = 1
    KeyBindInstances.TextButton_2.Size = UDim2.new(0, 389, 0, 35)
    KeyBindInstances.TextButton_2.Name = 'Activate'

    KeyBindInstances.TextLabel_2.Parent = KeyBindInstances.TextButton_2
    KeyBindInstances.TextLabel_2.Font = Enum.Font.SourceSans
    KeyBindInstances.TextLabel_2.Text = Text
    KeyBindInstances.TextLabel_2.TextColor3 = Theme.TextColor
    KeyBindInstances.TextLabel_2.TextSize = 19
    KeyBindInstances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
    KeyBindInstances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
    KeyBindInstances.TextLabel_2.BackgroundTransparency = 1
    KeyBindInstances.TextLabel_2.BorderSizePixel = 0
    KeyBindInstances.TextLabel_2.Position = UDim2.new(0.082262210547924, 0, 0, 0)
    KeyBindInstances.TextLabel_2.Size = UDim2.new(0, 200, 0, 35)
    KeyBindInstances.TextLabel_2.Name = 'Title'

    KeyBindInstances.ImageButton_1.Parent = KeyBindInstances.TextButton_2
    KeyBindInstances.ImageButton_1.Image = 'rbxassetid://3926307971'
    KeyBindInstances.ImageButton_1.ImageRectOffset = Vector2.new(324, 124)
    KeyBindInstances.ImageButton_1.ImageRectSize = Vector2.new(36, 36)
    KeyBindInstances.ImageButton_1.BackgroundTransparency = 1
    KeyBindInstances.ImageButton_1.LayoutOrder = 8
    KeyBindInstances.ImageButton_1.Position = UDim2.new(0.0089974403381348, 0, 0.12857142090797, 0)
    KeyBindInstances.ImageButton_1.Size = UDim2.new(0, 25, 0, 25)
    KeyBindInstances.ImageButton_1.ZIndex = 2
    KeyBindInstances.ImageButton_1.Name = 'settings'
    KeyBindInstances.ImageButton_1.ImageColor3 = Theme.IconColor

    KeyBindInstances.TextButton_3.Parent = KeyBindInstances.TextButton_2
    KeyBindInstances.TextButton_3.Font = Enum.Font.SourceSans
    KeyBindInstances.TextButton_3.Text = Keybind.Name
    KeyBindInstances.TextButton_3.TextColor3 = Theme.TextColor
    KeyBindInstances.TextButton_3.TextScaled = true
    KeyBindInstances.TextButton_3.TextSize = 14
    KeyBindInstances.TextButton_3.TextWrapped = true
    KeyBindInstances.TextButton_3.BackgroundColor3 = Theme.ActiveColor
    KeyBindInstances.TextButton_3.BorderSizePixel = 0
    KeyBindInstances.TextButton_3.Position = UDim2.new(0.85347044467926, 0, 0.14285714924335, 0)
    KeyBindInstances.TextButton_3.Size = UDim2.new(0, 45, 0, 25)

    KeyBindInstances.UICorner_4.Parent = KeyBindInstances.TextButton_3
    KeyBindInstances.UICorner_4.CornerRadius = UDim.new(0, 5)

    KeyBindInstances.TextButton_3.MouseButton1Down:Connect(function()
        KeyBindInstances.TextButton_3.Text = ". . ."
        local Key, b = game:GetService('UserInputService').InputBegan:wait();
        if Key.KeyCode.Name ~= "Unknown" then
            KeyBindInstances.TextButton_3.Text = Key.KeyCode.Name
            oldKey = Key.KeyCode.Name;
        end
    end)

    --FIX KEYBIND
    UpdateSize()
    game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
        if not ok then 
            if current.KeyCode.Name == oldKey then 
                Callback()
            end
        end
    end)

end

local Main = Lib:CreateWindow("SUPERNotGay", "DarkMode")
local Tab1 = Main:CreateTab("Test1")
local Tab2 = Main:CreateTab("Test2")
Tab1:CreateLabel("This is on page 1 :D")
Tab2:CreateLabel("This is on page 2 :(")

local Drpo = Tab1:CreateDropdown("Text", {"1","2","3"}, function(Option)
    print(Option)
end)

Tab1:CreateButton("Refresh Drop", function()
    Drpo:Refresh({"Get Fucked"})
end)

Tab1:CreateToggle("Print Money Hacks", false, function(state)
    print(state)
end)

Tab1:CreateTextButton("Box", "Type", function(Text)
    print(Text)
end)

Tab1:CreateSlider("SliderTest", 10, 100, function(value)
   print(value) 
end)

Tab1:CreateKeyBind("Bind Ui", Enum.KeyCode.KeypadOne, function(yes)
    print(yes)
end)
]]
