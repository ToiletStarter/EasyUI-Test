local Themes = {
    Midnight = {
        panel = Color3.fromRGB(18, 18, 23), header = Color3.fromRGB(24, 24, 30), row = Color3.fromRGB(30, 30, 37), rowAlt = Color3.fromRGB(38, 38, 46), border = Color3.fromRGB(52, 52, 62), borderBright = Color3.fromRGB(74, 74, 86), accent = Color3.fromRGB(185, 145, 255), accentDim = Color3.fromRGB(128, 100, 205), text = Color3.fromRGB(235, 235, 243), muted = Color3.fromRGB(155, 155, 170), dim = Color3.fromRGB(95, 95, 110), good = Color3.fromRGB(130, 225, 160), bad = Color3.fromRGB(255, 95, 105), warn = Color3.fromRGB(255, 185, 80), black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1), panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.25
    },
    Carbon = {
        panel = Color3.fromRGB(13, 14, 16), header = Color3.fromRGB(20, 21, 24), row = Color3.fromRGB(26, 27, 31), rowAlt = Color3.fromRGB(33, 34, 39), border = Color3.fromRGB(45, 46, 52), borderBright = Color3.fromRGB(66, 67, 75), accent = Color3.fromRGB(110, 200, 255), accentDim = Color3.fromRGB(80, 150, 200), text = Color3.fromRGB(228, 230, 235), muted = Color3.fromRGB(150, 152, 162), dim = Color3.fromRGB(90, 92, 102), good = Color3.fromRGB(120, 220, 150), bad = Color3.fromRGB(255, 90, 100), warn = Color3.fromRGB(255, 180, 75), black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1), panelTrans = 0.03, rowTrans = 0.00, strokeTrans = 0.22
    },
    Solar = {
        panel = Color3.fromRGB(28, 22, 18), header = Color3.fromRGB(36, 28, 22), row = Color3.fromRGB(44, 34, 26), rowAlt = Color3.fromRGB(54, 42, 32), border = Color3.fromRGB(78, 60, 44), borderBright = Color3.fromRGB(110, 84, 60), accent = Color3.fromRGB(255, 180, 70), accentDim = Color3.fromRGB(200, 135, 50), text = Color3.fromRGB(245, 236, 222), muted = Color3.fromRGB(175, 158, 130), dim = Color3.fromRGB(120, 105, 82), good = Color3.fromRGB(150, 220, 120), bad = Color3.fromRGB(255, 95, 90), warn = Color3.fromRGB(255, 205, 100), black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1), panelTrans = 0.05, rowTrans = 0.00, strokeTrans = 0.28
    },
    Rose = {
        panel = Color3.fromRGB(24, 18, 22), header = Color3.fromRGB(32, 23, 28), row = Color3.fromRGB(40, 28, 34), rowAlt = Color3.fromRGB(50, 35, 42), border = Color3.fromRGB(72, 50, 60), borderBright = Color3.fromRGB(105, 72, 86), accent = Color3.fromRGB(255, 110, 160), accentDim = Color3.fromRGB(200, 80, 125), text = Color3.fromRGB(240, 228, 234), muted = Color3.fromRGB(170, 150, 160), dim = Color3.fromRGB(115, 98, 108), good = Color3.fromRGB(130, 220, 160), bad = Color3.fromRGB(255, 90, 110), warn = Color3.fromRGB(255, 185, 90), black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1), panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.25
    },
    Ocean = {
        panel = Color3.fromRGB(16, 22, 28), header = Color3.fromRGB(22, 30, 38), row = Color3.fromRGB(28, 38, 47), rowAlt = Color3.fromRGB(35, 48, 59), border = Color3.fromRGB(48, 64, 78), borderBright = Color3.fromRGB(72, 92, 110), accent = Color3.fromRGB(80, 200, 220), accentDim = Color3.fromRGB(55, 150, 175), text = Color3.fromRGB(224, 234, 240), muted = Color3.fromRGB(150, 168, 180), dim = Color3.fromRGB(95, 110, 122), good = Color3.fromRGB(120, 220, 170), bad = Color3.fromRGB(255, 95, 110), warn = Color3.fromRGB(255, 190, 90), black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1), panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.24
    },
    Mono = {
        panel = Color3.fromRGB(22, 22, 22), header = Color3.fromRGB(30, 30, 30), row = Color3.fromRGB(38, 38, 38), rowAlt = Color3.fromRGB(48, 48, 48), border = Color3.fromRGB(64, 64, 64), borderBright = Color3.fromRGB(96, 96, 96), accent = Color3.fromRGB(235, 235, 235), accentDim = Color3.fromRGB(170, 170, 170), text = Color3.fromRGB(240, 240, 240), muted = Color3.fromRGB(165, 165, 165), dim = Color3.fromRGB(110, 110, 110), good = Color3.fromRGB(150, 225, 150), bad = Color3.fromRGB(255, 100, 100), warn = Color3.fromRGB(255, 195, 90), black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1), panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.22
    }
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

