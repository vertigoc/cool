local UiLib = {}

function UiLib:CreateWindow(Title, Notice)
    local Title = Title or "Title"
    local Notice = Notice or "Notice: Nothing Has Been Set"
    local Plr = game:GetService("Players").LocalPlayer.DisplayName
    local screenGui = Instance.new("ScreenGui",game:GetService("CoreGui"))

    local Instances = {
        ["Frame_3"] = Instance.new("Frame"),
        ["UIGridLayout_1"] = Instance.new("UIGridLayout"),
        ["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
        ["Frame_2"] = Instance.new("Frame"),
        ["Frame_1"] = Instance.new("Frame"),
        ["TextLabel_2"] = Instance.new("TextLabel"),
        ["TextBox_1"] = Instance.new("TextBox"),
        ["UICorner_2"] = Instance.new("UICorner"),
        ["Frame_4"] = Instance.new("Frame"),
        ["ImageLabel_1"] = Instance.new("ImageLabel"),
        ["UICorner_1"] = Instance.new("UICorner"),
        ["TextLabel_3"] = Instance.new("TextLabel"),
        ["TextLabel_1"] = Instance.new("TextLabel"),
    }


    screenGui.Name = 'UtiltyUI'

    Instances.Frame_1.Parent = screenGui
    Instances.Frame_1.BackgroundColor3 = Color3.new(0.176471, 0.172549, 0.192157)
    Instances.Frame_1.BorderSizePixel = 0
    Instances.Frame_1.Position = UDim2.new(0.31801471114159, 0, 0.27134722471237, 0)
    Instances.Frame_1.Size = UDim2.new(0, 396, 0, 241)
    Instances.Frame_1.Name = 'Main'

    Instances.Frame_2.Parent = Instances.Frame_1
    Instances.Frame_2.BackgroundColor3 = Color3.new(0.176471, 0.172549, 0.192157)
    Instances.Frame_2.BorderSizePixel = 0
    Instances.Frame_2.Position = UDim2.new(0, 0, -0.13874690234661, 0)
    Instances.Frame_2.Size = UDim2.new(0, 396, 0, 30)
    Instances.Frame_2.Name = 'TopBar'

    Instances.Frame_3.Parent = Instances.Frame_1
    Instances.Frame_3.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.Frame_3.BackgroundTransparency = 1
    Instances.Frame_3.Position = UDim2.new(0, 0, 0.024896265938878, 0)
    Instances.Frame_3.Size = UDim2.new(0, 396, 0, 60)
    Instances.Frame_3.Name = 'UserSection'

    Instances.TextLabel_1.Parent = Instances.Frame_3
    Instances.TextLabel_1.Font = Enum.Font.SourceSans
    Instances.TextLabel_1.Text = Plr
    Instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_1.TextSize = 16
    Instances.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
    Instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_1.BackgroundTransparency = 1
    Instances.TextLabel_1.BorderSizePixel = 0
    Instances.TextLabel_1.Position = UDim2.new(0.15909090638161, 0, 0.024412214756012, 0)
    Instances.TextLabel_1.Size = UDim2.new(0, 180, 0, 21)
    Instances.TextLabel_1.Name = 'User'

    Instances.TextLabel_2.Parent = Instances.Frame_3
    Instances.TextLabel_2.Font = Enum.Font.SourceSans
    Instances.TextLabel_2.Text = Title
    Instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_2.TextSize = 20
    Instances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
    Instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_2.BackgroundTransparency = 1
    Instances.TextLabel_2.Position = UDim2.new(0.017676770687103, 0, -0.62344408035278, 0)
    Instances.TextLabel_2.Size = UDim2.new(0, 180, 0, 25)
    Instances.TextLabel_2.Name = 'Title'

    local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players").LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60)
    Instances.ImageLabel_1.Image = content or "rbxasset://textures/ui/GuiImagePlaceholder.png"
    Instances.ImageLabel_1.Parent = Instances.Frame_3
    Instances.ImageLabel_1.Image = content
    Instances.ImageLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.ImageLabel_1.Position = UDim2.new(0.017676766961813, 0, 0.026556074619293, 0)
    Instances.ImageLabel_1.Size = UDim2.new(0, 48, 0, 48)
    Instances.ImageLabel_1.Name = 'Image'

    Instances.UICorner_1.Parent = Instances.ImageLabel_1
    Instances.UICorner_1.CornerRadius = UDim.new(0, 999)

    Instances.TextLabel_3.Parent = Instances.Frame_3
    Instances.TextLabel_3.Font = Enum.Font.SourceSans
    Instances.TextLabel_3.Text = "Notice: "..Notice
    Instances.TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_3.TextSize = 16
    Instances.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
    Instances.TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_3.BackgroundTransparency = 1
    Instances.TextLabel_3.BorderSizePixel = 0
    Instances.TextLabel_3.Position = UDim2.new(0.15909090638161, 0, 0.47441220283508, 0)
    Instances.TextLabel_3.Size = UDim2.new(0, 180, 0, 21)
    Instances.TextLabel_3.Name = 'Notice'

    Instances.Frame_4.Parent = Instances.Frame_3
    Instances.Frame_4.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.Frame_4.BorderSizePixel = 0
    Instances.Frame_4.Position = UDim2.new(0, 0, 0.9822900891304, 0)
    Instances.Frame_4.Size = UDim2.new(0, 396, 0, 1)

    Instances.TextBox_1.Parent = Instances.Frame_1
    Instances.TextBox_1.CursorPosition = -1
    Instances.TextBox_1.Font = Enum.Font.SourceSans
    Instances.TextBox_1.PlaceholderColor3 = Color3.new(0.772549, 0.772549, 0.772549)
    Instances.TextBox_1.PlaceholderText = 'Search..'
    Instances.TextBox_1.Text = ''
    Instances.TextBox_1.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextBox_1.TextSize = 17
    Instances.TextBox_1.BackgroundColor3 = Color3.new(0.235294, 0.231373, 0.258824)
    Instances.TextBox_1.BorderSizePixel = 0
    Instances.TextBox_1.Position = UDim2.new(0.61363637447357, 0, 0.074688799679279, 0)
    Instances.TextBox_1.Size = UDim2.new(0, 144, 0, 27)
    Instances.TextBox_1.Name = 'Search'

    Instances.UICorner_2.Parent = Instances.TextBox_1
    Instances.UICorner_2.CornerRadius = UDim.new(0, 4)

    Instances.ScrollingFrame_1.Parent = Instances.Frame_1
    Instances.ScrollingFrame_1.ScrollBarImageColor3 = Color3.new(0, 0, 0)
    Instances.ScrollingFrame_1.ScrollBarThickness = 0
    Instances.ScrollingFrame_1.Active = true
    Instances.ScrollingFrame_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.ScrollingFrame_1.BackgroundTransparency = 1
    Instances.ScrollingFrame_1.BorderSizePixel = 0
    Instances.ScrollingFrame_1.Position = UDim2.new(0.020202020183206, 0, 0.30705395340919, 0)
    Instances.ScrollingFrame_1.Size = UDim2.new(0, 380, 0, 159)

    Instances.UIGridLayout_1.Parent = Instances.ScrollingFrame_1
    Instances.UIGridLayout_1.CellSize = UDim2.new(0, 187, 0, 100)
    Instances.UIGridLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

    local function UpdateSize()
        local cS = Instances.UIGridLayout_1.AbsoluteContentSize
        Instances.ScrollingFrame_1.ScrollBarThickness = 0

        game.TweenService:Create(Instances.ScrollingFrame_1, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
        }):Play()
    end

    local toggle = true 
    function onKeyPress(actionName, userInputState, inputObject)
        if userInputState == Enum.UserInputState.Begin then
            if toggle == false then
                toggle = true
                screenGui.Enabled = true
            else
                toggle = false
                screenGui.Enabled = false
            end
        end
    end

    local searchBar = Instances.TextBox_1
    local items = Instances.ScrollingFrame_1

    function UpdateResults()
        local search = string.lower(searchBar.Text)
        for i, v in	 pairs(items:GetChildren()) do
            if v:IsA("Frame") then
                if search ~= "" then
                    local item = string.lower(v.Name)
                    if string.find(item, search) then
                        v.Visible = true
                    else
                        v.Visible = false
                    end
                else
                    v.Visible = true
                end
            end
        end
    end
    
    searchBar.Changed:Connect(UpdateResults)

    local insideLib = {}

    function insideLib:CreateButton(SearchName, Title, Description, Credits, Callback)
        local SearchName = SearchName or "Utility"
        local Title = Title or "Title"
        local Description = Description or "Description"
        local Credits = Credits or "no one"
        local Callback = Callback or function() end

        local Instances2 = {
            ["TextLabel_1"] = Instance.new("TextLabel"),
            ["TextLabel_2"] = Instance.new("TextLabel"),
            ["TextLabel_3"] = Instance.new("TextLabel"),
            ["ImageButton_1"] = Instance.new("ImageButton"),
            ["UIGradient_1"] = Instance.new("UIGradient"),
            ["UICorner_1"] = Instance.new("UICorner"),
            ["Frame_1"] = Instance.new("Frame"),
        }



        Instances2.Frame_1.Parent = Instances.ScrollingFrame_1
        Instances2.Frame_1.BackgroundColor3 = Color3.new(1, 1, 1)
        Instances2.Frame_1.Size = UDim2.new(0, 179, 0, 100)
        Instances2.Frame_1.Name = SearchName

        Instances2.UICorner_1.Parent = Instances2.Frame_1
        Instances2.UICorner_1.CornerRadius = UDim.new(0, 4)

        Instances2.UIGradient_1.Parent = Instances2.Frame_1
        Instances2.UIGradient_1.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.new(0.196078, 0.2, 0.239216)),
            ColorSequenceKeypoint.new(1, Color3.new(0.235294, 0.317647, 0.462745))
        }

        Instances2.TextLabel_1.Parent = Instances2.Frame_1
        Instances2.TextLabel_1.Font = Enum.Font.SourceSans
        Instances2.TextLabel_1.Text = Title
        Instances2.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_1.TextSize = 20
        Instances2.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
        Instances2.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_1.BackgroundTransparency = 1
        Instances2.TextLabel_1.Position = UDim2.new(0.037433154881001, 0, 0.059999998658895, 0)
        Instances2.TextLabel_1.Size = UDim2.new(0, 172, 0, 22)
        Instances2.TextLabel_1.Name = 'Title'

        Instances2.TextLabel_2.Parent = Instances2.Frame_1
        Instances2.TextLabel_2.Font = Enum.Font.SourceSans
        Instances2.TextLabel_2.Text = Description
        Instances2.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_2.TextSize = 16
        Instances2.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
        Instances2.TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top
        Instances2.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_2.BackgroundTransparency = 1
        Instances2.TextLabel_2.Position = UDim2.new(0.037433154881001, 0, 0.34999999403954, 0)
        Instances2.TextLabel_2.Size = UDim2.new(0, 172, 0, 33)
        Instances2.TextLabel_2.Name = 'Desc'

        Instances2.TextLabel_3.Parent = Instances2.Frame_1
        Instances2.TextLabel_3.Font = Enum.Font.SourceSans
        Instances2.TextLabel_3.Text = "Credits: "..Credits
        Instances2.TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_3.TextSize = 15
        Instances2.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
        Instances2.TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_3.BackgroundTransparency = 1
        Instances2.TextLabel_3.Position = UDim2.new(0.037433154881001, 0, 0.68000000715256, 0)
        Instances2.TextLabel_3.Size = UDim2.new(0, 101, 0, 25)
        Instances2.TextLabel_3.Name = 'Credits'

        Instances2.ImageButton_1.Parent = Instances2.Frame_1
        Instances2.ImageButton_1.Image = 'rbxassetid://6764432408'
        Instances2.ImageButton_1.ImageRectOffset = Vector2.new(100, 150)
        Instances2.ImageButton_1.ImageRectSize = Vector2.new(50, 50)
        Instances2.ImageButton_1.BackgroundTransparency = 1
        Instances2.ImageButton_1.Position = UDim2.new(0.80481284856796, 0, 0.68000000715256, 0)
        Instances2.ImageButton_1.Size = UDim2.new(0, 28, 0, 28)
        Instances2.ImageButton_1.ZIndex = 2
        Instances2.ImageButton_1.Name = 'right'

        UpdateSize()
        Instances2.ImageButton_1.MouseButton1Down:Connect(function()
            pcall(Callback)
        end)
    end
    return insideLib;
end
return UiLib;
