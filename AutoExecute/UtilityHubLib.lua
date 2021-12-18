local InternalLib = {}

function InternalLib:CreateWindow()
    local screenGui = Instance.new("ScreenGui",game:GetService("CoreGui"))

    local Instances = {
        ["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
        ["Frame_1"] = Instance.new("Frame"),
        ["TextLabel_1"] = Instance.new("TextLabel"),
        ["UIListLayout_1"] = Instance.new("UIListLayout"),
        ["TextBox_1"] = Instance.new("TextBox"),
        ["Frame_2"] = Instance.new("Frame"),
    }
    
    screenGui.Name = 'InternalUi'
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Instances.Frame_1.Parent = screenGui
    Instances.Frame_1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.141176)
    Instances.Frame_1.BorderSizePixel = 0
    Instances.Frame_1.Position = UDim2.new(0.041360292583704, 0, 0.064516127109528, 0)
    Instances.Frame_1.Size = UDim2.new(0, 287, 0, 304)
    Instances.Frame_1.Name = 'Main'
    
    Instances.Frame_2.Parent = Instances.Frame_1
    Instances.Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.Frame_2.BorderSizePixel = 0
    Instances.Frame_2.Position = UDim2.new(0, 0, 0.098684184253216, 0)
    Instances.Frame_2.Size = UDim2.new(0, 287, 0, 1)
    Instances.Frame_2.Name = 'Border'
    
    Instances.TextBox_1.Parent = Instances.Frame_1
    Instances.TextBox_1.CursorPosition = -1
    Instances.TextBox_1.Font = Enum.Font.SourceSans
    Instances.TextBox_1.PlaceholderColor3 = Color3.new(1, 1, 1)
    Instances.TextBox_1.PlaceholderText = 'Search..'
    Instances.TextBox_1.Text = ''
    Instances.TextBox_1.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextBox_1.TextSize = 17
    Instances.TextBox_1.TextXAlignment = Enum.TextXAlignment.Left
    Instances.TextBox_1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.141176)
    Instances.TextBox_1.BorderSizePixel = 0
    Instances.TextBox_1.ClipsDescendants = true
    Instances.TextBox_1.Position = UDim2.new(0.022564452141523, 0, 0.0090000005438924, 0)
    Instances.TextBox_1.Size = UDim2.new(0, 271, 0, 24)
    Instances.TextBox_1.Name = 'SearchBox'
    
    Instances.ScrollingFrame_1.Parent = Instances.Frame_1
    Instances.ScrollingFrame_1.CanvasSize = UDim2.new(0, 0, 0, 0)
    Instances.ScrollingFrame_1.ScrollBarImageColor3 = Color3.new(0, 0, 0)
    Instances.ScrollingFrame_1.Active = true
    Instances.ScrollingFrame_1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.141176)
    Instances.ScrollingFrame_1.BorderSizePixel = 0
    Instances.ScrollingFrame_1.Position = UDim2.new(0.020905923098326, 0, 0.12171052396297, 0)
    Instances.ScrollingFrame_1.Size = UDim2.new(0, 271, 0, 267)
    
    Instances.UIListLayout_1.Parent = Instances.ScrollingFrame_1
    Instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
    
    Instances.TextLabel_1.Parent = Instances.Frame_1
    Instances.TextLabel_1.Font = Enum.Font.SourceSans
    Instances.TextLabel_1.Text = 'Press F1 To Toggle Ui'
    Instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_1.TextSize = 19
    Instances.TextLabel_1.TextWrapped = true
    Instances.TextLabel_1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.141176)
    Instances.TextLabel_1.BorderSizePixel = 0
    Instances.TextLabel_1.Position = UDim2.new(0, 0, 1, 0)
    Instances.TextLabel_1.Size = UDim2.new(0, 287, 0, 28)    

    Instances.UIListLayout_1.Padding = UDim.new(0, 2)

    local function UpdateSize()
        local cS = Instances.UIListLayout_1.AbsoluteContentSize

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

game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.F1)

    local InsideInternalLib = {}

    function InsideInternalLib:CreateButton(Title, Description, Callback)
        local Title = Title or "Title"
        local Description = Description or "Description"
        local Callback = Callback or function() end

        local Instances2 = {
            ["Frame_2"] = Instance.new("Frame"),
            ["UICorner_1"] = Instance.new("UICorner"),
            ["Frame_3"] = Instance.new("Frame"),
            ["ImageButton_1"] = Instance.new("ImageButton"),
            ["TextLabel_2"] = Instance.new("TextLabel"),
            ["TextLabel_1"] = Instance.new("TextLabel"),
        }
        
        Instances2.Frame_3.Parent = Instances.ScrollingFrame_1
        Instances2.Frame_3.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.203922)
        Instances2.Frame_3.BorderColor3 = Color3.new(0.117647, 0.117647, 0.141176)
        Instances2.Frame_3.BorderSizePixel = 0
        Instances2.Frame_3.Size = UDim2.new(0, 271, 0, 58)
        Instances2.Frame_3.Name = Title

        UpdateSize()
        
        Instances2.UICorner_1.Parent = Instances.Frame_3
        Instances2.UICorner_1.CornerRadius = UDim.new(0, 4)
        
        Instances2.TextLabel_1.Parent = Instances2.Frame_3
        Instances2.TextLabel_1.Font = Enum.Font.SourceSans
        Instances2.TextLabel_1.Text = Title
        Instances2.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_1.TextSize = 20
        Instances2.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
        Instances2.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_1.BackgroundTransparency = 1
        Instances2.TextLabel_1.Position = UDim2.new(0.036900367587805, 0, 0.051724139600992, 0)
        Instances2.TextLabel_1.Size = UDim2.new(0, 220, 0, 24)
        
        Instances2.TextLabel_2.Parent = Instances2.Frame_3
        Instances2.TextLabel_2.Font = Enum.Font.SourceSans
        Instances2.TextLabel_2.Text = Description
        Instances2.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_2.TextSize = 16
        Instances2.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
        Instances2.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
        Instances2.TextLabel_2.BackgroundTransparency = 1
        Instances2.TextLabel_2.Position = UDim2.new(0.036900367587805, 0, 0.46551725268364, 0)
        Instances2.TextLabel_2.Size = UDim2.new(0, 220, 0, 24)
        
        Instances2.ImageButton_1.Parent = Instances2.Frame_3
        Instances2.ImageButton_1.Image = 'rbxassetid://6764432408'
        Instances2.ImageButton_1.ImageRectOffset = Vector2.new(200, 550)
        Instances2.ImageButton_1.ImageRectSize = Vector2.new(50, 50)
        Instances2.ImageButton_1.BackgroundTransparency = 1
        Instances2.ImageButton_1.Position = UDim2.new(0.88191884756088, 0, 0.24137926101685, 0)
        Instances2.ImageButton_1.Rotation = 270
        Instances2.ImageButton_1.Size = UDim2.new(0, 26, 0, 30)
        Instances2.ImageButton_1.ZIndex = 2
        Instances2.ImageButton_1.Name = 'down'

        Instances2.ImageButton_1.MouseButton1Down:Connect(function()
            pcall(Callback)
        end)
        end
    return InsideInternalLib
end

return InternalLib