local function new(className, props, parent)
    local inst = Instance.new(className)
    for prop, value in pairs(props or {}) do pcall(function() inst[prop] = value end) end
    if parent then inst.Parent = parent end
    return inst
end

local function corner(radius, parent) return new("UICorner", { CornerRadius = UDim.new(0, radius) }, parent) end
local function padding(top, bottom, left, right, parent)
    return new("UIPadding", { PaddingTop = UDim.new(0, top), PaddingBottom = UDim.new(0, bottom), PaddingLeft = UDim.new(0, left), PaddingRight = UDim.new(0, right) }, parent)
end
local function stroke(color, thickness, transparency, parent)
    return new("UIStroke", { Color = color, Thickness = thickness or 1, Transparency = transparency or 0 }, parent)
end
local function tween(inst, duration, props, style, dir)
    local info = TweenInfo.new(duration, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out)
    local t = TweenService:Create(inst, info, props)
    t:Play()
    return t
end
local function getHost()
    local host
    pcall(function() host = gethui and gethui() or game:GetService("CoreGui") end)
    host = host or LocalPlayer:WaitForChild("PlayerGui")
    return host
end

local Panel = {}
Panel.__index = Panel

function Panel:_init(ui, title, width)
    self._ui = ui
    self._theme = ui._theme
    local theme = self._theme
    local x, y = ui:_nextPanelPos(width)
    local frame = new("Frame", { Position = UDim2.fromOffset(x, y), Size = UDim2.new(0, width, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = theme.panel, BackgroundTransparency = theme.panelTrans, ZIndex = 100010 }, ui._root)
    corner(8, frame)
    stroke(theme.border, 1, theme.strokeTrans, frame)
    new("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder }, frame)
    local header = new("Frame", { Size = UDim2.new(1, 0, 0, 28), BackgroundColor3 = theme.header, LayoutOrder = 1, ZIndex = 100011 }, frame)
    corner(8, header)
    new("Frame", { Size = UDim2.new(1, 0, 0, 10), Position = UDim2.new(0, 0, 1, -10), BackgroundColor3 = theme.header, BorderSizePixel = 0, ZIndex = 100010 }, header)
    local dot = new("Frame", { Size = UDim2.fromOffset(8, 8), Position = UDim2.new(0, 10, 0.5, -4), BackgroundColor3 = theme.accent, ZIndex = 100012 }, header)
    corner(4, dot)
    new("TextLabel", { Text = (ui._title and ui._title .. ": " or "") .. title, Font = Enum.Font.GothamMedium, TextSize = 12, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(1, -60, 1, 0), Position = UDim2.new(0, 26, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100012 }, header)
    local collapse = new("TextButton", { Text = "–", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = theme.muted, BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.new(0, 24, 1, 0), Position = UDim2.new(1, -26, 0, 0), ZIndex = 100012 }, header)
    local body = new("Frame", { Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, LayoutOrder = 2, ZIndex = 100011 }, frame)
    new("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 3) }, body)
    padding(6, 8, 8, 8, body)
    local open = true
    collapse.MouseButton1Click:Connect(function() open = not open body.Visible = open collapse.Text = open and "–" or "+" end)
    collapse.MouseEnter:Connect(function() collapse.TextColor3 = theme.accent end)
    collapse.MouseLeave:Connect(function() collapse.TextColor3 = theme.muted end)
    ui:_makeDraggable(header, frame)
    self._frame = frame
    self._body = body
    self._header = header
    self._open = true
    return self
end

function Panel:SetTitle(title)
    for _, child in ipairs(self._header:GetChildren()) do if child:IsA("TextLabel") then child.Text = (self._ui._title and self._ui._title .. ": " or "") .. title break end end
end
function Panel:SetVisible(visible) self._frame.Visible = visible end
function Panel:SetOrder(order) self._frame.LayoutOrder = order end

function Panel:_row(height)
    local theme = self._theme
    local row = new("Frame", { Size = UDim2.new(1, 0, 0, height), BackgroundColor3 = theme.row, BackgroundTransparency = 1, ZIndex = 100012 }, self._body)
    corner(5, row)
    row.MouseEnter:Connect(function() tween(row, 0.12, { BackgroundTransparency = 0.55 }) end)
    row.MouseLeave:Connect(function() tween(row, 0.12, { BackgroundTransparency = 1 }) end)
    return row
end

function Panel:AddLabel(text)
    local theme = self._theme
    new("TextLabel", { Text = text, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.muted, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 16), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, self._body)
end

function Panel:AddSeparator(label)
    local theme = self._theme
    local row = new("Frame", { Size = UDim2.new(1, 0, 0, 18), BackgroundTransparency = 1, ZIndex = 100012 }, self._body)
    new("Frame", { Size = UDim2.new(0, 3, 0, 10), Position = UDim2.new(0, 0, 0.5, -5), BackgroundColor3 = theme.accentDim, BorderSizePixel = 0, ZIndex = 100013 }, row)
    new("TextLabel", { Text = label or "", Font = Enum.Font.GothamMedium, TextSize = 10, TextColor3 = theme.dim, BackgroundTransparency = 1, Size = UDim2.new(1, -10, 1, 0), Position = UDim2.new(0, 9, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
end

function Panel:AddToggle(label, default, callback)
    local theme = self._theme
    local row = self:_row(24)
    padding(0, 0, 8, 6, row)
    new("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(1, -66, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
    local bindLabel = new("TextLabel", { Text = "", Font = Enum.Font.Code, TextSize = 9, TextColor3 = theme.dim, BackgroundTransparency = 1, Size = UDim2.new(0, 42, 1, 0), AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -20, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013 }, row)
    local button = new("TextButton", { Text = "", Size = UDim2.fromOffset(14, 14), AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), BackgroundColor3 = theme.rowAlt, AutoButtonColor = false, ZIndex = 100013 }, row)
    corner(7, button)
    stroke(default and theme.accent or theme.borderBright, 1, 0, button)
    local dot = new("Frame", { Size = default and UDim2.fromOffset(8, 8) or UDim2.fromOffset(0, 0), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), BackgroundColor3 = theme.accent, ZIndex = 100014 }, button)
    corner(4, dot)
    local enabled = default and true or false
    local boundKey
    local waiting = false
    local widget = { type = "toggle", value = enabled }
    local function refresh()
        tween(dot, 0.18, { Size = enabled and UDim2.fromOffset(8, 8) or UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back)
        local s = button:FindFirstChildOfClass("UIStroke")
        if s then tween(s, 0.15, { Color = enabled and theme.accent or theme.borderBright }) end
    end
    local function flip()
        enabled = not enabled
        widget.value = enabled
        refresh()
        if callback then callback(enabled) end
    end
    button.MouseButton1Click:Connect(flip)
    row.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then flip()
        elseif input.UserInputType == Enum.UserInputType.MouseButton2 then waiting = true bindLabel.Text = "[...]" bindLabel.TextColor3 = theme.accent end
    end)
    self._ui:_trackInput(function(input, gameProcessed)
        if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
            waiting = false
            if input.KeyCode == Enum.KeyCode.Escape then boundKey = nil bindLabel.Text = ""
            else boundKey = input.KeyCode bindLabel.Text = "[" .. input.KeyCode.Name .. "]" bindLabel.TextColor3 = theme.dim end
            return
        end
        if not gameProcessed and boundKey and input.KeyCode == boundKey then flip() end
    end)
    function widget:Set(value) enabled = value and true or false widget.value = enabled refresh() if callback then callback(enabled) end end
    function widget:Get() return enabled end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddSlider(label, min, max, default, rounding, callback)
    local theme = self._theme
    local row = self:_row(32)
    padding(4, 4, 8, 8, row)
    new("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(0.65, 0, 0, 13), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
    local valueLabel = new("TextLabel", { Text = tostring(default), Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.accent, BackgroundTransparency = 1, Size = UDim2.new(0.35, 0, 0, 13), Position = UDim2.new(0.65, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013 }, row)
    local track = new("Frame", { Size = UDim2.new(1, 0, 0, 4), Position = UDim2.new(0, 0, 0, 19), BackgroundColor3 = theme.rowAlt, BorderSizePixel = 0, ZIndex = 100013 }, row)
    corner(2, track)
    local fill = new("Frame", { Size = UDim2.fromScale((default - min) / (max - min), 1), BackgroundColor3 = theme.accent, BorderSizePixel = 0, ZIndex = 100014 }, track)
    corner(2, fill)
    local knob = new("Frame", { Size = UDim2.fromOffset(10, 10), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new((default - min) / (max - min), 0, 0.5, 0), BackgroundColor3 = theme.white, ZIndex = 100015 }, track)
    corner(5, knob)
    local widget = { type = "slider", value = default }
    local function setValue(value)
        value = math.clamp(value, min, max)
        local alpha = (value - min) / (max - min)
        fill.Size = UDim2.fromScale(alpha, 1)
        knob.Position = UDim2.new(alpha, 0, 0.5, 0)
        local shown = (rounding == 0 or not rounding) and math.floor(value) or math.floor(value * 10 ^ rounding + 0.5) / 10 ^ rounding
        valueLabel.Text = tostring(shown)
        widget.value = shown
        if callback then callback(shown) end
    end
    local dragging = false
    track.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
        dragging = true
        tween(knob, 0.1, { Size = UDim2.fromOffset(13, 13) })
        setValue(min + math.clamp((input.Position.X - track.AbsolutePosition.X) / track.AbsoluteSize.X, 0, 1) * (max - min))
    end)
    self._ui:_trackInput(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            setValue(min + math.clamp((input.Position.X - track.AbsolutePosition.X) / track.AbsoluteSize.X, 0, 1) * (max - min))
        end
    end)
    self._ui:_trackInputEnded(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and dragging then
            dragging = false
            tween(knob, 0.12, { Size = UDim2.fromOffset(10, 10) })
        end
    end)
    function widget:Set(value) setValue(value) end
    function widget:Get() return widget.value end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddDropdown(label, options, default, callback)
    local theme = self._theme
    local wrapper = new("Frame", { Size = UDim2.new(1, 0, 0, 24), AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, ZIndex = 100014 }, self._body)
    new("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2) }, wrapper)
    local row = new("Frame", { Size = UDim2.new(1, 0, 0, 24), BackgroundTransparency = 1, LayoutOrder = 1, ZIndex = 100014 }, wrapper)
    padding(0, 0, 8, 6, row)
    new("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(0.5, 0, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100015 }, row)
    local button = new("TextButton", { Text = "", Size = UDim2.new(0, 96, 0, 18), AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), BackgroundColor3 = theme.rowAlt, AutoButtonColor = false, ZIndex = 100015 }, row)
    corner(4, button)
    stroke(theme.border, 1, 0.2, button)
    local valueText = new("TextLabel", { Text = default, Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(1, -16, 1, 0), Position = UDim2.new(0, 6, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100016 }, button)
    new("TextLabel", { Text = "▾", Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = theme.dim, BackgroundTransparency = 1, Size = UDim2.new(0, 12, 1, 0), Position = UDim2.new(1, -12, 0, 0), ZIndex = 100016 }, button)
    local list = new("Frame", { Size = UDim2.new(1, 0, 0, 0), BackgroundColor3 = theme.header, ClipsDescendants = true, LayoutOrder = 2, ZIndex = 100016 }, wrapper)
    corner(5, list)
    stroke(theme.border, 1, 0.2, list)
    new("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder }, list)
    padding(3, 3, 3, 3, list)
    local selected = default
    local open = false
    local optionButtons = {}
    local widget = { type = "dropdown", value = default, _options = options }
    local function rebuildOptions()
        for _, b in ipairs(optionButtons) do b:Destroy() end
        optionButtons = {}
        for _, option in ipairs(options) do
            local optionButton = new("TextButton", { Text = option, Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = option == selected and theme.accent or theme.muted, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), AutoButtonColor = false, ZIndex = 100017 }, list)
            corner(3, optionButton)
            optionButton.MouseEnter:Connect(function() optionButton.BackgroundTransparency = 0.7 optionButton.BackgroundColor3 = theme.accentDim end)
            optionButton.MouseLeave:Connect(function() optionButton.BackgroundTransparency = 1 end)
            optionButton.MouseButton1Click:Connect(function()
                selected = option
                widget.value = option
                valueText.Text = option
                if callback then callback(option) end
                open = false
                tween(list, 0.14, { Size = UDim2.new(1, 0, 0, 0) })
                for _, b2 in ipairs(optionButtons) do b2.TextColor3 = b2.Text == option and theme.accent or theme.muted end
            end)
            optionButtons[#optionButtons + 1] = optionButton
        end
    end
    button.MouseButton1Click:Connect(function()
        open = not open
        tween(list, 0.16, { Size = open and UDim2.new(1, 0, 0, #options * 18 + 6) or UDim2.new(1, 0, 0, 0) }, Enum.EasingStyle.Quint)
    end)
    function widget:Set(value)
        selected = value
        widget.value = value
        valueText.Text = value
        for _, b2 in ipairs(optionButtons) do b2.TextColor3 = b2.Text == value and theme.accent or theme.muted end
        if callback then callback(value) end
    end
    function widget:Get() return selected end
    function widget:SetOptions(newOptions) options = newOptions widget._options = newOptions rebuildOptions() end
    rebuildOptions()
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddButton(label, callback, danger)
    local theme = self._theme
    local color = danger and theme.bad or theme.accent
    local button = new("TextButton", { Text = label, Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.text, BackgroundColor3 = theme.row, BackgroundTransparency = 0.3, AutoButtonColor = false, Size = UDim2.new(1, 0, 0, 24), ZIndex = 100013 }, self._body)
    corner(5, button)
    stroke(theme.border, 1, 0.2, button)
    button.MouseEnter:Connect(function()
        tween(button, 0.12, { BackgroundTransparency = 0, TextColor3 = color })
        local s = button:FindFirstChildOfClass("UIStroke")
        if s then s.Color = color end
    end)
    button.MouseLeave:Connect(function()
        tween(button, 0.12, { BackgroundTransparency = 0.3, TextColor3 = theme.text })
        local s = button:FindFirstChildOfClass("UIStroke")
        if s then s.Color = theme.border end
    end)
    button.MouseButton1Click:Connect(function() if callback then callback() end end)
    local widget = { type = "button" }
    function widget:Fire() if callback then callback() end end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddColorPicker(label, defaultColor, callback)
    local theme = self._theme
    local row = self:_row(24)
    padding(0, 0, 8, 6, row)
    new("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(0.4, 0, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
    local swatch = new("TextButton", { Text = "", Size = UDim2.fromOffset(24, 14), AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), BackgroundColor3 = defaultColor, AutoButtonColor = false, ZIndex = 100013 }, row)
    corner(3, swatch)
    stroke(theme.borderBright, 1, 0, swatch)
    local hexBox = new("TextBox", { Text = string.format("#%02X%02X%02X", math.floor(defaultColor.R * 255), math.floor(defaultColor.G * 255), math.floor(defaultColor.B * 255)), Font = Enum.Font.Code, TextSize = 9, TextColor3 = theme.muted, BackgroundColor3 = theme.rowAlt, ClearTextOnFocus = false, Size = UDim2.fromOffset(58, 15), AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -30, 0.5, 0), TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 100013 }, row)
    corner(3, hexBox)
    local picker = new("Frame", { Size = UDim2.fromOffset(150, 92), Position = UDim2.new(1, 8, 0, 0), BackgroundColor3 = theme.header, Visible = false, ZIndex = 100050 }, row)
    corner(6, picker)
    stroke(theme.border, 1, 0.15, picker)
    padding(7, 7, 7, 7, picker)
    local hue, sat, val = 0, 0.65, 1
    local widget = { type = "color", value = defaultColor }
    local function setColor(color)
        swatch.BackgroundColor3 = color
        hexBox.Text = string.format("#%02X%02X%02X", math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255))
        widget.value = color
        if callback then callback(color) end
    end
    local grid = new("Frame", { Size = UDim2.fromOffset(136, 54), BackgroundColor3 = Color3.fromHSV(hue, 1, 1), BorderSizePixel = 0, ZIndex = 100051 }, picker)
    corner(4, grid)
    new("UIGradient", { Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromHSV(hue, 1, 1)), Rotation = 0 }, grid)
    local shade = new("Frame", { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0, BorderSizePixel = 0, ZIndex = 100052 }, grid)
    corner(4, shade)
    new("UIGradient", { Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0) }), Rotation = 90 }, shade)
    local hueBar = new("Frame", { Size = UDim2.fromOffset(136, 12), Position = UDim2.fromOffset(0, 61), BorderSizePixel = 0, ZIndex = 100051 }, picker)
    corner(3, hueBar)
    new("UIGradient", { Color = ColorSequence.new({ NumberSequenceKeypoint.new(0, Color3.fromHSV(0, 1, 1)), NumberSequenceKeypoint.new(0.16, Color3.fromHSV(0.16, 1, 1)), NumberSequenceKeypoint.new(0.33, Color3.fromHSV(0.33, 1, 1)), NumberSequenceKeypoint.new(0.5, Color3.fromHSV(0.5, 1, 1)), NumberSequenceKeypoint.new(0.66, Color3.fromHSV(0.66, 1, 1)), NumberSequenceKeypoint.new(0.83, Color3.fromHSV(0.83, 1, 1)), NumberSequenceKeypoint.new(1, Color3.fromHSV(1, 1, 1)) }) }, hueBar)
    local draggingGrid, draggingHue = false, false
    local function applyGrid(pos)
        sat = math.clamp((pos.X - grid.AbsolutePosition.X) / grid.AbsoluteSize.X, 0, 1)
        val = 1 - math.clamp((pos.Y - grid.AbsolutePosition.Y) / grid.AbsoluteSize.Y, 0, 1)
        setColor(Color3.fromHSV(hue, sat, val))
    end
    local function applyHue(pos)
        hue = math.clamp((pos.X - hueBar.AbsolutePosition.X) / hueBar.AbsoluteSize.X, 0, 1)
        grid.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
        setColor(Color3.fromHSV(hue, sat, val))
    end
    grid.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then draggingGrid = true applyGrid(input.Position) end end)
    hueBar.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then draggingHue = true applyHue(input.Position) end end)
    self._ui:_trackInput(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
        if draggingGrid then applyGrid(input.Position) elseif draggingHue then applyHue(input.Position) end
    end)
    self._ui:_trackInputEnded(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then draggingGrid = false draggingHue = false end
    end)
    swatch.MouseButton1Click:Connect(function() picker.Visible = not picker.Visible end)
    hexBox.FocusLost:Connect(function()
        local hex = hexBox.Text:gsub("#", "")
        if #hex ~= 6 then return end
        local r = tonumber(hex:sub(1, 2), 16)
        local g = tonumber(hex:sub(3, 4), 16)
        local b = tonumber(hex:sub(5, 6), 16)
        if r and g and b then setColor(Color3.fromRGB(r, g, b)) end
    end)
    function widget:Set(color) setColor(color) end
    function widget:Get() return widget.value end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddKeybind(label, defaultKey, callback)
    local theme = self._theme
    local row = self:_row(24)
    padding(0, 0, 8, 6, row)
    new("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(0.55, 0, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
    local keyButton = new("TextButton", { Text = "[ " .. (defaultKey and defaultKey.Name or "...") .. " ]", Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = theme.muted, BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.new(0.45, -6, 1, 0), Position = UDim2.new(0.55, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013 }, row)
    local waiting = false
    local boundKey = defaultKey
    local widget = { type = "keybind", value = defaultKey }
    keyButton.MouseButton1Click:Connect(function() waiting = true keyButton.Text = "[ ... ]" keyButton.TextColor3 = theme.accent end)
    self._ui:_trackInput(function(input, gameProcessed)
        if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
            waiting = false
            if input.KeyCode == Enum.KeyCode.Escape then keyButton.Text = "" boundKey = nil widget.value = nil if callback then callback(nil) end return end
            keyButton.Text = "[" .. input.KeyCode.Name .. "]"
            keyButton.TextColor3 = theme.muted
            boundKey = input.KeyCode
            widget.value = input.KeyCode
            if callback then callback(input.KeyCode) end
            return
        end
        if not gameProcessed and boundKey and input.KeyCode == boundKey and input.UserInputType == Enum.UserInputType.Keyboard then
            if widget._onPress then widget._onPress() end
        end
    end)
    function widget:Set(key) boundKey = key widget.value = key keyButton.Text = key and ("[" .. key.Name .. "]") or "" end
    function widget:Get() return boundKey end
    function widget:OnPress(fn) widget._onPress = fn end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddTextBox(label, default, placeholder, callback)
    local theme = self._theme
    local row = self:_row(28)
    padding(4, 4, 8, 8, row)
    if label and label ~= "" then
        new("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 13), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
    end
    local box = new("TextBox", { Text = default or "", PlaceholderText = placeholder or "", Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, PlaceholderColor3 = theme.dim, BackgroundColor3 = theme.rowAlt, BackgroundTransparency = 0.4, ClearTextOnFocus = false, Size = UDim2.new(1, 0, 0, 18), Position = label and UDim2.new(0, 0, 0, 15) or UDim2.new(0, 0, 0, 5), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
    corner(4, box)
    padding(0, 0, 6, 6, box)
    stroke(theme.border, 1, 0.2, box)
    local widget = { type = "textbox", value = default or "" }
    box.FocusLost:Connect(function(enter) widget.value = box.Text if callback then callback(box.Text, enter) end end)
    function widget:Set(text) box.Text = text widget.value = text end
    function widget:Get() return box.Text end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddProgressBar(label, initial, callback)
    local theme = self._theme
    local row = self:_row(30)
    padding(4, 4, 8, 8, row)
    new("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(0.65, 0, 0, 13), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
    local pctLabel = new("TextLabel", { Text = "0%", Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.accent, BackgroundTransparency = 1, Size = UDim2.new(0.35, 0, 0, 13), Position = UDim2.new(0.65, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013 }, row)
    local track = new("Frame", { Size = UDim2.new(1, 0, 0, 5), Position = UDim2.new(0, 0, 0, 17), BackgroundColor3 = theme.rowAlt, BorderSizePixel = 0, ZIndex = 100013 }, row)
    corner(3, track)
    local fill = new("Frame", { Size = UDim2.fromScale(math.clamp(initial or 0, 0, 1), 1), BackgroundColor3 = theme.accent, BorderSizePixel = 0, ZIndex = 100014 }, track)
    corner(3, fill)
    local widget = { type = "progress", value = initial or 0 }
    local function setProgress(pct)
        pct = math.clamp(pct, 0, 1)
        widget.value = pct
        tween(fill, 0.15, { Size = UDim2.fromScale(pct, 1) })
        pctLabel.Text = math.floor(pct * 100 + 0.5) .. "%"
        if callback then callback(pct) end
    end
    function widget:Set(pct) setProgress(pct) end
    function widget:Get() return widget.value end
    setProgress(initial or 0)
    self._ui:_registerWidget(widget)
    return widget
end

local EasyUI = {}
EasyUI.__index = EasyUI
local activeInstances = {}

function EasyUI.new(options)
    options = options or {}
    local self = setmetatable({}, EasyUI)
    local themeName = options.Theme or "Midnight"
    local theme = Themes[themeName] or Themes.Midnight
    if options.ThemeOverride and type(options.ThemeOverride) == "table" then
        local merged = {}
        for k, v in pairs(theme) do merged[k] = v end
        for k, v in pairs(options.ThemeOverride) do merged[k] = v end
        theme = merged
    end
    self._theme = theme
    self._title = options.Title or "EasyUI"
    self._menuKey = options.MenuKey or Enum.KeyCode.LeftAlt
    self._widgets = {}
    self._panels = {}
    self._inputHandlers = {}
    self._inputEndHandlers = {}
    self._watermarkFn = nil
    self._alive = true
    self._nextX, self._nextY = 16, 52
    if options.Accent then
        theme.accent = options.Accent
        theme.accentDim = Color3.fromRGB(math.floor(options.Accent.R * 180), math.floor(options.Accent.G * 180), math.floor(options.Accent.B * 180))
    end
    local host = getHost()
    local id = options.Id or "EasyUI_" .. (tostring(os.clock()):gsub("%.", "_"))
    for _, child in ipairs(host:GetChildren()) do if child.Name == id then pcall(function() child:Destroy() end) end end
    local gui = new("ScreenGui", { Name = id, ResetOnSpawn = false, IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Global }, host)
    pcall(function() gui.DisplayOrder = 2147483647 end)
    pcall(function() if syn and syn.protect_gui then syn.protect_gui(gui) end end)
    self._gui = gui
    self._id = id
    local root = new("Frame", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Visible = false, ZIndex = 100000 }, gui)
    self._root = root
    self:_buildWatermark(options.Watermark ~= false)
    self:_buildToasts()
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if input.KeyCode == self._menuKey and not gameProcessed then
            local visible = not root.Visible
            root.Visible = visible
            if visible then root.Position = UDim2.fromOffset(0, -14) tween(root, 0.22, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back) end
        end
        for _, fn in ipairs(self._inputHandlers) do fn(input, gameProcessed) end
    end)
    UserInputService.InputEnded:Connect(function(input, gameProcessed) for _, fn in ipairs(self._inputEndHandlers) do fn(input, gameProcessed) end end)
    RunService.RenderStepped:Connect(function()
        if not self._alive or not self._watermarkFn then return end
        local data = self._watermarkFn() or {}
        local parts = { self._title }
        if data.fps then parts[#parts + 1] = data.fps .. "fps" end
        for k, v in pairs(data) do if k ~= "fps" then parts[#parts + 1] = tostring(k) .. ": " .. tostring(v) end end
        self._watermarkLabel.Text = table.concat(parts, "  •  ")
    end)
    activeInstances[#activeInstances + 1] = self
    root.Visible = true
    root.Position = UDim2.fromOffset(0, -14)
    tween(root, 0.22, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back)
    return self
end

function EasyUI:_nextPanelPos(width)
    local viewport = workspace.CurrentCamera.ViewportSize
    if self._nextX + width + 16 > viewport.X then self._nextX = 16 self._nextY = self._nextY + 330 end
    local x, y = self._nextX, self._nextY
    self._nextX = self._nextX + width + 12
    return x, y
end

function EasyUI:_makeDraggable(handle, frame)
    local dragging, dragStart, startPos
    handle.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = true dragStart = input.Position startPos = frame.Position end end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = false end end)
end

function EasyUI:_trackInput(fn) table.insert(self._inputHandlers, fn) end
function EasyUI:_trackInputEnded(fn) table.insert(self._inputEndHandlers, fn) end
function EasyUI:_registerWidget(widget) table.insert(self._widgets, widget) end
function EasyUI:CreatePanel(title, width)
    local p = setmetatable({}, Panel)
    p:_init(self, title, width or 226)
    self._panels[#self._panels + 1] = p
    return p
end
function EasyUI:SetMenuKey(key) self._menuKey = key end
function EasyUI:SetVisible(visible) self._root.Visible = visible end
function EasyUI:GetVisible() return self._root.Visible end
function EasyUI:GetConfig()
    local out = {}
    for i, w in ipairs(self._widgets) do if w.type ~= "button" and w.type ~= "label" then out[i] = { type = w.type, value = w.value } end end
    return out
end
function EasyUI:GetWidgets() return self._widgets end
function EasyUI:GetPanels() return self._panels end

function EasyUI:_buildWatermark(enabled)
    local theme = self._theme
    local wm = new("Frame", { Size = UDim2.new(0, 0, 0, 24), AutomaticSize = Enum.AutomaticSize.X, Position = UDim2.new(0, 14, 0, 12), BackgroundColor3 = theme.panel, BackgroundTransparency = 0.08, Visible = enabled, ZIndex = 180000 }, self._gui)
    corner(6, wm)
    stroke(theme.border, 1, 0.3, wm)
    local dot = new("Frame", { Size = UDim2.fromOffset(7, 7), Position = UDim2.new(0, 8, 0.5, -3), BackgroundColor3 = theme.accent, ZIndex = 180001 }, wm)
    corner(4, dot)
    local label = new("TextLabel", { Text = self._title, Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.new(0, 0, 1, 0), Position = UDim2.new(0, 21, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 180001 }, wm)
    new("UIPadding", { PaddingRight = UDim.new(0, 10) }, wm)
    self._watermark = wm
    self._watermarkLabel = label
    self._watermarkDot = dot
    RunService.RenderStepped:Connect(function()
        if not self._alive or not wm.Visible then return end
        dot.BackgroundColor3 = Color3.fromHSV((os.clock() * 0.12) % 1, 0.6, 1)
    end)
end

function EasyUI:SetWatermarkVisible(visible) self._watermark.Visible = visible end
function EasyUI:SetWatermarkStats(fn) self._watermarkFn = fn end

function EasyUI:_buildToasts()
    local theme = self._theme
    local holder = new("Frame", { BackgroundTransparency = 1, Size = UDim2.new(0, 260, 1, -30), Position = UDim2.new(1, -272, 0, 15), ZIndex = 200000 }, self._gui)
    new("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 6), VerticalAlignment = Enum.VerticalAlignment.Bottom, HorizontalAlignment = Enum.HorizontalAlignment.Right }, holder)
    self._toastHolder = holder
    self._toastOrder = 0
end

function EasyUI:Toast(title, msg, duration, kind)
    duration = duration or 3.2
    local theme = self._theme
    local color = kind == "ok" and theme.good or kind == "err" and theme.bad or kind == "warn" and theme.warn or theme.accent
    self._toastOrder = self._toastOrder + 1
    local toast = new("Frame", { Size = UDim2.new(1, 50, 0, 52), Position = UDim2.new(1, 50, 0, 0), BackgroundColor3 = theme.panel, BackgroundTransparency = 0.05, LayoutOrder = self._toastOrder, ZIndex = 200000, ClipsDescendants = true }, self._toastHolder)
    corner(7, toast)
    stroke(theme.border, 1, 0.2, toast)
    local bar = new("Frame", { Size = UDim2.new(0, 3, 1, -10), Position = UDim2.new(0, 5, 0, 5), BackgroundColor3 = color, BorderSizePixel = 0, ZIndex = 200001 }, toast)
    corner(2, bar)
    new("TextLabel", { Text = title, Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = color, BackgroundTransparency = 1, Size = UDim2.new(1, -22, 0, 15), Position = UDim2.new(0, 14, 0, 6), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 200002 }, toast)
    new("TextLabel", { Text = msg, Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = theme.muted, BackgroundTransparency = 1, Size = UDim2.new(1, -22, 0, 26), Position = UDim2.new(0, 14, 0, 21), TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 200002 }, toast)
    local progress = new("Frame", { Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2), BackgroundColor3 = color, BorderSizePixel = 0, ZIndex = 200003 }, toast)
    tween(toast, 0.3, { Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, 52) }, Enum.EasingStyle.Back)
    tween(progress, duration, { Size = UDim2.new(0, 0, 0, 2) }, Enum.EasingStyle.Linear)
    task.delay(duration, function()
        if not self._alive then return end
        tween(toast, 0.25, { Position = UDim2.new(1, 50, 0, 0), BackgroundTransparency = 1 })
        task.wait(0.3)
        pcall(function() toast:Destroy() end)
    end)
end

function EasyUI:Destroy()
    self._alive = false
    for i = #activeInstances, 1, -1 do if activeInstances[i] == self then table.remove(activeInstances, i) end end
    pcall(function() self._gui:Destroy() end)
    self._widgets = {}
    self._panels = {}
    self._inputHandlers = {}
    self._inputEndHandlers = {}
end

function EasyUI.SetTheme(name) if Themes[name] then EasyUI._defaultTheme = name return true end return false end
function EasyUI.GetThemes() local list = {} for k in pairs(Themes) do list[#list + 1] = k end table.sort(list) return list end
function EasyUI.AddTheme(name, palette) if type(name) == "string" and type(palette) == "table" then Themes[name] = palette return true end return false end

return EasyUI
