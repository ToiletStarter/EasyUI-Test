--!strict
--[[
    EasyUI  [Polished Edition]
    A small, dependency-free Roblox UI library with:
      * Fluid glassmorphism load-in + per-panel staggered entrance
      * Smooth custom cursor while the UI is open
      * Fully draggable sliders (with a precision "mode" toggle)
      * A draggable color picker with a live position handle + color readout
      * Auto-built Settings/Config panel (theme, custom cursor, save config, unload)
      * Live theming, toasts, watermark, keybinds
    API is backward compatible with the classic EasyUI.
]]

local Themes = {
    Midnight = {
        panel = Color3.fromRGB(18, 18, 23), header = Color3.fromRGB(24, 24, 30),
        row = Color3.fromRGB(30, 30, 37), rowAlt = Color3.fromRGB(38, 38, 46),
        border = Color3.fromRGB(52, 52, 62), borderBright = Color3.fromRGB(74, 74, 86),
        accent = Color3.fromRGB(185, 145, 255), accentDim = Color3.fromRGB(128, 100, 205),
        text = Color3.fromRGB(235, 235, 243), muted = Color3.fromRGB(155, 155, 170),
        dim = Color3.fromRGB(95, 95, 110), good = Color3.fromRGB(130, 225, 160),
        bad = Color3.fromRGB(255, 95, 105), warn = Color3.fromRGB(255, 185, 80),
        black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1),
        panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.25,
    },
    Carbon = {
        panel = Color3.fromRGB(13, 14, 16), header = Color3.fromRGB(20, 21, 24),
        row = Color3.fromRGB(26, 27, 31), rowAlt = Color3.fromRGB(33, 34, 39),
        border = Color3.fromRGB(45, 46, 52), borderBright = Color3.fromRGB(66, 67, 75),
        accent = Color3.fromRGB(110, 200, 255), accentDim = Color3.fromRGB(80, 150, 200),
        text = Color3.fromRGB(228, 230, 235), muted = Color3.fromRGB(150, 152, 162),
        dim = Color3.fromRGB(90, 92, 102), good = Color3.fromRGB(120, 220, 150),
        bad = Color3.fromRGB(255, 90, 100), warn = Color3.fromRGB(255, 180, 75),
        black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1),
        panelTrans = 0.03, rowTrans = 0.00, strokeTrans = 0.22,
    },
    Solar = {
        panel = Color3.fromRGB(28, 22, 18), header = Color3.fromRGB(36, 28, 22),
        row = Color3.fromRGB(44, 34, 26), rowAlt = Color3.fromRGB(54, 42, 32),
        border = Color3.fromRGB(78, 60, 44), borderBright = Color3.fromRGB(110, 84, 60),
        accent = Color3.fromRGB(255, 180, 70), accentDim = Color3.fromRGB(200, 135, 50),
        text = Color3.fromRGB(245, 236, 222), muted = Color3.fromRGB(175, 158, 130),
        dim = Color3.fromRGB(120, 105, 82), good = Color3.fromRGB(150, 220, 120),
        bad = Color3.fromRGB(255, 95, 90), warn = Color3.fromRGB(255, 205, 100),
        black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1),
        panelTrans = 0.05, rowTrans = 0.00, strokeTrans = 0.28,
    },
    Rose = {
        panel = Color3.fromRGB(24, 18, 22), header = Color3.fromRGB(32, 23, 28),
        row = Color3.fromRGB(40, 28, 34), rowAlt = Color3.fromRGB(50, 35, 42),
        border = Color3.fromRGB(72, 50, 60), borderBright = Color3.fromRGB(105, 72, 86),
        accent = Color3.fromRGB(255, 110, 160), accentDim = Color3.fromRGB(200, 80, 125),
        text = Color3.fromRGB(240, 228, 234), muted = Color3.fromRGB(170, 150, 160),
        dim = Color3.fromRGB(115, 98, 108), good = Color3.fromRGB(130, 220, 160),
        bad = Color3.fromRGB(255, 90, 110), warn = Color3.fromRGB(255, 185, 90),
        black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1),
        panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.25,
    },
    Ocean = {
        panel = Color3.fromRGB(16, 22, 28), header = Color3.fromRGB(22, 30, 38),
        row = Color3.fromRGB(28, 38, 47), rowAlt = Color3.fromRGB(35, 48, 59),
        border = Color3.fromRGB(48, 64, 78), borderBright = Color3.fromRGB(72, 92, 110),
        accent = Color3.fromRGB(80, 200, 220), accentDim = Color3.fromRGB(55, 150, 175),
        text = Color3.fromRGB(224, 234, 240), muted = Color3.fromRGB(150, 168, 180),
        dim = Color3.fromRGB(95, 110, 122), good = Color3.fromRGB(120, 220, 170),
        bad = Color3.fromRGB(255, 95, 110), warn = Color3.fromRGB(255, 190, 90),
        black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1),
        panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.24,
    },
    Mono = {
        panel = Color3.fromRGB(22, 22, 22), header = Color3.fromRGB(30, 30, 30),
        row = Color3.fromRGB(38, 38, 38), rowAlt = Color3.fromRGB(48, 48, 48),
        border = Color3.fromRGB(64, 64, 64), borderBright = Color3.fromRGB(96, 96, 96),
        accent = Color3.fromRGB(235, 235, 235), accentDim = Color3.fromRGB(170, 170, 170),
        text = Color3.fromRGB(240, 240, 240), muted = Color3.fromRGB(165, 165, 165),
        dim = Color3.fromRGB(110, 110, 110), good = Color3.fromRGB(150, 225, 150),
        bad = Color3.fromRGB(255, 100, 100), warn = Color3.fromRGB(255, 195, 90),
        black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1),
        panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.22,
    },
    Matrix = {
        panel = Color3.fromRGB(8, 12, 10), header = Color3.fromRGB(12, 18, 14),
        row = Color3.fromRGB(16, 24, 18), rowAlt = Color3.fromRGB(22, 32, 24),
        border = Color3.fromRGB(40, 70, 46), borderBright = Color3.fromRGB(70, 120, 78),
        accent = Color3.fromRGB(70, 255, 130), accentDim = Color3.fromRGB(50, 180, 95),
        text = Color3.fromRGB(220, 255, 228), muted = Color3.fromRGB(130, 175, 140),
        dim = Color3.fromRGB(80, 120, 88), good = Color3.fromRGB(120, 255, 160),
        bad = Color3.fromRGB(255, 80, 90), warn = Color3.fromRGB(220, 255, 110),
        black = Color3.new(0, 0, 0), white = Color3.new(1, 1, 1),
        panelTrans = 0.05, rowTrans = 0.00, strokeTrans = 0.28,
    },
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

local function mk(className, props, parent)
    local inst = Instance.new(className)
    for prop, value in pairs(props or {}) do
        pcall(function() inst[prop] = value end)
    end
    if parent then inst.Parent = parent end
    return inst
end

local function corner(radius, parent)
    return mk("UICorner", { CornerRadius = UDim.new(0, tonumber(radius) or 0) }, parent)
end

local function padding(top, bottom, left, right, parent)
    return mk("UIPadding", {
        PaddingTop = UDim.new(0, top), PaddingBottom = UDim.new(0, bottom),
        PaddingLeft = UDim.new(0, left), PaddingRight = UDim.new(0, right),
    }, parent)
end

local function stroke(color, thickness, transparency, parent)
    return mk("UIStroke", {
        Color = color, Thickness = thickness or 1, Transparency = transparency or 0,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    }, parent)
end

local function tween(inst, duration, props, style, dir)
    local info = TweenInfo.new(duration, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out)
    local ok, t = pcall(TweenService.Create, TweenService, inst, info, props)
    if ok then t:Play() end
    return t
end

