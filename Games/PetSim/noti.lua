local Noti = {}

function Noti:CreateWindow(Title)
    Title = Title or "Updates!"
    local screenGui = Instance.new("ScreenGui",game:GetService("CoreGui"))

    local Instances = {
        ["Frame_3"] = Instance.new("Frame"),
        ["Frame_1"] = Instance.new("Frame"),
        ["TextLabel_2"] = Instance.new("TextLabel"),
        ["UIStroke_1"] = Instance.new("UIStroke"),
        ["UICorner_3"] = Instance.new("UICorner"),
        ["UICorner_1"] = Instance.new("UICorner"),
        ["ImageButton_1"] = Instance.new("ImageButton"),
        ["Frame_2"] = Instance.new("Frame"),
        ["UICorner_2"] = Instance.new("UICorner"),
        ["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
        ["TextLabel_1"] = Instance.new("TextLabel"),
        ["UIScale_1"] = Instance.new("UIScale"),
        ["UIStroke_2"] = Instance.new("UIStroke"),
        ["UIPadding_1"] = Instance.new("UIPadding"),
        ["UIListLayout_1"] = Instance.new("UIListLayout"),
    }


    screenGui.DisplayOrder = 100
    screenGui.Name = 'Updates'
    screenGui.DisplayOrder = 100
    screenGui.ResetOnSpawn = false

    Instances.Frame_1.Parent = screenGui
    Instances.Frame_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.Frame_1.Position = UDim2.new(0.32568806409836, 0, 0.14041745662689, 0)
    Instances.Frame_1.Size = UDim2.new(0, 400, 0, 379)

    Instances.UICorner_1.Parent = Instances.Frame_1
    Instances.UICorner_1.CornerRadius = UDim.new(0.075000003, 0)

    Instances.UIStroke_1.Parent = Instances.Frame_1
    Instances.UIStroke_1.Color = Color3.new(0.109804, 0.270588, 0.321569)
    Instances.UIStroke_1.Thickness = 6.322226524353

    Instances.ScrollingFrame_1.Parent = Instances.Frame_1
    Instances.ScrollingFrame_1.ScrollBarImageColor3 = Color3.new(0, 0, 0)
    Instances.ScrollingFrame_1.ScrollBarThickness = 6
    Instances.ScrollingFrame_1.Active = true
    Instances.ScrollingFrame_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.ScrollingFrame_1.BackgroundTransparency = 1
    Instances.ScrollingFrame_1.BorderSizePixel = 0
    Instances.ScrollingFrame_1.Position = UDim2.new(0, 0, 0.088353417813778, 0)
    Instances.ScrollingFrame_1.Size = UDim2.new(0, 400, 0, 264)

    Instances.UIListLayout_1.Parent = Instances.ScrollingFrame_1
    Instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

    Instances.Frame_2.Parent = Instances.Frame_1
    Instances.Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Instances.Frame_2.BackgroundColor3 = Color3.new(0.109804, 0.270588, 0.321569)
    Instances.Frame_2.BorderSizePixel = 0
    Instances.Frame_2.Position = UDim2.new(0.5, 0, 0.52245980501175, 0)
    Instances.Frame_2.Rotation = -4.5
    Instances.Frame_2.Size = UDim2.new(1, 0, 1.0050803422928, 0)
    Instances.Frame_2.ZIndex = -4
    Instances.Frame_2.Name = 'bg'

    Instances.UICorner_2.Parent = Instances.Frame_2
    Instances.UICorner_2.CornerRadius = UDim.new(0.100000001, 0)

    Instances.Frame_3.Parent = Instances.Frame_1
    Instances.Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
    Instances.Frame_3.BackgroundColor3 = Color3.new(0.231373, 0.694118, 0.988235)
    Instances.Frame_3.BorderSizePixel = 0
    Instances.Frame_3.Position = UDim2.new(0.48414441943169, 0, 0.52245980501175, 0)
    Instances.Frame_3.Rotation = -2
    Instances.Frame_3.Size = UDim2.new(1.0017113685608, 0, 1.0050803422928, 0)
    Instances.Frame_3.ZIndex = -3
    Instances.Frame_3.Name = 'bg'

    Instances.UICorner_3.Parent = Instances.Frame_3
    Instances.UICorner_3.CornerRadius = UDim.new(0.100000001, 0)

    Instances.ImageButton_1.Parent = Instances.Frame_1
    Instances.ImageButton_1.HoverImage = 'rbxassetid://6903539993'
    Instances.ImageButton_1.Image = 'rbxassetid://6869680115'
    Instances.ImageButton_1.PressedImage = 'rbxassetid://6903534547'
    Instances.ImageButton_1.ScaleType = Enum.ScaleType.Slice
    Instances.ImageButton_1.SliceCenter = Rect.new(55, 55, 95, 95)
    Instances.ImageButton_1.SliceScale = 0.90317517518997
    Instances.ImageButton_1.AnchorPoint = Vector2.new(0.5, 0.5)
    Instances.ImageButton_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.ImageButton_1.BackgroundTransparency = 1
    Instances.ImageButton_1.BorderSizePixel = 0
    Instances.ImageButton_1.Position = UDim2.new(0.49899598956108, 0, 0.88426208496094, 0)
    Instances.ImageButton_1.Size = UDim2.new(0.30963855981827, 0, 0.19352409243584, 0)
    Instances.ImageButton_1.ZIndex = 6
    Instances.ImageButton_1.AutoButtonColor = false
    Instances.ImageButton_1.Name = 'Ok'

    Instances.ImageButton_1.MouseButton1Down:Connect(function()
        screenGui:Destroy()
    end)

    Instances.TextLabel_1.Parent = Instances.ImageButton_1
    Instances.TextLabel_1.Font = Enum.Font.FredokaOne
    Instances.TextLabel_1.Text = 'Ok!'
    Instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_1.TextScaled = true
    Instances.TextLabel_1.TextSize = 14
    Instances.TextLabel_1.TextStrokeColor3 = Color3.new(0.0666667, 0.227451, 0.282353)
    Instances.TextLabel_1.TextWrapped = true
    Instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_1.BackgroundTransparency = 1
    Instances.TextLabel_1.BorderSizePixel = 0
    Instances.TextLabel_1.Size = UDim2.new(1, 0, 1, 0)
    Instances.TextLabel_1.ZIndex = 7

    Instances.UIPadding_1.Parent = Instances.ImageButton_1
    Instances.UIPadding_1.PaddingBottom = UDim.new(0.100000001, 0)
    Instances.UIPadding_1.PaddingLeft = UDim.new(0.0250000004, 0)
    Instances.UIPadding_1.PaddingRight = UDim.new(0.0250000004, 0)
    Instances.UIPadding_1.PaddingTop = UDim.new(0.100000001, 0)

    Instances.UIScale_1.Parent = Instances.ImageButton_1
    Instances.UIScale_1.Name = 'ButtonUIScale'

    Instances.TextLabel_2.Parent = Instances.Frame_1
    Instances.TextLabel_2.Font = Enum.Font.FredokaOne
    Instances.TextLabel_2.Text = Title
    Instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_2.TextScaled = true
    Instances.TextLabel_2.TextSize = 18
    Instances.TextLabel_2.TextStrokeColor3 = Color3.new(0.109804, 0.270588, 0.321569)
    Instances.TextLabel_2.TextStrokeTransparency = 0
    Instances.TextLabel_2.TextWrapped = true
    Instances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
    Instances.TextLabel_2.TextYAlignment = Enum.TextYAlignment.Bottom
    Instances.TextLabel_2.AnchorPoint = Vector2.new(0, 1)
    Instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_2.BackgroundTransparency = 1
    Instances.TextLabel_2.BorderSizePixel = 0
    Instances.TextLabel_2.Position = UDim2.new(-0.017246656119823, 0, 0.10131969302893, -12)
    Instances.TextLabel_2.Rotation = -3
    Instances.TextLabel_2.Selectable = true
    Instances.TextLabel_2.Size = UDim2.new(0.36481916904449, 0, 0.21575759351254, 0)
    Instances.TextLabel_2.ZIndex = 50
    Instances.TextLabel_2.Name = 'Title'

    Instances.UIStroke_2.Parent = Instances.TextLabel_2
    Instances.UIStroke_2.Color = Color3.new(0.109804, 0.270588, 0.321569)
    Instances.UIStroke_2.LineJoinMode = Enum.LineJoinMode.Bevel
    Instances.UIStroke_2.Thickness = 4.9674634933472

    local Labels = {}

    function Labels:Text(Text)
        Text = Text or "Empty!"
        local LabelInstnaces = {
            ["TextLabel_1"] = Instance.new("TextLabel")
        }
        LabelInstnaces.TextLabel_1.Parent = Instances.ScrollingFrame_1
        LabelInstnaces.TextLabel_1.Font = Enum.Font.FredokaOne
        LabelInstnaces.TextLabel_1.Text = Text
        LabelInstnaces.TextLabel_1.TextColor3 = Color3.new(0.109804, 0.270588, 0.321569)
        LabelInstnaces.TextLabel_1.TextSize = 22
        LabelInstnaces.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
        LabelInstnaces.TextLabel_1.BorderSizePixel = 0
        LabelInstnaces.TextLabel_1.Position = UDim2.new(0, 0, 5.7798445141088e-08, 0)
        LabelInstnaces.TextLabel_1.Size = UDim2.new(0, 400, 0, 50)
    end
    return Labels;
end

return Noti;