local function getHost()
    local host
    pcall(function()
        host = gethui and gethui() or game:GetService("CoreGui")
    end)
    host = host or LocalPlayer:WaitForChild("PlayerGui")
    return host
end

local function rgbToHex(color)
    return string.format("#%02X%02X%02X", math.floor(color.R * 255 + 0.5), math.floor(color.G * 255 + 0.5), math.floor(color.B * 255 + 0.5))
end
local function hexToRgb(hex)
    hex = hex:gsub("#", "")
    if #hex ~= 6 then return nil end
    local r, g, b = tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
    if r and g and b then return Color3.fromRGB(r, g, b) end
    return nil
end

------------------------------------------------------------------
-- Panel
------------------------------------------------------------------
local Panel = {}
Panel.__index = Panel

function Panel:_init(ui, title, width, options)
    options = options or {}
    self._ui = ui
    self._theme = ui._theme
    local theme = self._theme

    local parent = options.Floating and ui._root or ui._panelHolder
    local pos
    if options.Position then
        pos = options.Position
    else
        local x, y = ui:_nextPanelPos(width)
        pos = UDim2.fromOffset(x, y)
    end

    local frame = mk("Frame", {
        Position = pos,
        Size = UDim2.new(0, width, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = theme.panel,
        BackgroundTransparency = theme.panelTrans,
        ZIndex = 100010,
    }, parent)
    ui:_track("panel", frame, "BackgroundColor3")
    local uiScale = mk("UIScale", { Scale = 1 }, frame)
    corner(10, frame)
    stroke(theme.border, 1, theme.strokeTrans, frame):Parent = frame
    ui:_track("border", frame:FindFirstChildOfClass("UIStroke"), "Color")
    mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 0) }, frame)

    -- glass sheen overlay
    local sheen = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 40), BackgroundTransparency = 1, ZIndex = 100013,
        BorderSizePixel = 0, ClipsDescendants = true,
    }, frame)
    corner(10, sheen)
    local sheenGrad = mk("UIGradient", {
        Rotation = 90,
        Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255)),
        Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.82), NumberSequenceKeypoint.new(1, 1) }),
    }, sheen)

    local header = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 30), BackgroundColor3 = theme.header,
        LayoutOrder = 1, ZIndex = 100011, Active = true,
    }, frame)
    ui:_track("header", header, "BackgroundColor3")
    corner(10, header)
    mk("Frame", {
        Size = UDim2.new(1, 0, 0, 12), Position = UDim2.new(0, 0, 1, -12),
        BackgroundColor3 = theme.header, BorderSizePixel = 0, ZIndex = 100010,
    }, header)
    ui:_track("header", header:FindFirstChild("Frame", true) or header, "BackgroundColor3")

    local dot = mk("Frame", {
        Size = UDim2.fromOffset(9, 9), Position = UDim2.new(0, 12, 0.5, -4.5),
        BackgroundColor3 = theme.accent, ZIndex = 100012,
    }, header)
    ui:_track("accent", dot, "BackgroundColor3")
    corner(5, dot)

    local titleLabel = mk("TextLabel", {
        Text = (ui._title and ui._title .. "  " or "") .. title,
        Font = Enum.Font.GothamMedium, TextSize = 12.5, TextColor3 = theme.text,
        BackgroundTransparency = 1, Size = UDim2.new(1, -70, 1, 0), Position = UDim2.new(0, 30, 0, 0),
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100012,
    }, header)
    ui:_track("text", titleLabel, "TextColor3")

    local collapse = mk("TextButton", {
        Text = "–", Font = Enum.Font.GothamBold, TextSize = 15, TextColor3 = theme.muted,
        BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.new(0, 26, 1, 0),
        Position = UDim2.new(1, -26, 0, 0), ZIndex = 100012,
    }, header)
    ui:_track("muted", collapse, "TextColor3")

    local body = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1, LayoutOrder = 2, ZIndex = 100011,
    }, frame)
    mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 4) }, body)
    padding(8, 10, 9, 9, body)

    local open = true
    local function setOpen(v)
        open = v
        collapse.Text = open and "–" or "+"
        if open then
            body.Visible = true
            tween(frame, 0.26, { Size = UDim2.new(0, width, 0, 0) }, Enum.EasingStyle.Quint) -- autosize handles real value
            tween(body, 0.2, { BackgroundTransparency = 1 })
            delay(0.0, function() end)
            body.Size = UDim2.new(1, 0, 0, 0)
        else
            tween(body, 0.16, { BackgroundTransparency = 1 }, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
            delay(0.14, function() if not open then body.Visible = false end end)
        end
    end
    collapse.MouseButton1Click:Connect(function() setOpen(not open) end)
    collapse.MouseEnter:Connect(function() collapse.TextColor3 = theme.accent end)
    collapse.MouseLeave:Connect(function() collapse.TextColor3 = theme.muted end)

    ui:_makeDraggable(header, frame, function()
        ui:_bringFront(frame)
        tween(uiScale, 0.09, { Scale = 1.015 }, Enum.EasingStyle.Quad)
        tween(uiScale, 0.16, { Scale = 1 }, Enum.EasingStyle.Back)
    end)

    self._frame = frame
    self._body = body
    self._header = header
    self._titleLabel = titleLabel
    self._open = true

    -- staggered glassmorphism entrance
    if not options.NoAnim then
        local baseY = pos.Y.Offset
        local bx = pos.X.Offset
        frame.Position = UDim2.new(0, bx, 0, baseY - 12)
        uiScale.Scale = 0.92
        frame.BackgroundTransparency = 1
        delay(options.Delay or 0, function()
            if not frame or not frame.Parent then return end
            tween(frame, 0.36, { Position = UDim2.new(0, bx, 0, baseY) }, Enum.EasingStyle.Quint)
            tween(uiScale, 0.38, { Scale = 1 }, Enum.EasingStyle.Back)
            tween(frame, 0.4, { BackgroundTransparency = theme.panelTrans }, Enum.EasingStyle.Quad)
        end)
    end
    return self
end

function Panel:SetTitle(title)
    self._titleLabel.Text = (self._ui._title and self._ui._title .. "  " or "") .. title
end
function Panel:SetVisible(v) self._frame.Visible = v end
function Panel:SetOrder(o) self._frame.LayoutOrder = o end
function Panel:GetFrame() return self._frame end

function Panel:_row(height)
    local theme = self._theme
    local row = mk("Frame", {
        Size = UDim2.new(1, 0, 0, height), BackgroundColor3 = theme.row,
        BackgroundTransparency = 1, ZIndex = 100012, Active = true, ClipsDescendants = true,
    }, self._body)
    self._ui:_track("row", row, "BackgroundColor3")
    corner(6, row)
    row.MouseEnter:Connect(function()
        tween(row, 0.13, { BackgroundTransparency = 0.55 })
    end)
    row.MouseLeave:Connect(function()
        tween(row, 0.16, { BackgroundTransparency = 1 })
    end)
    return row
end

function Panel:AddLabel(text)
    local theme = self._theme
    local w = { type = "label", value = text }
    local lbl = mk("TextLabel", {
        Text = text, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.muted,
        BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 16),
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013,
    }, self._body)
    self._ui:_track("muted", lbl, "TextColor3")
    self._ui:_registerWidget(w)
    return w
end

function Panel:AddSeparator(label)
    local theme = self._theme
    local w = { type = "label", value = label or "" }
    local row = mk("Frame", { Size = UDim2.new(1, 0, 0, 18), BackgroundTransparency = 1, ZIndex = 100012 }, self._body)
    mk("Frame", {
        Size = UDim2.new(0, 3, 0, 10), Position = UDim2.new(0, 0, 0.5, -5),
        BackgroundColor3 = theme.accentDim, BorderSizePixel = 0, ZIndex = 100013,
    }, row)
    self._ui:_track("accentDim", row:FindFirstChild("Frame"), "BackgroundColor3")
    mk("TextLabel", {
        Text = label or "", Font = Enum.Font.GothamMedium, TextSize = 10, TextColor3 = theme.dim,
        BackgroundTransparency = 1, Size = UDim2.new(1, -10, 1, 0), Position = UDim2.new(0, 9, 0, 0),
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013,
    }, row)
    self._ui:_track("dim", row:FindFirstChildOfClass("TextLabel"), "TextColor3")
    self._ui:_registerWidget(w)
    return w
end

function Panel:AddToggle(label, default, callback)
    local theme = self._theme
    local row = self:_row(24)
    padding(0, 0, 9, 7, row)

    local lbl = mk("TextLabel", {
        Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text,
        BackgroundTransparency = 1, Size = UDim2.new(1, -66, 1, 0), TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 100013,
    }, row)
    self._ui:_track("text", lbl, "TextColor3")

    local bindLabel = mk("TextLabel", {
        Text = "", Font = Enum.Font.Code, TextSize = 9, TextColor3 = theme.dim,
        BackgroundTransparency = 1, Size = UDim2.new(0, 42, 1, 0), AnchorPoint = Vector2.new(1, 0),
        Position = UDim2.new(1, -22, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013,
    }, row)
    self._ui:_track("dim", bindLabel, "TextColor3")

    local button = mk("TextButton", {
        Text = "", Size = UDim2.fromOffset(15, 15), AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, 0, 0.5, 0), BackgroundColor3 = theme.rowAlt,
        AutoButtonColor = false, ZIndex = 100013,
    }, row)
    self._ui:_track("rowAlt", button, "BackgroundColor3")
    corner(8, button)
    local bs = stroke(theme.borderBright, 1, 0, button)
    self._ui:_track("borderBright", bs, "Color")

    local dot = mk("Frame", {
        Size = default and UDim2.fromOffset(9, 9) or UDim2.fromOffset(0, 0),
        AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
        BackgroundColor3 = theme.accent, ZIndex = 100014,
    }, button)
    self._ui:_track("accent", dot, "BackgroundColor3")
    corner(5, dot)

    local enabled = default and true or false
    local boundKey, waiting = nil, false
    local widget = { type = "toggle", value = enabled }

    local function refresh()
        tween(dot, 0.2, { Size = enabled and UDim2.fromOffset(9, 9) or UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back)
        tween(bs, 0.16, { Color = enabled and theme.accent or theme.borderBright })
        tween(button, 0.16, { BackgroundColor3 = enabled and theme.accentDim or theme.rowAlt })
    end

    local function flip()
        enabled = not enabled
        widget.value = enabled
        refresh()
        if callback then callback(enabled) end
    end

    button.MouseButton1Click:Connect(flip)
    row.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            flip()
        elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
            waiting = true
            bindLabel.Text = "[...]"
            bindLabel.TextColor3 = theme.accent
        end
    end)

    self._ui:_trackInput(function(input, gameProcessed)
        if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
            waiting = false
            if input.KeyCode == Enum.KeyCode.Escape then
                boundKey = nil; bindLabel.Text = ""
            else
                boundKey = input.KeyCode
                bindLabel.Text = "[" .. input.KeyCode.Name .. "]"
                bindLabel.TextColor3 = theme.dim
            end
            return
        end
        if not gameProcessed and boundKey and input.KeyCode == boundKey and input.UserInputType == Enum.UserInputType.Keyboard then
            flip()
        end
    end)

    function widget:Set(v)
        enabled = v and true or false; widget.value = enabled; refresh()
        if callback then callback(enabled) end
    end
    function widget:Get() return enabled end

    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddSlider(label, min, max, default, rounding, callback, modes)
    local theme = self._theme
    local row = self:_row(34)
    padding(5, 5, 9, 9, row)

    local lbl = mk("TextLabel", {
        Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text,
        BackgroundTransparency = 1, Size = UDim2.new(0.6, 0, 0, 13), TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 100013,
    }, row)
    self._ui:_track("text", lbl, "TextColor3")

    local valueLabel = mk("TextLabel", {
        Text = tostring(default), Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.accent,
        BackgroundTransparency = 1, Size = UDim2.new(0.4, -20, 0, 13),
        Position = UDim2.new(0.6, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013,
    }, row)
    self._ui:_track("accent", valueLabel, "TextColor3")

    local modeBtn
    local modesTbl = (modes and #modes > 0) and modes or nil
    local modeIdx = 1
    local activeRounding = modesTbl and (modesTbl[1].Rounding or modesTbl[1]) or rounding

    if modesTbl then
        modeBtn = mk("TextButton", {
            Text = tostring(activeRounding), Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = theme.muted,
            BackgroundColor3 = theme.rowAlt, AutoButtonColor = false, Size = UDim2.fromOffset(18, 13),
            AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0, 0), ZIndex = 100013,
        }, row)
        self._ui:_track("rowAlt", modeBtn, "BackgroundColor3")
        self._ui:_track("muted", modeBtn, "TextColor3")
        corner(3, modeBtn)
        local mbs = stroke(theme.border, 1, 0.2, modeBtn); self._ui:_track("border", mbs, "Color")
        modeBtn.MouseEnter:Connect(function() tween(modeBtn, 0.12, { TextColor3 = theme.accent }) end)
        modeBtn.MouseLeave:Connect(function() tween(modeBtn, 0.12, { TextColor3 = theme.muted }) end)
        modeBtn.MouseButton1Click:Connect(function()
            modeIdx = (modeIdx % #modesTbl) + 1
            local m = modesTbl[modeIdx]
            activeRounding = m.Rounding or m
            modeBtn.Text = tostring(activeRounding)
            tween(modeBtn, 0.12, { Size = UDim2.fromOffset(22, 14) }, Enum.EasingStyle.Back)
            tween(modeBtn, 0.18, { Size = UDim2.fromOffset(18, 13) }, Enum.EasingStyle.Back)
            setValue(widget.value)
            if callback then callback(widget.value, modeIdx) end
        end)
    end

    local track = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 5), Position = UDim2.new(0, 0, 0, 20), BackgroundColor3 = theme.rowAlt,
        BorderSizePixel = 0, ZIndex = 100013, Active = true,
    }, row)
    self._ui:_track("rowAlt", track, "BackgroundColor3")
    corner(3, track)

    local fill = mk("Frame", {
        Size = UDim2.fromScale((default - min) / (max - min), 1), BackgroundColor3 = theme.accent,
        BorderSizePixel = 0, ZIndex = 100014,
    }, track)
    self._ui:_track("accent", fill, "BackgroundColor3")
    corner(3, fill)

    local knob = mk("Frame", {
        Size = UDim2.fromOffset(10, 10), AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new((default - min) / (max - min), 0, 0.5, 0),
        BackgroundColor3 = theme.white, ZIndex = 100015, BorderSizePixel = 0,
    }, track)
    self._ui:_track("white", knob, "BackgroundColor3")
    corner(5, knob)

    local widget = { type = "slider", value = default }

    local function roundValue(v)
        if activeRounding == nil then return v end
        if activeRounding <= 0 then return math.floor(v + 0.5) end
        local p = 10 ^ activeRounding
        return math.floor(v * p + 0.5) / p
    end

    local function setValue(v)
        v = math.clamp(v, min, max)
        local alpha = (v - min) / (max - min)
        fill.Size = UDim2.fromScale(alpha, 1)
        knob.Position = UDim2.new(alpha, 0, 0.5, 0)
        local shown = roundValue(v)
        valueLabel.Text = tostring(shown)
        widget.value = shown
        if callback then callback(shown, modeIdx) end
    end

    local dragging = false
    local function applyFromX(x)
        setValue(min + math.clamp((x - track.AbsolutePosition.X) / math.max(1, track.AbsoluteSize.X), 0, 1) * (max - min))
    end
    track.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
        dragging = true
        tween(knob, 0.1, { Size = UDim2.fromOffset(14, 14) })
        applyFromX(input.Position.X)
    end)
    self._ui:_trackInput(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            applyFromX(input.Position.X)
        end
    end)
    self._ui:_trackInputEnded(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and dragging then
            dragging = false
            tween(knob, 0.14, { Size = UDim2.fromOffset(10, 10) }, Enum.EasingStyle.Back)
        end
    end)

    function widget:Set(v) setValue(v) end
    function widget:Get() return widget.value end
    function widget:SetMode(idx) modeIdx = math.clamp(idx or 1, 1, modesTbl and #modesTbl or 1); if modeBtn then modeBtn.Text = tostring(modesTbl[modeIdx].Rounding or modesTbl[modeIdx]) end end
    function widget:GetMode() return modeIdx end

    setValue(default)
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddDropdown(label, options, default, callback)
    local theme = self._theme
    options = options or {}

    local wrapper = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 24), AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1, ZIndex = 100014, Active = true,
    }, self._body)
    mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2) }, wrapper)

    local row = mk("Frame", { Size = UDim2.new(1, 0, 0, 24), BackgroundTransparency = 1, LayoutOrder = 1, ZIndex = 100014 }, wrapper)
    padding(0, 0, 9, 7, row)

    local lbl = mk("TextLabel", {
        Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text,
        BackgroundTransparency = 1, Size = UDim2.new(0.5, 0, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100015,
    }, row)
    self._ui:_track("text", lbl, "TextColor3")

    local button = mk("TextButton", {
        Text = "", Size = UDim2.new(0, 100, 0, 18), AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, 0, 0.5, 0), BackgroundColor3 = theme.rowAlt, AutoButtonColor = false, ZIndex = 100015,
    }, row)
    self._ui:_track("rowAlt", button, "BackgroundColor3")
    corner(4, button)
    local bst = stroke(theme.border, 1, 0.2, button); self._ui:_track("border", bst, "Color")

    local valueText = mk("TextLabel", {
        Text = default, Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = theme.text,
        BackgroundTransparency = 1, Size = UDim2.new(1, -18, 1, 0), Position = UDim2.new(0, 7, 0, 0),
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100016,
    }, button)
    self._ui:_track("text", valueText, "TextColor3")

    local arrow = mk("TextLabel", {
        Text = "▾", Font = Enum.Font.Gotham, TextSize = 9, TextColor3 = theme.dim,
        BackgroundTransparency = 1, Size = UDim2.new(0, 12, 1, 0), Position = UDim2.new(1, -12, 0, 0), ZIndex = 100016,
    }, button)
    self._ui:_track("dim", arrow, "TextColor3")

    local list = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 0), BackgroundColor3 = theme.header, ClipsDescendants = true,
        LayoutOrder = 2, ZIndex = 100016, AutomaticSize = Enum.AutomaticSize.None,
    }, wrapper)
    self._ui:_track("header", list, "BackgroundColor3")
    corner(5, list)
    local lst = stroke(theme.border, 1, 0.2, list); self._ui:_track("border", lst, "Color")
    mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2) }, list)
    padding(3, 3, 3, 3, list)

    local selected = default
    local open = false
    local optionButtons = {}
    local widget = { type = "dropdown", value = default, _options = options }

    local function rebuildOptions()
        for _, b in ipairs(optionButtons) do pcall(function() b:Destroy() end) end
        optionButtons = {}
        for _, option in ipairs(options) do
            local ob = mk("TextButton", {
                Text = option, Font = Enum.Font.Gotham, TextSize = 10,
                TextColor3 = option == selected and theme.accent or theme.muted,
                BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), AutoButtonColor = false, ZIndex = 100017,
            }, list)
            if option == selected then self._ui:_track("accent", ob, "TextColor3") else self._ui:_track("muted", ob, "TextColor3") end
            corner(3, ob)
            ob.MouseEnter:Connect(function() ob.BackgroundTransparency = 0.75; ob.BackgroundColor3 = theme.accentDim end)
            ob.MouseLeave:Connect(function() if not open or ob.Text ~= selected then ob.BackgroundTransparency = 1 end end)
            ob.MouseButton1Click:Connect(function()
                selected = option; widget.value = option; valueText.Text = option
                if callback then callback(option) end
                open = false
                tween(list, 0.16, { Size = UDim2.new(1, 0, 0, 0) }, Enum.EasingStyle.Quint)
                tween(arrow, 0.2, { Rotation = 0 }, Enum.EasingStyle.Back)
                for _, b2 in ipairs(optionButtons) do
                    b2.TextColor3 = (b2.Text == option) and theme.accent or theme.muted
                end
            end)
            optionButtons[#optionButtons + 1] = ob
        end
    end

    button.MouseButton1Click:Connect(function()
        open = not open
        tween(arrow, 0.24, { Rotation = open and 180 or 0 }, Enum.EasingStyle.Back)
        tween(list, 0.2, { Size = open and UDim2.new(1, 0, 0, #options * 20 + 6) or UDim2.new(1, 0, 0, 0) }, Enum.EasingStyle.Quint)
    end)

    function widget:Set(value)
        selected = value; widget.value = value; valueText.Text = value
        for _, b2 in ipairs(optionButtons) do
            self._ui:_untrack(b2)
            b2.TextColor3 = (b2.Text == value) and theme.accent or theme.muted
        end
        if callback then callback(value) end
    end
    function widget:Get() return selected end
    function widget:SetOptions(newOptions)
        options = newOptions; widget._options = newOptions; rebuildOptions()
    end

    rebuildOptions()
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddButton(label, callback, danger)
    local theme = self._theme
    local color = danger and theme.bad or theme.accent

    local button = mk("TextButton", {
        Text = label, Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.text,
        BackgroundColor3 = theme.row, BackgroundTransparency = 0.25, AutoButtonColor = false,
        Size = UDim2.new(1, 0, 0, 24), ZIndex = 100013,
    }, self._body)
    self._ui:_track("row", button, "BackgroundColor3")
    self._ui:_track("text", button, "TextColor3")
    corner(6, button)
    local bst = stroke(theme.border, 1, 0.2, button); self._ui:_track("border", bst, "Color")

    button.MouseEnter:Connect(function()
        tween(button, 0.12, { BackgroundTransparency = 0, TextColor3 = color })
        tween(bst, 0.12, { Color = color })
    end)
    button.MouseLeave:Connect(function()
        tween(button, 0.14, { BackgroundTransparency = 0.25, TextColor3 = theme.text })
        tween(bst, 0.14, { Color = theme.border })
    end)
    button.MouseButton1Down:Connect(function() tween(button, 0.1, { Size = UDim2.new(1, -4, 0, 22) }, Enum.EasingStyle.Quad) end)
    button.MouseButton1Up:Connect(function() tween(button, 0.16, { Size = UDim2.new(1, 0, 0, 24) }, Enum.EasingStyle.Back) end)
    button.MouseButton1Click:Connect(function() if callback then callback() end end)

    local widget = { type = "button" }
    function widget:Fire() if callback then callback() end end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddColorPicker(label, defaultColor, callback)
    local theme = self._theme
    defaultColor = defaultColor or theme.white

    local row = self:_row(24)
    padding(0, 0, 9, 7, row)

    local lbl = mk("TextLabel", {
        Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text,
        BackgroundTransparency = 1, Size = UDim2.new(0.36, 0, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013,
    }, row)
    self._ui:_track("text", lbl, "TextColor3")

    local swatch = mk("TextButton", {
        Text = "", Size = UDim2.fromOffset(26, 15), AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, 0, 0.5, 0), BackgroundColor3 = defaultColor, AutoButtonColor = false, ZIndex = 100013,
    }, row)
    corner(3, swatch)
    local swatchStroke = stroke(theme.borderBright, 1, 0, swatch); self._ui:_track("borderBright", swatchStroke, "Color")

    local hexBox = mk("TextBox", {
        Text = rgbToHex(defaultColor), Font = Enum.Font.Code, TextSize = 9, TextColor3 = theme.muted,
        BackgroundColor3 = theme.rowAlt, ClearTextOnFocus = false, Size = UDim2.fromOffset(60, 15),
        AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -32, 0.5, 0),
        TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 100013,
    }, row)
    self._ui:_track("muted", hexBox, "TextColor3")
    self._ui:_track("rowAlt", hexBox, "BackgroundColor3")
    corner(3, hexBox)
    padding(0, 0, 3, 3, hexBox)

    local picker = mk("Frame", {
        Size = UDim2.fromOffset(156, 96), Position = UDim2.new(1, 10, 0, -4),
        BackgroundColor3 = theme.header, Visible = false, ZIndex = 100050, Active = true,
    }, row)
    self._ui:_track("header", picker, "BackgroundColor3")
    corner(8, picker)
    local pst = stroke(theme.border, 1, 0.12, picker); self._ui:_track("border", pst, "Color")
    padding(8, 8, 8, 8, picker)

    local hue, sat, val = 0, 0.65, 1
    local widget = { type = "color", value = defaultColor }
    local GRIDW, GRIDH, BARH = 140, 56, 12

    local function setColor(color)
        swatch.BackgroundColor3 = color
        hexBox.Text = rgbToHex(color)
        widget.value = color
        if callback then callback(color) end
    end

    local grid = mk("Frame", {
        Size = UDim2.fromOffset(GRIDW, GRIDH), BackgroundColor3 = Color3.fromHSV(hue, 1, 1),
        BorderSizePixel = 0, ZIndex = 100051, Active = true,
    }, picker)
    corner(4, grid)

    mk("UIGradient", {
        Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromHSV(hue, 1, 1)), Rotation = 0,
    }, grid)

    local shade = mk("Frame", {
        Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), BorderSizePixel = 0, ZIndex = 100052,
    }, grid)
    corner(4, shade)
    mk("UIGradient", {
        Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0) }),
        Rotation = 90,
    }, shade)

    -- sat/val position handle (the "where you clicked" cursor)
    local gridHandle = mk("Frame", {
        Size = UDim2.fromOffset(14, 14), AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromOffset(sat * GRIDW, (1 - val) * GRIDH), BackgroundTransparency = 1,
        ZIndex = 100055,
    }, grid)
    corner(7, gridHandle)
    local ghB = stroke(Color3.new(0, 0, 0), 3, 0, gridHandle)
    local ghW = mk("Frame", { Size = UDim2.fromOffset(14, 14), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), BackgroundTransparency = 1, ZIndex = 100056 }, gridHandle)
    corner(7, ghW)
    stroke(Color3.new(1, 1, 1), 2, 0, ghW)

    local hueBar = mk("Frame", {
        Size = UDim2.fromOffset(GRIDW, BARH), Position = UDim2.fromOffset(0, 65), BorderSizePixel = 0, ZIndex = 100051, Active = true,
    }, picker)
    corner(4, hueBar)
    mk("UIGradient", {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 1, 1)), ColorSequenceKeypoint.new(0.16, Color3.fromHSV(0.16, 1, 1)),
            ColorSequenceKeypoint.new(0.33, Color3.fromHSV(0.33, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.5, 1, 1)),
            ColorSequenceKeypoint.new(0.66, Color3.fromHSV(0.66, 1, 1)), ColorSequenceKeypoint.new(0.83, Color3.fromHSV(0.83, 1, 1)),
            ColorSequenceKeypoint.new(1, Color3.fromHSV(1, 1, 1)),
        }),
    }, hueBar)

    local hueHandle = mk("Frame", {
        Size = UDim2.fromOffset(4, BARH + 8), AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromOffset(hue * GRIDW, BARH / 2), BackgroundTransparency = 1, ZIndex = 100054,
    }, hueBar)
    corner(2, hueHandle)
    stroke(Color3.new(0, 0, 0), 3, 0, hueHandle)
    local hueHW = mk("Frame", { Size = UDim2.fromOffset(4, BARH + 8), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), BackgroundTransparency = 1, ZIndex = 100055 }, hueHandle)
    corner(2, hueHW)
    stroke(Color3.new(1, 1, 1), 2, 0, hueHW)

    -- live color readout chip inside the picker
    local readout = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 12), Position = UDim2.fromOffset(0, 81), BackgroundColor3 = defaultColor,
        BorderSizePixel = 0, ZIndex = 100053,
    }, picker)
    corner(3, readout)

    local draggingGrid, draggingHue = false, false

    local function updateHandles()
        gridHandle.Position = UDim2.fromOffset(sat * GRIDW, (1 - val) * GRIDH)
        hueHandle.Position = UDim2.fromOffset(hue * GRIDW, BARH / 2)
        readout.BackgroundColor3 = Color3.fromHSV(hue, sat, val)
    end

    local function applyGrid(pos)
        sat = math.clamp((pos.X - grid.AbsolutePosition.X) / math.max(1, grid.AbsoluteSize.X), 0, 1)
        val = 1 - math.clamp((pos.Y - grid.AbsolutePosition.Y) / math.max(1, grid.AbsoluteSize.Y), 0, 1)
        setColor(Color3.fromHSV(hue, sat, val))
        updateHandles()
    end

    local function applyHue(pos)
        hue = math.clamp((pos.X - hueBar.AbsolutePosition.X) / math.max(1, hueBar.AbsoluteSize.X), 0, 1)
        grid.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
        local g = grid:FindFirstChildOfClass("UIGradient")
        if g then g.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromHSV(hue, 1, 1)) end
        setColor(Color3.fromHSV(hue, sat, val))
        updateHandles()
    end

    grid.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            draggingGrid = true
            tween(gridHandle, 0.1, { Size = UDim2.fromOffset(18, 18) }, Enum.EasingStyle.Back)
            applyGrid(input.Position)
        end
    end)
    hueBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            draggingHue = true
            applyHue(input.Position)
        end
    end)
    self._ui:_trackInput(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then return end
        if draggingGrid then applyGrid(input.Position) elseif draggingHue then applyHue(input.Position) end
    end)
    self._ui:_trackInputEnded(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            draggingGrid = false; draggingHue = false
            tween(gridHandle, 0.14, { Size = UDim2.fromOffset(14, 14) }, Enum.EasingStyle.Back)
        end
    end)

    swatch.MouseButton1Click:Connect(function()
        picker.Visible = not picker.Visible
        if picker.Visible then
            hue, sat, val = Color3.toHSV(swatch.BackgroundColor3)
            grid.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
            local g = grid:FindFirstChildOfClass("UIGradient")
            if g then g.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromHSV(hue, 1, 1)) end
            updateHandles()
            tween(picker, 0.18, { BackgroundTransparency = 0, Size = UDim2.fromOffset(156, 96) }, Enum.EasingStyle.Back)
        end
    end)

    hexBox.FocusLost:Connect(function()
        local c = hexToRgb(hexBox.Text)
        if c then
            setColor(c)
            hue, sat, val = Color3.toHSV(c)
            grid.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
            local g = grid:FindFirstChildOfClass("UIGradient")
            if g then g.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromHSV(hue, 1, 1)) end
            updateHandles()
        end
    end)

    function widget:Set(color) setColor(color) end
    function widget:Get() return widget.value end

    setColor(defaultColor)
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddKeybind(label, defaultKey, callback)
    local theme = self._theme
    local row = self:_row(24)
    padding(0, 0, 9, 7, row)

    local lbl = mk("TextLabel", {
        Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text,
        BackgroundTransparency = 1, Size = UDim2.new(0.55, 0, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013,
    }, row)
    self._ui:_track("text", lbl, "TextColor3")

    local keyButton = mk("TextButton", {
        Text = "[ " .. (defaultKey and defaultKey.Name or "...") .. " ]", Font = Enum.Font.Gotham, TextSize = 10,
        TextColor3 = theme.muted, BackgroundTransparency = 1, AutoButtonColor = false,
        Size = UDim2.new(0.45, -6, 1, 0), Position = UDim2.new(0.55, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013,
    }, row)
    self._ui:_track("muted", keyButton, "TextColor3")

    local waiting = false
    local boundKey = defaultKey
    local widget = { type = "keybind", value = defaultKey }

    keyButton.MouseButton1Click:Connect(function()
        waiting = true; keyButton.Text = "[ ... ]"; keyButton.TextColor3 = theme.accent
    end)

    self._ui:_trackInput(function(input, gameProcessed)
        if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
            waiting = false
            if input.KeyCode == Enum.KeyCode.Escape then
                keyButton.Text = ""; boundKey = nil; widget.value = nil
                if callback then callback(nil) end
                return
            end
            keyButton.Text = "[ " .. input.KeyCode.Name .. " ]"; keyButton.TextColor3 = theme.muted
            boundKey = input.KeyCode; widget.value = input.KeyCode
            if callback then callback(input.KeyCode) end
            return
        end
        if not gameProcessed and boundKey and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == boundKey then
            if widget._onPress then widget._onPress() end
        end
    end)

    function widget:Set(key) boundKey = key; widget.value = key; keyButton.Text = key and ("[ " .. key.Name .. " ]") or "" end
    function widget:Get() return boundKey end
    function widget:OnPress(fn) widget._onPress = fn end

    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddTextBox(label, default, placeholder, callback)
    local theme = self._theme
    local row = self:_row(28)
    padding(4, 4, 9, 9, row)

    if label and label ~= "" then
        mk("TextLabel", {
            Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 13), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013,
        }, row)
    end

    local box = mk("TextBox", {
        Text = default or "", PlaceholderText = placeholder or "", Font = Enum.Font.Gotham, TextSize = 11,
        TextColor3 = theme.text, PlaceholderColor3 = theme.dim, BackgroundColor3 = theme.rowAlt,
        BackgroundTransparency = 0.4, ClearTextOnFocus = false, Size = UDim2.new(1, 0, 0, 18),
        Position = (label and label ~= "") and UDim2.new(0, 0, 0, 15) or UDim2.new(0, 0, 0, 5),
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013,
    }, row)
    self._ui:_track("text", box, "TextColor3")
    self._ui:_track("rowAlt", box, "BackgroundColor3")
    self._ui:_track("dim", box, "PlaceholderColor3")
    corner(4, box)
    padding(0, 0, 7, 7, box)
    local bx = stroke(theme.border, 1, 0.2, box); self._ui:_track("border", bx, "Color")
    box.Focused:Connect(function() tween(bx, 0.14, { Color = theme.accent }) end)
    box.FocusLost:Connect(function() tween(bx, 0.14, { Color = theme.border }); tween(bx, 0.14, { Transparency = 0.2 }) end)

    local widget = { type = "textbox", value = default or "" }
    box.FocusLost:Connect(function(enter)
        widget.value = box.Text
        if callback then callback(box.Text, enter) end
    end)
    function widget:Set(text) box.Text = text or ""; widget.value = box.Text end
    function widget:Get() return box.Text end
    self._ui:_registerWidget(widget)
    return widget
end

function Panel:AddProgressBar(label, initial, callback)
    local theme = self._theme
    local row = self:_row(30)
    padding(4, 4, 9, 9, row)

    local lbl = mk("TextLabel", {
        Text = label, Font = Enum.Font.Gotham, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1,
        Size = UDim2.new(0.6, 0, 0, 13), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013,
    }, row)
    self._ui:_track("text", lbl, "TextColor3")

    local pctLabel = mk("TextLabel", {
        Text = "0%", Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.accent, BackgroundTransparency = 1,
        Size = UDim2.new(0.4, 0, 0, 13), Position = UDim2.new(0.6, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013,
    }, row)
    self._ui:_track("accent", pctLabel, "TextColor3")

    local track = mk("Frame", {
        Size = UDim2.new(1, 0, 0, 5), Position = UDim2.new(0, 0, 0, 18), BackgroundColor3 = theme.rowAlt,
        BorderSizePixel = 0, ZIndex = 100013,
    }, row)
    self._ui:_track("rowAlt", track, "BackgroundColor3")
    corner(3, track)

    local fill = mk("Frame", {
        Size = UDim2.fromScale(math.clamp(initial or 0, 0, 1), 1), BackgroundColor3 = theme.accent, BorderSizePixel = 0, ZIndex = 100014,
    }, track)
    self._ui:_track("accent", fill, "BackgroundColor3")
    corner(3, fill)

    local widget = { type = "progress", value = initial or 0 }
    local function setProgress(pct)
        pct = math.clamp(pct, 0, 1); widget.value = pct
        tween(fill, 0.25, { Size = UDim2.fromScale(pct, 1) }, Enum.EasingStyle.Quint)
        pctLabel.Text = math.floor(pct * 100 + 0.5) .. "%"
        if callback then callback(pct) end
    end
    function widget:Set(pct) setProgress(pct) end
    function widget:Get() return widget.value end
    setProgress(initial or 0)
    self._ui:_registerWidget(widget)
    return widget
end

------------------------------------------------------------------
-- EasyUI
------------------------------------------------------------------
local EasyUI = {}
EasyUI.__index = EasyUI

local activeInstances = {}

function EasyUI.new(options)
    options = options or {}
    local self = setmetatable({}, EasyUI)

    local themeName = options.Theme or EasyUI._defaultTheme or "Midnight"
    local theme = Themes[themeName] or Themes.Midnight

    if options.ThemeOverride and type(options.ThemeOverride) == "table" then
        local merged = {}
        for k, v in pairs(theme) do merged[k] = v end
        for k, v in pairs(options.ThemeOverride) do merged[k] = v end
        theme = merged
    end

    self._theme = theme
    self._themeName = themeName
    self._title = options.Title or "EasyUI"
    self._menuKey = options.MenuKey or Enum.KeyCode.LeftAlt
    self._widgets = {}
    self._panels = {}
    self._inputHandlers = {}
    self._inputEndHandlers = {}
    self._styles = {}
    self._alive = true
    self._nextX, self._nextY = 16, 56
    self._panelCount = 0
    self._frontCount = 0
    self._cursorEnabled = options.Cursor ~= false
    self._savedAccent = options.Accent
    self._watermarkFn = nil

    if options.Accent then
        theme.accent = options.Accent
        theme.accentDim = Color3.fromRGB(math.floor(options.Accent.R * 180), math.floor(options.Accent.G * 180), math.floor(options.Accent.B * 180))
    end

    local host = getHost()
    local id = options.Id or ("EasyUI_" .. (tostring(os.clock()):gsub("%.", "_")))
    for _, child in ipairs(host:GetChildren()) do
        if child.Name == id then pcall(function() child:Destroy() end) end
    end

    local gui = mk("ScreenGui", {
        Name = id, ResetOnSpawn = false, IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Global,
    }, host)
    pcall(function() gui.DisplayOrder = 2147483647 end)
    pcall(function() if syn and syn.protect_gui then syn.protect_gui(gui) end end)

    self._gui = gui
    self._id = id

    local root = mk("Frame", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Visible = false, ZIndex = 100000 }, gui)
    self._root = root

    -- glassmorphism backdrop (only visible while UI is open)
    local backdrop = mk("Frame", { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 1, ZIndex = 50000 }, root)
    local backGrad = mk("UIGradient", {
        Rotation = 45, Transparency = NumberSequence.new(0.55),
        Color = ColorSequence.new(self._theme.bgGradA or Color3.fromRGB(40, 30, 70), self._theme.bgGradB or Color3.fromRGB(10, 20, 40)),
    }, backdrop)
    self._backdrop = backdrop

    local holder = mk("Frame", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 100000 }, root)
    mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 12) }, holder)
    self._panelHolder = holder

    self:_buildCursor()
    self:_buildWatermark(options.Watermark ~= false)
    self:_buildToasts()
    self:_buildConfig()

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not self._alive then return end
        if input.KeyCode == self._menuKey and not gameProcessed then
            self:_toggleMenu()
        end
        for _, fn in ipairs(self._inputHandlers) do
            fn(input, gameProcessed)
        end
    end)

    UserInputService.InputEnded:Connect(function(input, gameProcessed)
        if not self._alive then return end
        for _, fn in ipairs(self._inputEndHandlers) do
            fn(input, gameProcessed)
        end
    end)

    RunService.RenderStepped:Connect(function()
        if not self._alive then return end
        if not self._watermarkFn or not self._watermarkLabel then return end
        local data = self._watermarkFn() or {}
        local parts = { self._title }
        if data.fps then parts[#parts + 1] = data.fps .. " fps" end
        for k, v in pairs(data) do
            if k ~= "fps" then parts[#parts + 1] = tostring(k) .. ": " .. tostring(v) end
        end
        self._watermarkLabel.Text = table.concat(parts, "   •   ")
    end)

    activeInstances[#activeInstances + 1] = self

    -- fluid glass load-in
    root.Visible = true
    root.Position = UDim2.fromOffset(0, -22)
    tween(root, 0.4, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back)
    tween(backdrop, 0.45, { BackgroundTransparency = 0.32 }, Enum.EasingStyle.Quint)
    self:_refreshCursor()

    return self
end

function EasyUI:_track(role, inst, prop)
    if not inst then return end
    self._styles[#self._styles + 1] = { role = role, inst = inst, prop = prop }
end

function EasyUI:_untrack(inst)
    for i = #self._styles, 1, -1 do
        if self._styles[i].inst == inst then
            table.remove(self._styles, i)
        end
    end
end

function EasyUI:_toggleMenu()
    local v = not self._root.Visible
    self._root.Visible = v
    if v then
        tween(self._root, 0.3, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back)
        tween(self._backdrop, 0.35, { BackgroundTransparency = 0.32 }, Enum.EasingStyle.Quint)
    else
        tween(self._root, 0.22, { Position = UDim2.fromOffset(0, -16) }, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        tween(self._backdrop, 0.25, { BackgroundTransparency = 1 }, Enum.EasingStyle.Quad)
    end
    self:_refreshCursor()
end

function EasyUI:_refreshCursor()
    local show = self._alive and self._cursorEnabled and self._root.Visible
    pcall(function() UserInputService.MouseIconEnabled = not show end)
    if self._cursorRing then
        self._cursorRing.Visible = show
        self._cursorDot.Visible = show
    end
end

function EasyUI:_buildCursor()
    local theme = self._theme
    local ring = mk("Frame", {
        Size = UDim2.fromOffset(22, 22), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1,
        Position = UDim2.fromOffset(-50, -50), Visible = false, ZIndex = 300000, BorderSizePixel = 0,
    }, self._gui)
    corner(11, ring)
    local ringStroke = stroke(theme.accent, 1.5, 0, ring)
    local dot = mk("Frame", {
        Size = UDim2.fromOffset(5, 5), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = theme.accent,
        Position = UDim2.fromOffset(-50, -50), Visible = false, ZIndex = 300001, BorderSizePixel = 0,
    }, self._gui)
    corner(3, dot)
    local dotStroke = stroke(Color3.new(1, 1, 1), 1, 0, dot)

    self:_track("accent", ringStroke, "Color")
    self:_track("accent", dot, "BackgroundColor3")

    self._cursorRing = ring
    self._cursorDot = dot

    local down = false
    UserInputService.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then down = true; tween(ring, 0.1, { Size = UDim2.fromOffset(16, 16) }, Enum.EasingStyle.Back); tween(dot, 0.1, { Size = UDim2.fromOffset(3, 3) }) end end)
    UserInputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then down = false; tween(ring, 0.18, { Size = UDim2.fromOffset(22, 22) }, Enum.EasingStyle.Back); tween(dot, 0.18, { Size = UDim2.fromOffset(5, 5) }) end end)

    RunService.RenderStepped:Connect(function()
        if not self._alive or not ring.Visible then return end
        local pos = UserInputService:GetMouseLocation()
        ring.Position = UDim2.fromOffset(pos.X, pos.Y)
        dot.Position = UDim2.fromOffset(pos.X, pos.Y)
    end)
end

function EasyUI:SetCursorEnabled(v)
    self._cursorEnabled = v and true or false
    self:_refreshCursor()
end

function EasyUI:_makeDraggable(handle, frame, onGrab)
    local dragging, dragStart, startPos = false, nil, nil
    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            if onGrab then onGrab() end
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

function EasyUI:_bringFront(frame)
    self._frontCount += 1
    frame.ZIndex = 100010 + self._frontCount
end

function EasyUI:_trackInput(fn) table.insert(self._inputHandlers, fn) end
function EasyUI:_trackInputEnded(fn) table.insert(self._inputEndHandlers, fn) end
function EasyUI:_registerWidget(widget) table.insert(self._widgets, widget) end

function EasyUI:_nextPanelPos(width)
    local cam = workspace.CurrentCamera
    local viewport = (cam and cam.ViewportSize) or Vector2.new(1280, 720)
    if self._nextX + width + 16 > viewport.X then
        self._nextX = 16
        self._nextY = self._nextY + 340
    end
    local x, y = self._nextX, self._nextY
    self._nextX = self._nextX + width + 12
    return x, y
end

function EasyUI:CreatePanel(title, width)
    self._panelCount += 1
    local p = setmetatable({}, Panel)
    p:_init(self, title, width or 230, { Delay = (self._panelCount - 1) * 0.05 })
    table.insert(self._panels, p)
    return p
end

function EasyUI:CreateFloatingPanel(title, width, position)
    local p = setmetatable({}, Panel)
    p:_init(self, title, width or 230, { Floating = true, Position = position })
    table.insert(self._panels, p)
    return p
end

function EasyUI:SetMenuKey(key) self._menuKey = key end
function EasyUI:SetVisible(v)
    if self._root.Visible ~= v then self:_toggleMenu() end
end
function EasyUI:GetVisible() return self._root.Visible end

function EasyUI:GetConfig()
    local out = {}
    for i, w in ipairs(self._widgets) do
        if w.type ~= "button" and w.type ~= "label" then
            out[i] = { type = w.type, value = (w.type == "color" and w.value) and rgbToHex(w.value) or w.value }
        end
    end
    return out
end

function EasyUI:ExportConfig()
    local ok, c = pcall(function() return HttpService:JSONEncode(self:GetConfig()) end)
    return ok and c or ""
end

function EasyUI:ImportConfig(json)
    local ok, data = pcall(function() return HttpService:JSONDecode(json) end)
    if not ok or type(data) ~= "table" then return false end
    for _, w in ipairs(self._widgets) do
        for _, c in ipairs(data) do
            if c.type == w.type then
                if w.type == "color" and type(c.value) == "string" then
                    local col = hexToRgb(c.value); if col and w.Set then w:Set(col) end
                elseif w.Set and c.value ~= nil then
                    w:Set(c.value)
                end
                break
            end
        end
    end
    return true
end

function EasyUI:ApplyTheme(name)
    local pal = Themes[name]
    if not pal then self:Toast("Theme", "Unknown theme: " .. tostring(name), 2.2, "err"); return false end
    for k, v in pairs(pal) do
        if k ~= "bgGradA" and k ~= "bgGradB" then self._theme[k] = v end
    end
    -- clear any explicit accent override so theme defines it
    self._savedAccent = nil
    self._themeName = name

    for _, s in ipairs(self._styles) do
        local col = self._theme[s.role]
        if col ~= nil then
            pcall(function() s.inst[s.prop] = col end)
        end
    end
    -- re-tint backdrop gradient
    if self._backdrop then
        local g = self._backdrop:FindFirstChildOfClass("UIGradient")
        if g then
            pcall(function() g.Color = ColorSequence.new(self._theme.bgGradA or Color3.fromRGB(40, 30, 70), self._theme.bgGradB or Color3.fromRGB(10, 20, 40)) end)
        end
    end
    self:Toast("Theme", "Switched to " .. name, 2, "ok")
    return true
end

function EasyUI:GetThemeName() return self._themeName end

function EasyUI:_buildWatermark(enabled)
    local theme = self._theme
    local wm = mk("Frame", {
        Size = UDim2.new(0, 0, 0, 26), AutomaticSize = Enum.AutomaticSize.X, Position = UDim2.new(0, 14, 0, 12),
        BackgroundColor3 = theme.panel, BackgroundTransparency = 0.08, Visible = enabled, ZIndex = 180000,
    }, self._gui)
    self:_track("panel", wm, "BackgroundColor3")
    corner(6, wm)
    local wms = stroke(theme.border, 1, 0.3, wm); self:_track("border", wms, "Color")

    local dot = mk("Frame", { Size = UDim2.fromOffset(8, 8), Position = UDim2.new(0, 9, 0.5, -4), BackgroundColor3 = theme.accent, ZIndex = 180001 }, wm)
    self:_track("accent", dot, "BackgroundColor3")
    corner(4, dot)

    local label = mk("TextLabel", {
        Text = self._title, Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.text, BackgroundTransparency = 1,
        AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.new(0, 0, 1, 0), Position = UDim2.new(0, 23, 0, 0),
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 180001,
    }, wm)
    self:_track("text", label, "TextColor3")
    mk("UIPadding", { PaddingRight = UDim.new(0, 11) }, wm)

    self._watermark = wm
    self._watermarkLabel = label
    self._watermarkDot = dot

    RunService.RenderStepped:Connect(function()
        if not self._alive or not wm.Visible then return end
        dot.BackgroundColor3 = Color3.fromHSV((os.clock() * 0.12) % 1, 0.55, 1)
    end)
end

function EasyUI:SetWatermarkVisible(v) if self._watermark then self._watermark.Visible = v end end
function EasyUI:SetWatermarkStats(fn) self._watermarkFn = fn end

function EasyUI:_buildToasts()
    local holder = mk("Frame", { BackgroundTransparency = 1, Size = UDim2.new(0, 270, 1, -30), Position = UDim2.new(1, -286, 0, 16), ZIndex = 250000 }, self._gui)
    mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 7), VerticalAlignment = Enum.VerticalAlignment.Bottom, HorizontalAlignment = Enum.HorizontalAlignment.Right }, holder)
    self._toastHolder = holder
    self._toastOrder = 0
end

function EasyUI:Toast(title, msg, duration, kind)
    duration = duration or 3.2
    local theme = self._theme
    local color = (kind == "ok" and theme.good) or (kind == "err" and theme.bad) or (kind == "warn" and theme.warn) or theme.accent

    self._toastOrder += 1
    local toast = mk("Frame", {
        Size = UDim2.new(1, 60, 0, 54), Position = UDim2.new(1, 60, 0, 0), BackgroundColor3 = theme.panel,
        BackgroundTransparency = 0.04, LayoutOrder = self._toastOrder, ZIndex = 250000, ClipsDescendants = true,
    }, self._toastHolder)
    self:_track("panel", toast, "BackgroundColor3")
    corner(8, toast)
    local ts = stroke(theme.border, 1, 0.2, toast); self:_track("border", ts, "Color")

    local bar = mk("Frame", { Size = UDim2.new(0, 3, 1, -12), Position = UDim2.new(0, 6, 0, 6), BackgroundColor3 = color, BorderSizePixel = 0, ZIndex = 250001 }, toast)
    corner(2, bar)
    mk("TextLabel", { Text = title, Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = color, BackgroundTransparency = 1, Size = UDim2.new(1, -22, 0, 16), Position = UDim2.new(0, 15, 0, 7), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 250002 }, toast)
    mk("TextLabel", { Text = msg, Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = theme.muted, BackgroundTransparency = 1, Size = UDim2.new(1, -22, 0, 28), Position = UDim2.new(0, 15, 0, 23), TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, ZIndex = 250002 }, toast)
    local progress = mk("Frame", { Size = UDim2.new(1, 0, 0, 2), Position = UDim2.new(0, 0, 1, -2), BackgroundColor3 = color, BorderSizePixel = 0, ZIndex = 250003 }, toast)

    tween(toast, 0.32, { Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, 54) }, Enum.EasingStyle.Back)
    tween(progress, duration, { Size = UDim2.new(0, 0, 0, 2) }, Enum.EasingStyle.Linear)

    task.delay(duration, function()
        if not self._alive then return end
        tween(toast, 0.26, { Position = UDim2.new(1, 60, 0, 0), BackgroundTransparency = 1 })
        task.wait(0.3)
        pcall(function() toast:Destroy() end)
    end)
end

function EasyUI:_buildConfig()
    local cam = workspace.CurrentCamera
    local vx = (cam and cam.ViewportSize.X) or 1280
    local p = self:CreateFloatingPanel("Settings", 236, UDim2.fromOffset(vx - 236 - 16, 56))
    self._configPanel = p

    p:AddDropdown("Theme", EasyUI.GetThemes(), self._themeName, function(t)
        self:ApplyTheme(t)
    end)

    p:AddToggle("Custom Cursor", self._cursorEnabled, function(v)
        self:SetCursorEnabled(v)
    end)

    p:AddToggle("Show Watermark", true, function(v)
        self:SetWatermarkVisible(v)
    end)

    p:AddButton("Copy Config to Clipboard", function()
        local cfg = self:ExportConfig()
        pcall(function() if setclipboard then setclipboard(cfg) end end)
        self:Toast("Config saved", #cfg .. " bytes copied", 2.4, "ok")
    end)

    p:AddButton("Show Current Config", function()
        local ok, txt = pcall(function() return self:ExportConfig() end)
        self:Toast("Config", ok and (txt:sub(1, 120) .. (#txt > 120 and "…" or "")) or "error", 4, "info")
    end)

    p:AddSeparator("Danger zone")
    p:AddButton("Unload UI", function()
        self:Toast("Unloading", "EasyUI destroyed", 1.4, "warn")
        task.delay(0.3, function() self:Unload() end)
    end, true)
end

function EasyUI:Unload()
    self:_cleanup()
    pcall(function() self._gui:Destroy() end)
    self:Toast = function() end
end

function EasyUI:Destroy()
    self:_cleanup()
    pcall(function() self._gui:Destroy() end)
    self._widgets = {}; self._panels = {}; self._inputHandlers = {}; self._inputEndHandlers = {}; self._styles = {}
end

function EasyUI:_cleanup()
    self._alive = false
    pcall(function() UserInputService.MouseIconEnabled = true end)
    for i = #activeInstances, 1, -1 do
        if activeInstances[i] == self then table.remove(activeInstances, i) end
    end
end

function EasyUI.SetTheme(name)
    if Themes[name] then EasyUI._defaultTheme = name; return true end
    return false
end
function EasyUI.GetDefaultTheme() return EasyUI._defaultTheme or "Midnight" end
function EasyUI.GetThemes()
    local list = {}
    for k in pairs(Themes) do list[#list + 1] = k end
    table.sort(list)
    return list
end
function EasyUI.AddTheme(name, palette)
    if type(name) == "string" and type(palette) == "table" then Themes[name] = palette; return true end
    return false
end

return EasyUI
