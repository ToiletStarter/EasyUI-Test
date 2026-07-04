local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local StatsService = game:GetService("Stats")
local LocalPlayer = Players.LocalPlayer

local Themes = {
	PinkMatte = {
		panel = Color3.fromRGB(18, 18, 20),
		header = Color3.fromRGB(25, 25, 28),
		row = Color3.fromRGB(30, 30, 34),
		rowAlt = Color3.fromRGB(38, 38, 42),
		border = Color3.fromRGB(54, 54, 60),
		borderBright = Color3.fromRGB(80, 80, 88),
		accent = Color3.fromRGB(255, 184, 213),
		accentDim = Color3.fromRGB(210, 138, 170),
		text = Color3.fromRGB(248, 248, 250),
		muted = Color3.fromRGB(172, 172, 182),
		dim = Color3.fromRGB(108, 108, 118),
		good = Color3.fromRGB(140, 230, 170),
		bad = Color3.fromRGB(255, 115, 130),
		warn = Color3.fromRGB(255, 205, 120),
		black = Color3.new(0, 0, 0),
		white = Color3.new(1, 1, 1),
		panelTrans = 0.03,
		rowTrans = 0,
		strokeTrans = 0.25,
	},
	Midnight = {
		panel = Color3.fromRGB(18, 18, 23),
		header = Color3.fromRGB(24, 24, 30),
		row = Color3.fromRGB(30, 30, 37),
		rowAlt = Color3.fromRGB(38, 38, 46),
		border = Color3.fromRGB(52, 52, 62),
		borderBright = Color3.fromRGB(74, 74, 86),
		accent = Color3.fromRGB(185, 145, 255),
		accentDim = Color3.fromRGB(128, 100, 205),
		text = Color3.fromRGB(235, 235, 243),
		muted = Color3.fromRGB(155, 155, 170),
		dim = Color3.fromRGB(95, 95, 110),
		good = Color3.fromRGB(130, 225, 160),
		bad = Color3.fromRGB(255, 95, 105),
		warn = Color3.fromRGB(255, 185, 80),
		black = Color3.new(0, 0, 0),
		white = Color3.new(1, 1, 1),
		panelTrans = 0.04,
		rowTrans = 0,
		strokeTrans = 0.25,
	},
	Carbon = {
		panel = Color3.fromRGB(13, 14, 16),
		header = Color3.fromRGB(20, 21, 24),
		row = Color3.fromRGB(26, 27, 31),
		rowAlt = Color3.fromRGB(33, 34, 39),
		border = Color3.fromRGB(45, 46, 52),
		borderBright = Color3.fromRGB(66, 67, 75),
		accent = Color3.fromRGB(110, 200, 255),
		accentDim = Color3.fromRGB(80, 150, 200),
		text = Color3.fromRGB(228, 230, 235),
		muted = Color3.fromRGB(150, 152, 162),
		dim = Color3.fromRGB(90, 92, 102),
		good = Color3.fromRGB(120, 220, 150),
		bad = Color3.fromRGB(255, 90, 100),
		warn = Color3.fromRGB(255, 180, 75),
		black = Color3.new(0, 0, 0),
		white = Color3.new(1, 1, 1),
		panelTrans = 0.03,
		rowTrans = 0,
		strokeTrans = 0.22,
	},
	Solar = {
		panel = Color3.fromRGB(28, 22, 18),
		header = Color3.fromRGB(36, 28, 22),
		row = Color3.fromRGB(44, 34, 26),
		rowAlt = Color3.fromRGB(54, 42, 32),
		border = Color3.fromRGB(78, 60, 44),
		borderBright = Color3.fromRGB(110, 84, 60),
		accent = Color3.fromRGB(255, 180, 70),
		accentDim = Color3.fromRGB(200, 135, 50),
		text = Color3.fromRGB(245, 236, 222),
		muted = Color3.fromRGB(175, 158, 130),
		dim = Color3.fromRGB(120, 105, 82),
		good = Color3.fromRGB(150, 220, 120),
		bad = Color3.fromRGB(255, 95, 90),
		warn = Color3.fromRGB(255, 205, 100),
		black = Color3.new(0, 0, 0),
		white = Color3.new(1, 1, 1),
		panelTrans = 0.05,
		rowTrans = 0,
		strokeTrans = 0.28,
	},
	Rose = {
		panel = Color3.fromRGB(24, 18, 22),
		header = Color3.fromRGB(32, 23, 28),
		row = Color3.fromRGB(40, 28, 34),
		rowAlt = Color3.fromRGB(50, 35, 42),
		border = Color3.fromRGB(72, 50, 60),
		borderBright = Color3.fromRGB(105, 72, 86),
		accent = Color3.fromRGB(255, 110, 160),
		accentDim = Color3.fromRGB(200, 80, 125),
		text = Color3.fromRGB(240, 228, 234),
		muted = Color3.fromRGB(170, 150, 160),
		dim = Color3.fromRGB(115, 98, 108),
		good = Color3.fromRGB(130, 220, 160),
		bad = Color3.fromRGB(255, 90, 110),
		warn = Color3.fromRGB(255, 185, 90),
		black = Color3.new(0, 0, 0),
		white = Color3.new(1, 1, 1),
		panelTrans = 0.04,
		rowTrans = 0,
		strokeTrans = 0.25,
	},
	Ocean = {
		panel = Color3.fromRGB(16, 22, 28),
		header = Color3.fromRGB(22, 30, 38),
		row = Color3.fromRGB(28, 38, 47),
		rowAlt = Color3.fromRGB(35, 48, 59),
		border = Color3.fromRGB(48, 64, 78),
		borderBright = Color3.fromRGB(72, 92, 110),
		accent = Color3.fromRGB(80, 200, 220),
		accentDim = Color3.fromRGB(55, 150, 175),
		text = Color3.fromRGB(224, 234, 240),
		muted = Color3.fromRGB(150, 168, 180),
		dim = Color3.fromRGB(95, 110, 122),
		good = Color3.fromRGB(120, 220, 170),
		bad = Color3.fromRGB(255, 95, 110),
		warn = Color3.fromRGB(255, 190, 90),
		black = Color3.new(0, 0, 0),
		white = Color3.new(1, 1, 1),
		panelTrans = 0.04,
		rowTrans = 0,
		strokeTrans = 0.24,
	},
	Mono = {
		panel = Color3.fromRGB(22, 22, 22),
		header = Color3.fromRGB(30, 30, 30),
		row = Color3.fromRGB(38, 38, 38),
		rowAlt = Color3.fromRGB(48, 48, 48),
		border = Color3.fromRGB(64, 64, 64),
		borderBright = Color3.fromRGB(96, 96, 96),
		accent = Color3.fromRGB(235, 235, 235),
		accentDim = Color3.fromRGB(170, 170, 170),
		text = Color3.fromRGB(240, 240, 240),
		muted = Color3.fromRGB(165, 165, 165),
		dim = Color3.fromRGB(110, 110, 110),
		good = Color3.fromRGB(150, 225, 150),
		bad = Color3.fromRGB(255, 100, 100),
		warn = Color3.fromRGB(255, 195, 90),
		black = Color3.new(0, 0, 0),
		white = Color3.new(1, 1, 1),
		panelTrans = 0.04,
		rowTrans = 0,
		strokeTrans = 0.22,
	},
}

local function mk(className, props, parent)
	local inst = Instance.new(className)
	for prop, value in pairs(props or {}) do
		pcall(function()
			inst[prop] = value
		end)
	end
	if parent then
		inst.Parent = parent
	end
	return inst
end

local function corner(r, parent)
	return mk("UICorner", { CornerRadius = UDim.new(0, tonumber(r) or 0) }, parent)
end

local function padding(t, b, l, r, parent)
	return mk("UIPadding", {
		PaddingTop = UDim.new(0, t),
		PaddingBottom = UDim.new(0, b),
		PaddingLeft = UDim.new(0, l),
		PaddingRight = UDim.new(0, r),
	}, parent)
end

local function stroke(color, thickness, transparency, parent)
	return mk("UIStroke", {
		Color = color,
		Thickness = thickness or 1,
		Transparency = transparency or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	}, parent)
end

local Anim = {}

function Anim.to(inst, duration, props, style, dir)
	if not inst then return end
	local info = TweenInfo.new(duration, style or Enum.EasingStyle.Quart, dir or Enum.EasingDirection.Out)
	local t = TweenService:Create(inst, info, props)
	t:Play()
	return t
end

function Anim.smooth(inst, duration, props)
	return Anim.to(inst, duration, props, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
end

function Anim.spring(inst, duration, props)
	return Anim.to(inst, duration, props, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end

function Anim.soft(inst, duration, props)
	return Anim.to(inst, duration, props, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
end

local function getHost()
	local host
	pcall(function()
		host = (gethui and gethui()) or game:GetService("CoreGui")
	end)
	return host or LocalPlayer:WaitForChild("PlayerGui")
end

local function hexOf(c)
	return string.format(
		"#%02X%02X%02X",
		math.floor(c.R * 255 + 0.5),
		math.floor(c.G * 255 + 0.5),
		math.floor(c.B * 255 + 0.5)
	)
end

local function isClick(input)
	return input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch
end

local function isMove(input)
	return input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch
end

local hasAutoCanvas = pcall(function()
	return Enum.AutomaticCanvasSize.Y
end)

local WidgetRegistry = {}
local PluginRegistry = {}

local Panel = {}
local PanelMethods = {}

function Panel.new(ui, title, opts)
	opts = opts or {}
	local self = setmetatable({}, Panel)
	self._ui = ui
	self.theme = ui.theme
	self._widgets = {}
	self._maxHeight = opts.MaxHeight or ui.config.PanelMaxHeight
	self._open = opts.Open ~= false
	self._frameWidth = opts.Width or 250

	local width = self._frameWidth
	local x, y = ui:_nextPanelPos(width)
	local theme = self.theme

	local frame = mk("Frame", {
		Name = "Panel",
		Position = UDim2.fromOffset(x, y - 26),
		Size = UDim2.new(0, width, 0, 32),
		AutomaticSize = Enum.AutomaticSize.None,
		BackgroundColor3 = theme.panel,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 100010,
		ClipsDescendants = false,
	}, ui.root)
	corner(10, frame)
	stroke(theme.border, 1, theme.strokeTrans, frame)

	local glass = mk("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = theme.white,
		BackgroundTransparency = 0.94,
		BorderSizePixel = 0,
		ZIndex = 100009,
	}, frame)
	corner(10, glass)

	local header = mk("Frame", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = theme.header,
		BackgroundTransparency = 0.08,
		BorderSizePixel = 0,
		ZIndex = 100011,
	}, frame)
	corner(10, header)

	mk("Frame", {
		Size = UDim2.new(1, 0, 0, 12),
		Position = UDim2.new(0, 0, 1, -12),
		BackgroundColor3 = theme.header,
		BackgroundTransparency = 0.08,
		BorderSizePixel = 0,
		ZIndex = 100010,
	}, header)

	local dot = mk("Frame", {
		Size = UDim2.fromOffset(8, 8),
		Position = UDim2.new(0, 12, 0.5, -4),
		BackgroundColor3 = theme.accent,
		BorderSizePixel = 0,
		ZIndex = 100012,
	}, header)
	corner(4, dot)

	task.spawn(function()
		while dot.Parent and ui._alive do
			Anim.soft(dot, 1.15, { Size = UDim2.fromOffset(10, 10) })
			task.wait(1.15)
			Anim.soft(dot, 1.15, { Size = UDim2.fromOffset(8, 8) })
			task.wait(1.15)
		end
	end)

	local titleLabel = mk("TextLabel", {
		Text = title,
		Font = Enum.Font.GothamMedium,
		TextSize = 13,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -66, 1, 0),
		Position = UDim2.new(0, 28, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100012,
	}, header)

	local collapse = mk("TextButton", {
		Text = self._open and "–" or "+",
		Font = Enum.Font.GothamBold,
		TextSize = 17,
		TextColor3 = theme.muted,
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Size = UDim2.new(0, 32, 1, 0),
		Position = UDim2.new(1, -34, 0, 0),
		ZIndex = 100012,
	}, header)

	local bodyProps = {
		Size = UDim2.new(1, 0, 0, 0),
		Position = UDim2.new(0, 0, 0, 32),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		ScrollBarThickness = 3,
		ScrollBarImageColor3 = theme.accent,
		ScrollBarImageTransparency = 0.45,
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ClipsDescendants = true,
		ZIndex = 100011,
		Visible = self._open,
	}
	if hasAutoCanvas then
		bodyProps.AutomaticCanvasSize = Enum.AutomaticCanvasSize.Y
	end

	local body = mk("ScrollingFrame", bodyProps, frame)

	local layout = mk("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 4),
	}, body)
	padding(10, 12, 10, 10, body)

	local function refreshHeight()
		if not frame or not frame.Parent then return end

		if not self._open then
			Anim.soft(body, 0.2, { Size = UDim2.new(1, 0, 0, 0) })
			Anim.soft(frame, 0.23, { Size = UDim2.new(0, width, 0, 32) })
			task.delay(0.22, function()
				if body and not self._open then
					body.Visible = false
				end
			end)
			return
		end

		body.Visible = true

		local contentH = layout.AbsoluteContentSize.Y + 24
		local displayH = math.clamp(contentH, 0, self._maxHeight)

		Anim.soft(body, 0.22, { Size = UDim2.new(1, 0, 0, displayH) })
		Anim.soft(frame, 0.22, { Size = UDim2.new(0, width, 0, 32 + displayH) })

		if not hasAutoCanvas then
			body.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
		end
	end

	layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(refreshHeight)

	self.frame = frame
	self.body = body
	self.header = header
	self.titleLabel = titleLabel
	self._refreshHeight = refreshHeight

	collapse.MouseButton1Click:Connect(function()
		self._open = not self._open
		collapse.Text = self._open and "–" or "+"
		Anim.soft(collapse, 0.12, { TextColor3 = self._open and theme.accent or theme.muted })
		refreshHeight()
	end)

	collapse.MouseEnter:Connect(function()
		Anim.soft(collapse, 0.14, { TextColor3 = theme.accent })
	end)

	collapse.MouseLeave:Connect(function()
		Anim.soft(collapse, 0.14, { TextColor3 = theme.muted })
	end)

	ui:_makeDraggable(header, frame)

	task.defer(refreshHeight)
	task.delay(0.08, refreshHeight)
	task.delay(0.18, refreshHeight)

	Anim.soft(frame, 0.38, {
		Position = UDim2.fromOffset(x, y),
		BackgroundTransparency = theme.panelTrans + 0.1,
	})

	return self
end

function PanelMethods:_ctx()
	return {
		theme = self.theme,
		ui = self._ui,
		panel = self,
		body = self.body,
		mk = mk,
		corner = corner,
		padding = padding,
		stroke = stroke,
		Anim = Anim,
		row = function(h) return self:Row(h) end,
		register = function(w) return self:_register(w) end,
		trackInput = function(fn) return self._ui:_trackInput(fn) end,
		trackInputEnded = function(fn) return self._ui:_trackInputEnded(fn) end,
		isClick = isClick,
		isMove = isMove,
		refresh = function() if self._refreshHeight then self._refreshHeight() end end,
	}
end

function PanelMethods:_register(widget)
	widget = widget or {}
	table.insert(self._widgets, widget)
	self._ui:_registerWidget(widget)
	if self._refreshHeight then
		task.defer(self._refreshHeight)
		task.delay(0.05, self._refreshHeight)
	end
	return widget
end

function PanelMethods:Row(height)
	local theme = self.theme
	local row = mk("Frame", {
		Size = UDim2.new(1, 0, 0, height or 28),
		BackgroundColor3 = theme.row,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 100012,
	}, self.body)
	corner(7, row)
	row.MouseEnter:Connect(function()
		Anim.soft(row, 0.12, { BackgroundTransparency = 0.5 })
	end)
	row.MouseLeave:Connect(function()
		Anim.soft(row, 0.15, { BackgroundTransparency = 1 })
	end)
	return row
end

function PanelMethods:AddCustom(builder, ...)
	assert(type(builder) == "function", "AddCustom expects a function")
	return builder(self, self:_ctx(), ...)
end

function PanelMethods:SetTitle(t)
	self.titleLabel.Text = t
end

function PanelMethods:SetMaxHeight(px)
	self._maxHeight = tonumber(px) or self._maxHeight
	if self._refreshHeight then self._refreshHeight() end
end

function PanelMethods:SetOrder(o)
	self.frame.LayoutOrder = o
end

function PanelMethods:SetVisible(v)
	local theme = self.theme
	if v then
		self.frame.Visible = true
		Anim.soft(self.frame, 0.24, { BackgroundTransparency = theme.panelTrans + 0.1 })
		if self._refreshHeight then self._refreshHeight() end
	else
		Anim.soft(self.frame, 0.18, { BackgroundTransparency = 1 })
		task.delay(0.2, function()
			if self.frame then self.frame.Visible = false end
		end)
	end
end

function PanelMethods:Open()
	if not self._open then
		self._open = true
		if self._refreshHeight then self._refreshHeight() end
	end
end

function PanelMethods:Close()
	if self._open then
		self._open = false
		if self._refreshHeight then self._refreshHeight() end
	end
end

function PanelMethods:Toggle()
	self._open = not self._open
	if self._refreshHeight then self._refreshHeight() end
end

function PanelMethods:GetFrame()
	return self.frame
end

function PanelMethods:GetBody()
	return self.body
end

function PanelMethods:Destroy()
	pcall(function()
		self.frame:Destroy()
	end)
end

Panel.__index = function(tbl, key)
	local direct = PanelMethods[key]
	if direct then return direct end

	if type(key) == "string" and key:sub(1, 3) == "Add" then
		local name = key:sub(4)
		local builder = WidgetRegistry[name]
		if builder then
			return function(self, ...)
				return builder(self, self:_ctx(), ...)
			end
		end
	end

	return nil
end

WidgetRegistry.Label = function(panel, ctx, text)
	local theme = ctx.theme
	local lbl = ctx.mk("TextLabel", {
		Text = text or "",
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.muted,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 18),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		AutomaticSize = Enum.AutomaticSize.Y,
		ZIndex = 100013,
	}, ctx.body)

	local w = { type = "label", value = text or "" }

	function w:Set(t)
		w.value = t or ""
		lbl.Text = w.value
		ctx.refresh()
	end

	function w:Get()
		return w.value
	end

	return ctx.register(w)
end

WidgetRegistry.Separator = function(panel, ctx, label)
	local theme = ctx.theme
	local row = ctx.mk("Frame", {
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 100012,
	}, ctx.body)

	ctx.mk("Frame", {
		Size = UDim2.new(0, 3, 0, 10),
		Position = UDim2.new(0, 0, 0.5, -5),
		BackgroundColor3 = theme.accentDim,
		BorderSizePixel = 0,
		ZIndex = 100013,
	}, row)

	ctx.mk("TextLabel", {
		Text = label or "",
		Font = Enum.Font.GothamMedium,
		TextSize = 11,
		TextColor3 = theme.dim,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -10, 1, 0),
		Position = UDim2.new(0, 9, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 100013,
	}, row)

	return ctx.register({ type = "label", value = label or "" })
end

WidgetRegistry.Toggle = function(panel, ctx, label, default, callback)
	local theme = ctx.theme
	local row = ctx.row(30)
	ctx.padding(0, 0, 10, 8, row)

	ctx.mk("TextLabel", {
		Text = label,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -112, 1, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local bindLabel = ctx.mk("TextLabel", {
		Text = "",
		Font = Enum.Font.Code,
		TextSize = 10,
		TextColor3 = theme.dim,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 64, 1, 0),
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, -48, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Right,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local button = ctx.mk("TextButton", {
		Text = "",
		Size = UDim2.fromOffset(42, 22),
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, 0, 0.5, 0),
		BackgroundColor3 = theme.rowAlt,
		AutoButtonColor = false,
		ZIndex = 100013,
	}, row)
	corner(11, button)
	local bstroke = ctx.stroke(default and theme.accent or theme.borderBright, 1, 0, button)

	local knob = ctx.mk("Frame", {
		Size = UDim2.fromOffset(14, 14),
		AnchorPoint = Vector2.new(0, 0.5),
		Position = default and UDim2.new(1, -18, 0.5, 0) or UDim2.new(0, 4, 0.5, 0),
		BackgroundColor3 = default and theme.accent or theme.muted,
		BorderSizePixel = 0,
		ZIndex = 100014,
	}, button)
	corner(7, knob)

	local enabled = default and true or false
	local boundKey
	local waiting = false
	local widget = { type = "toggle", value = enabled }

	local function refresh()
		Anim.spring(knob, 0.22, {
			Position = enabled and UDim2.new(1, -18, 0.5, 0) or UDim2.new(0, 4, 0.5, 0),
			BackgroundColor3 = enabled and theme.accent or theme.muted,
		})
		Anim.soft(bstroke, 0.14, { Color = enabled and theme.accent or theme.borderBright })
		Anim.soft(button, 0.14, { BackgroundColor3 = enabled and theme.accentDim or theme.rowAlt })
	end

	local function flip()
		enabled = not enabled
		widget.value = enabled
		refresh()
		if callback then task.spawn(callback, enabled) end
	end

	button.MouseButton1Click:Connect(flip)

	row.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			waiting = true
			bindLabel.Text = "[...]"
			bindLabel.TextColor3 = theme.accent
		end
	end)

	ctx.trackInput(function(input, gp)
		if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
			waiting = false
			if input.KeyCode == Enum.KeyCode.Escape then
				boundKey = nil
				bindLabel.Text = ""
			else
				boundKey = input.KeyCode
				bindLabel.Text = "[" .. input.KeyCode.Name .. "]"
				bindLabel.TextColor3 = theme.dim
			end
			return
		end

		if not gp and boundKey and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == boundKey then
			flip()
		end
	end)

	function widget:Set(v)
		enabled = v and true or false
		widget.value = enabled
		refresh()
		if callback then task.spawn(callback, enabled) end
	end

	function widget:Get()
		return enabled
	end

	function widget:SetBind(key)
		boundKey = key
		bindLabel.Text = key and ("[" .. key.Name .. "]") or ""
	end

	function widget:GetBind()
		return boundKey
	end

	return ctx.register(widget)
end

WidgetRegistry.Slider = function(panel, ctx, label, min, max, default, rounding, callback)
	local theme = ctx.theme
	min = min or 0
	max = max or 100
	default = default == nil and min or default
	local span = max - min
	if span == 0 then span = 1 end

	local row = ctx.row(42)
	ctx.padding(6, 6, 10, 10, row)

	ctx.mk("TextLabel", {
		Text = label,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.6, 0, 0, 16),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local valueLabel = ctx.mk("TextLabel", {
		Text = tostring(default),
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextColor3 = theme.accent,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.4, 0, 0, 16),
		Position = UDim2.new(0.6, 0, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Right,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local track = ctx.mk("Frame", {
		Size = UDim2.new(1, 0, 0, 6),
		Position = UDim2.new(0, 0, 0, 27),
		BackgroundColor3 = theme.rowAlt,
		BorderSizePixel = 0,
		ZIndex = 100013,
	}, row)
	corner(3, track)

	local fill = ctx.mk("Frame", {
		Size = UDim2.fromScale((default - min) / span, 1),
		BackgroundColor3 = theme.accent,
		BorderSizePixel = 0,
		ZIndex = 100014,
	}, track)
	corner(3, fill)

	local knob = ctx.mk("Frame", {
		Size = UDim2.fromOffset(15, 15),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new((default - min) / span, 0, 0.5, 0),
		BackgroundColor3 = theme.white,
		BorderSizePixel = 0,
		ZIndex = 100015,
	}, track)
	corner(8, knob)
	ctx.stroke(theme.accentDim, 1, 0, knob)

	local dragging = false
	local widget = { type = "slider", value = default, _min = min, _max = max }

	local function round(v)
		if rounding == nil then return v end
		if rounding == 0 then return math.floor(v + 0.5) end
		local p = 10 ^ rounding
		return math.floor(v * p + 0.5) / p
	end

	local function setValue(v, animate)
		v = math.clamp(v, min, max)
		local a = (v - min) / span

		if animate then
			Anim.smooth(fill, 0.1, { Size = UDim2.fromScale(a, 1) })
			Anim.smooth(knob, 0.1, { Position = UDim2.new(a, 0, 0.5, 0) })
		else
			fill.Size = UDim2.fromScale(a, 1)
			knob.Position = UDim2.new(a, 0, 0.5, 0)
		end

		local shown = round(v)
		valueLabel.Text = tostring(shown)
		widget.value = shown

		if callback then task.spawn(callback, shown) end
	end

	local function fromX(px)
		local size = math.max(track.AbsoluteSize.X, 1)
		return min + math.clamp((px - track.AbsolutePosition.X) / size, 0, 1) * span
	end

	local function begin(input)
		dragging = true
		Anim.spring(knob, 0.1, { Size = UDim2.fromOffset(18, 18) })
		setValue(fromX(input.Position.X), false)
	end

	track.InputBegan:Connect(function(input)
		if isClick(input) then
			begin(input)
		elseif input.UserInputType == Enum.UserInputType.MouseWheel then
			setValue(widget.value + input.Position.Z * (span / 50), true)
		end
	end)

	knob.InputBegan:Connect(function(input)
		if isClick(input) then
			begin(input)
		end
	end)

	ctx.trackInput(function(input)
		if dragging and isMove(input) then
			setValue(fromX(input.Position.X), false)
		end
	end)

	ctx.trackInputEnded(function(input)
		if dragging and isClick(input) then
			dragging = false
			Anim.spring(knob, 0.14, { Size = UDim2.fromOffset(15, 15) })
		end
	end)

	function widget:Set(v)
		setValue(v, true)
	end

	function widget:Get()
		return widget.value
	end

	setValue(default, false)
	return ctx.register(widget)
end

WidgetRegistry.ModeToggle = function(panel, ctx, label, modes, defaultIndex, callback)
	local theme = ctx.theme
	modes = modes or {}
	defaultIndex = defaultIndex or 1

	if #modes == 0 then
		return ctx.register({ type = "modetoggle", value = 0, _modes = {} })
	end

	local row = ctx.row(42)
	ctx.padding(6, 6, 10, 10, row)

	ctx.mk("TextLabel", {
		Text = label,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 16),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local track = ctx.mk("Frame", {
		Size = UDim2.new(1, 0, 0, 24),
		Position = UDim2.new(0, 0, 0, 20),
		BackgroundColor3 = theme.rowAlt,
		BorderSizePixel = 0,
		ZIndex = 100013,
	}, row)
	corner(12, track)

	local segW = 1 / #modes

	local fill = ctx.mk("Frame", {
		Size = UDim2.fromScale(segW, 1),
		Position = UDim2.fromScale((defaultIndex - 1) * segW, 0),
		BackgroundColor3 = theme.accent,
		BackgroundTransparency = 0.14,
		BorderSizePixel = 0,
		ZIndex = 100014,
	}, track)
	corner(12, fill)

	local labels = {}
	for i, name in ipairs(modes) do
		labels[i] = ctx.mk("TextLabel", {
			Text = name,
			Font = Enum.Font.GothamMedium,
			TextSize = 10,
			TextColor3 = i == defaultIndex and theme.text or theme.dim,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(segW, 1),
			Position = UDim2.fromScale((i - 1) * segW, 0),
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 100016,
		}, track)
	end

	local widget = { type = "modetoggle", value = defaultIndex, _modes = modes }

	local function snap(idx)
		idx = math.clamp(idx, 1, #modes)
		widget.value = idx
		Anim.spring(fill, 0.22, { Position = UDim2.fromScale((idx - 1) * segW, 0) })
		for i, lbl in ipairs(labels) do
			Anim.soft(lbl, 0.14, { TextColor3 = i == idx and theme.text or theme.dim })
		end
		if callback then task.spawn(callback, idx, modes[idx]) end
	end

	track.InputBegan:Connect(function(input)
		if isClick(input) then
			local rel = (input.Position.X - track.AbsolutePosition.X) / math.max(track.AbsoluteSize.X, 1)
			snap(math.floor(rel * #modes) + 1)
		end
	end)

	function widget:Set(i)
		snap(i)
	end

	function widget:Get()
		return widget.value
	end

	function widget:GetMode()
		return modes[widget.value]
	end

	return ctx.register(widget)
end

WidgetRegistry.Dropdown = function(panel, ctx, label, options, default, callback)
	local theme = ctx.theme
	options = options or {}
	default = default or options[1] or ""

	local wrapper = ctx.mk("Frame", {
		Size = UDim2.new(1, 0, 0, 30),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		ZIndex = 100014,
	}, ctx.body)

	ctx.mk("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 3),
	}, wrapper)

	local row = ctx.mk("Frame", {
		Size = UDim2.new(1, 0, 0, 30),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
		ZIndex = 100014,
	}, wrapper)
	ctx.padding(0, 0, 10, 8, row)

	ctx.mk("TextLabel", {
		Text = label,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.5, 0, 1, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100015,
	}, row)

	local button = ctx.mk("TextButton", {
		Text = "",
		Size = UDim2.new(0, 112, 0, 22),
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, 0, 0.5, 0),
		BackgroundColor3 = theme.rowAlt,
		AutoButtonColor = false,
		ZIndex = 100015,
	}, row)
	corner(6, button)
	ctx.stroke(theme.border, 1, 0.2, button)

	local valueText = ctx.mk("TextLabel", {
		Text = default,
		Font = Enum.Font.Gotham,
		TextSize = 11,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -22, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100016,
	}, button)

	local arrow = ctx.mk("TextLabel", {
		Text = "▾",
		Font = Enum.Font.Gotham,
		TextSize = 10,
		TextColor3 = theme.dim,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 14, 1, 0),
		Position = UDim2.new(1, -15, 0, 0),
		ZIndex = 100016,
	}, button)

	local list = ctx.mk("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = theme.header,
		ClipsDescendants = true,
		LayoutOrder = 2,
		ZIndex = 100016,
	}, wrapper)
	corner(6, list)
	ctx.stroke(theme.border, 1, 0.2, list)
	ctx.mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder }, list)
	ctx.padding(4, 4, 4, 4, list)

	local selected = default
	local open = false
	local optButtons = {}
	local widget = { type = "dropdown", value = default, _options = options }

	local function refreshPanel()
		task.delay(0.03, ctx.refresh)
		task.delay(0.22, ctx.refresh)
	end

	local function rebuild()
		for _, b in ipairs(optButtons) do
			pcall(function() b:Destroy() end)
		end
		optButtons = {}

		for _, opt in ipairs(options) do
			local ob = ctx.mk("TextButton", {
				Text = opt,
				Font = Enum.Font.Gotham,
				TextSize = 11,
				TextColor3 = opt == selected and theme.accent or theme.muted,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 20),
				AutoButtonColor = false,
				ZIndex = 100017,
			}, list)
			corner(4, ob)

			ob.MouseEnter:Connect(function()
				Anim.soft(ob, 0.1, {
					BackgroundTransparency = 0.7,
					BackgroundColor3 = theme.accentDim,
				})
			end)

			ob.MouseLeave:Connect(function()
				Anim.soft(ob, 0.1, { BackgroundTransparency = 1 })
			end)

			ob.MouseButton1Click:Connect(function()
				selected = opt
				widget.value = opt
				valueText.Text = opt
				if callback then task.spawn(callback, opt) end
				open = false
				Anim.smooth(list, 0.2, { Size = UDim2.new(1, 0, 0, 0) })
				Anim.smooth(arrow, 0.2, { Rotation = 0 })
				for _, x in ipairs(optButtons) do
					Anim.soft(x, 0.14, {
						TextColor3 = x.Text == opt and theme.accent or theme.muted,
					})
				end
				refreshPanel()
			end)

			table.insert(optButtons, ob)
		end
	end

	button.MouseButton1Click:Connect(function()
		open = not open
		Anim.smooth(list, 0.2, {
			Size = open and UDim2.new(1, 0, 0, #options * 20 + 8) or UDim2.new(1, 0, 0, 0),
		})
		Anim.smooth(arrow, 0.2, { Rotation = open and 180 or 0 })
		refreshPanel()
	end)

	function widget:Set(v)
		selected = v
		widget.value = v
		valueText.Text = v
		for _, x in ipairs(optButtons) do
			Anim.soft(x, 0.14, { TextColor3 = x.Text == v and theme.accent or theme.muted })
		end
		if callback then task.spawn(callback, v) end
	end

	function widget:Get()
		return selected
	end

	function widget:SetOptions(newOptions)
		options = newOptions or {}
		widget._options = options
		if not table.find(options, selected) then
			selected = options[1] or ""
			widget.value = selected
			valueText.Text = selected
		end
		rebuild()
		refreshPanel()
	end

	rebuild()
	return ctx.register(widget)
end

WidgetRegistry.Button = function(panel, ctx, label, callback, danger)
	local theme = ctx.theme
	local color = danger and theme.bad or theme.accent

	local button = ctx.mk("TextButton", {
		Text = label,
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundColor3 = theme.row,
		BackgroundTransparency = 0.3,
		AutoButtonColor = false,
		Size = UDim2.new(1, 0, 0, 30),
		ZIndex = 100013,
	}, ctx.body)
	corner(7, button)
	local bstroke = ctx.stroke(theme.border, 1, 0.2, button)
	local scale = ctx.mk("UIScale", { Scale = 1 }, button)

	button.MouseEnter:Connect(function()
		Anim.soft(button, 0.12, { BackgroundTransparency = 0, TextColor3 = color })
		Anim.soft(bstroke, 0.12, { Color = color })
		Anim.soft(scale, 0.12, { Scale = 1.012 })
	end)

	button.MouseLeave:Connect(function()
		Anim.soft(button, 0.15, { BackgroundTransparency = 0.3, TextColor3 = theme.text })
		Anim.soft(bstroke, 0.15, { Color = theme.border })
		Anim.soft(scale, 0.15, { Scale = 1 })
	end)

	button.MouseButton1Down:Connect(function()
		Anim.soft(scale, 0.06, { Scale = 0.975 })
	end)

	button.MouseButton1Up:Connect(function()
		Anim.spring(scale, 0.16, { Scale = 1.012 })
	end)

	button.MouseButton1Click:Connect(function()
		if callback then task.spawn(callback) end
	end)

	local widget = { type = "button" }

	function widget:Fire()
		if callback then task.spawn(callback) end
	end

	function widget:SetText(t)
		button.Text = t
	end

	function widget:GetButton()
		return button
	end

	return ctx.register(widget)
end

WidgetRegistry.Keybind = function(panel, ctx, label, defaultKey, callback)
	local theme = ctx.theme
	local row = ctx.row(30)
	ctx.padding(0, 0, 10, 8, row)

	ctx.mk("TextLabel", {
		Text = label,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.5, 0, 1, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local keyBtn = ctx.mk("TextButton", {
		Text = "[ " .. (defaultKey and defaultKey.Name or "...") .. " ]",
		Font = Enum.Font.Gotham,
		TextSize = 11,
		TextColor3 = theme.muted,
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Size = UDim2.new(0.5, -10, 1, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Right,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local waiting = false
	local boundKey = defaultKey
	local widget = { type = "keybind", value = defaultKey }

	keyBtn.MouseButton1Click:Connect(function()
		waiting = true
		keyBtn.Text = "[ ... ]"
		Anim.soft(keyBtn, 0.1, { TextColor3 = theme.accent })
	end)

	ctx.trackInput(function(input, gp)
		if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
			waiting = false

			if input.KeyCode == Enum.KeyCode.Escape then
				keyBtn.Text = "[ ... ]"
				boundKey = nil
				widget.value = nil
				Anim.soft(keyBtn, 0.1, { TextColor3 = theme.muted })
				if callback then task.spawn(callback, nil) end
				return
			end

			keyBtn.Text = "[ " .. input.KeyCode.Name .. " ]"
			Anim.soft(keyBtn, 0.1, { TextColor3 = theme.muted })
			boundKey = input.KeyCode
			widget.value = input.KeyCode
			if callback then task.spawn(callback, input.KeyCode) end
			return
		end

		if not gp and boundKey and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == boundKey then
			if widget._onPress then task.spawn(widget._onPress) end
		end
	end)

	function widget:Set(k)
		boundKey = k
		widget.value = k
		keyBtn.Text = k and ("[ " .. k.Name .. " ]") or "[ ... ]"
	end

	function widget:Get()
		return boundKey
	end

	function widget:OnPress(fn)
		widget._onPress = fn
	end

	return ctx.register(widget)
end

WidgetRegistry.TextBox = function(panel, ctx, label, default, placeholder, callback)
	local theme = ctx.theme
	local hasLabel = label and label ~= ""
	local row = ctx.row(hasLabel and 34 or 28)
	ctx.padding(5, 5, 10, 10, row)

	if hasLabel then
		ctx.mk("TextLabel", {
			Text = label,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			TextColor3 = theme.text,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 14),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 100013,
		}, row)
	end

	local box = ctx.mk("TextBox", {
		Text = default or "",
		PlaceholderText = placeholder or "",
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		PlaceholderColor3 = theme.dim,
		BackgroundColor3 = theme.rowAlt,
		BackgroundTransparency = 0.4,
		ClearTextOnFocus = false,
		Size = UDim2.new(1, 0, 0, 20),
		Position = hasLabel and UDim2.new(0, 0, 0, 16) or UDim2.new(0, 0, 0, 4),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 100013,
	}, row)
	corner(5, box)
	ctx.padding(0, 0, 7, 7, box)
	local bstroke = ctx.stroke(theme.border, 1, 0.2, box)

	box.Focused:Connect(function()
		Anim.soft(box, 0.12, { BackgroundTransparency = 0.1 })
		Anim.soft(bstroke, 0.12, { Color = theme.accent })
	end)

	local widget = { type = "textbox", value = default or "" }

	box.FocusLost:Connect(function(enter)
		Anim.soft(box, 0.12, { BackgroundTransparency = 0.4 })
		Anim.soft(bstroke, 0.12, { Color = theme.border })
		widget.value = box.Text
		if callback then task.spawn(callback, box.Text, enter) end
	end)

	function widget:Set(t)
		box.Text = t or ""
		widget.value = box.Text
	end

	function widget:Get()
		return box.Text
	end

	function widget:GetBox()
		return box
	end

	return ctx.register(widget)
end

WidgetRegistry.ProgressBar = function(panel, ctx, label, initial, callback)
	local theme = ctx.theme
	local row = ctx.row(34)
	ctx.padding(5, 5, 10, 10, row)

	ctx.mk("TextLabel", {
		Text = label,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.6, 0, 0, 14),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local pct = ctx.mk("TextLabel", {
		Text = "0%",
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextColor3 = theme.accent,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.4, 0, 0, 14),
		Position = UDim2.new(0.6, 0, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Right,
		ZIndex = 100013,
	}, row)

	local track = ctx.mk("Frame", {
		Size = UDim2.new(1, 0, 0, 6),
		Position = UDim2.new(0, 0, 0, 20),
		BackgroundColor3 = theme.rowAlt,
		BorderSizePixel = 0,
		ZIndex = 100013,
	}, row)
	corner(3, track)

	local fill = ctx.mk("Frame", {
		Size = UDim2.fromScale(math.clamp(initial or 0, 0, 1), 1),
		BackgroundColor3 = theme.accent,
		BorderSizePixel = 0,
		ZIndex = 100014,
	}, track)
	corner(3, fill)

	local widget = { type = "progress", value = initial or 0 }

	local function set(p)
		p = math.clamp(p, 0, 1)
		widget.value = p
		Anim.smooth(fill, 0.22, {
			Size = UDim2.fromScale(p, 1),
			BackgroundColor3 = p >= 1 and theme.good or theme.accent,
		})
		pct.Text = math.floor(p * 100 + 0.5) .. "%"
		Anim.soft(pct, 0.16, { TextColor3 = p >= 1 and theme.good or theme.accent })
		if callback then task.spawn(callback, p) end
	end

	function widget:Set(p)
		set(p)
	end

	function widget:Get()
		return widget.value
	end

	set(initial or 0)
	return ctx.register(widget)
end

WidgetRegistry.ColorPicker = function(panel, ctx, label, defaultColor, callback)
	local theme = ctx.theme
	defaultColor = defaultColor or theme.white

	local row = ctx.row(30)
	ctx.padding(0, 0, 10, 8, row)

	ctx.mk("TextLabel", {
		Text = label,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.4, 0, 1, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 100013,
	}, row)

	local swatch = ctx.mk("TextButton", {
		Text = "",
		Size = UDim2.fromOffset(28, 18),
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, 0, 0.5, 0),
		BackgroundColor3 = defaultColor,
		AutoButtonColor = false,
		ZIndex = 100013,
	}, row)
	corner(4, swatch)
	ctx.stroke(theme.borderBright, 1, 0, swatch)

	local hexBox = ctx.mk("TextBox", {
		Text = hexOf(defaultColor),
		Font = Enum.Font.Code,
		TextSize = 10,
		TextColor3 = theme.muted,
		BackgroundColor3 = theme.rowAlt,
		ClearTextOnFocus = false,
		Size = UDim2.fromOffset(62, 18),
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -36, 0.5, 0),
		TextXAlignment = Enum.TextXAlignment.Center,
		ZIndex = 100013,
	}, row)
	corner(4, hexBox)

	local picker = ctx.mk("Frame", {
		Size = UDim2.fromOffset(168, 122),
		Position = UDim2.fromOffset(0, 0),
		BackgroundColor3 = theme.header,
		BackgroundTransparency = 0.02,
		Visible = false,
		ZIndex = 150000,
	}, ctx.ui.root)
	corner(8, picker)
	ctx.stroke(theme.border, 1, 0.15, picker)
	ctx.padding(9, 9, 9, 9, picker)

	local hue, sat, val = Color3.toHSV(defaultColor)
	local widget = { type = "color", value = defaultColor }

	local function setPickerPosition()
		local cam = workspace.CurrentCamera
		local vp = cam and cam.ViewportSize or Vector2.new(1000, 800)
		local px = swatch.AbsolutePosition.X + swatch.AbsoluteSize.X + 10
		local py = swatch.AbsolutePosition.Y - 8
		px = math.clamp(px, 10, math.max(10, vp.X - 180))
		py = math.clamp(py, 10, math.max(10, vp.Y - 136))
		picker.Position = UDim2.fromOffset(px, py)
	end

	local function setColor(c)
		swatch.BackgroundColor3 = c
		hexBox.Text = hexOf(c)
		widget.value = c
		if callback then task.spawn(callback, c) end
	end

	local grid = ctx.mk("Frame", {
		Size = UDim2.fromOffset(150, 64),
		BackgroundColor3 = Color3.fromHSV(hue, 1, 1),
		BorderSizePixel = 0,
		ZIndex = 150001,
	}, picker)
	corner(5, grid)

	local svGradient = ctx.mk("UIGradient", {
		Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromHSV(hue, 1, 1)),
	}, grid)

	local shade = ctx.mk("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(0, 0, 0),
		BorderSizePixel = 0,
		ZIndex = 150002,
	}, grid)
	corner(5, shade)

	ctx.mk("UIGradient", {
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Rotation = 90,
	}, shade)

	local cross = ctx.mk("Frame", {
		Size = UDim2.fromOffset(8, 8),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = theme.white,
		BorderSizePixel = 0,
		ZIndex = 150010,
	}, grid)
	corner(4, cross)
	ctx.stroke(theme.black, 1, 0, cross)

	local hueBar = ctx.mk("Frame", {
		Size = UDim2.fromOffset(150, 16),
		Position = UDim2.fromOffset(0, 70),
		BorderSizePixel = 0,
		ZIndex = 150001,
	}, picker)
	corner(4, hueBar)

	ctx.mk("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 1, 1)),
			ColorSequenceKeypoint.new(0.16, Color3.fromHSV(0.16, 1, 1)),
			ColorSequenceKeypoint.new(0.33, Color3.fromHSV(0.33, 1, 1)),
			ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.5, 1, 1)),
			ColorSequenceKeypoint.new(0.66, Color3.fromHSV(0.66, 1, 1)),
			ColorSequenceKeypoint.new(0.83, Color3.fromHSV(0.83, 1, 1)),
			ColorSequenceKeypoint.new(1, Color3.fromHSV(1, 1, 1)),
		}),
	}, hueBar)

	local hueDot = ctx.mk("Frame", {
		Size = UDim2.fromOffset(9, 18),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(hue, 0, 0.5, 0),
		BackgroundColor3 = theme.white,
		BorderSizePixel = 0,
		ZIndex = 150010,
	}, hueBar)
	corner(3, hueDot)
	ctx.stroke(theme.black, 1, 0.3, hueDot)

	local dragGrid = false
	local dragHue = false

	local function updateCross()
		cross.Position = UDim2.new(sat, 0, 1 - val, 0)
	end

	local function updateHueVisuals()
		local hc = Color3.fromHSV(hue, 1, 1)
		grid.BackgroundColor3 = hc
		svGradient.Color = ColorSequence.new(Color3.new(1, 1, 1), hc)
		hueDot.Position = UDim2.new(hue, 0, 0.5, 0)
	end

	local function applyGrid(pos)
		sat = math.clamp((pos.X - grid.AbsolutePosition.X) / math.max(grid.AbsoluteSize.X, 1), 0, 1)
		val = 1 - math.clamp((pos.Y - grid.AbsolutePosition.Y) / math.max(grid.AbsoluteSize.Y, 1), 0, 1)
		updateCross()
		setColor(Color3.fromHSV(hue, sat, val))
	end

	local function applyHue(pos)
		hue = math.clamp((pos.X - hueBar.AbsolutePosition.X) / math.max(hueBar.AbsoluteSize.X, 1), 0, 1)
		updateHueVisuals()
		setColor(Color3.fromHSV(hue, sat, val))
	end

	grid.InputBegan:Connect(function(input)
		if isClick(input) then
			dragGrid = true
			applyGrid(input.Position)
		end
	end)

	grid.InputEnded:Connect(function(input)
		if isClick(input) then
			dragGrid = false
		end
	end)

	hueBar.InputBegan:Connect(function(input)
		if isClick(input) then
			dragHue = true
			applyHue(input.Position)
		end
	end)

	hueBar.InputEnded:Connect(function(input)
		if isClick(input) then
			dragHue = false
		end
	end)

	ctx.trackInput(function(input)
		if not isMove(input) then return end
		if dragGrid then
			applyGrid(input.Position)
		elseif dragHue then
			applyHue(input.Position)
		end
	end)

	ctx.trackInputEnded(function(input)
		if isClick(input) then
			dragGrid = false
			dragHue = false
		end
	end)

	swatch.MouseButton1Click:Connect(function()
		picker.Visible = not picker.Visible
		if picker.Visible then
			setPickerPosition()
			local p = picker.Position
			picker.Position = UDim2.fromOffset(p.X.Offset, p.Y.Offset - 10)
			Anim.smooth(picker, 0.18, { Position = p })
		end
	end)

	hexBox.FocusLost:Connect(function()
		local hex = hexBox.Text:gsub("#", "")
		if #hex ~= 6 then return end

		local r = tonumber(hex:sub(1, 2), 16)
		local g = tonumber(hex:sub(3, 4), 16)
		local b = tonumber(hex:sub(5, 6), 16)

		if r and g and b then
			local c = Color3.fromRGB(r, g, b)
			hue, sat, val = Color3.toHSV(c)
			updateHueVisuals()
			updateCross()
			setColor(c)
		end
	end)

	function widget:Set(c)
		hue, sat, val = Color3.toHSV(c)
		updateHueVisuals()
		updateCross()
		setColor(c)
	end

	function widget:Get()
		return widget.value
	end

	function widget:SetVisible(v)
		picker.Visible = v
		if v then setPickerPosition() end
	end

	updateHueVisuals()
	updateCross()
	setColor(defaultColor)

	return ctx.register(widget)
end

local EasyUI = {}
EasyUI.__index = EasyUI
EasyUI.Anim = Anim
EasyUI.Version = "3.0.0"

local activeInstances = {}

EasyUI.Defaults = {
	PanelMaxHeight = 420,
	CursorSize = 34,
	WatermarkSeparator = "  •  ",
	WatermarkUpdateInterval = 0.5,
}

function EasyUI.new(options)
	options = options or {}
	local self = setmetatable({}, EasyUI)

	local themeName = options.Theme or "PinkMatte"
	local theme = Themes[themeName] or Themes.PinkMatte
	local resolved = {}
	for k, v in pairs(theme) do resolved[k] = v end

	if type(options.ThemeOverride) == "table" then
		for k, v in pairs(options.ThemeOverride) do resolved[k] = v end
	end

	if options.Accent then
		resolved.accent = options.Accent
		resolved.accentDim = Color3.fromRGB(
			math.floor(options.Accent.R * 160 + 0.5),
			math.floor(options.Accent.G * 160 + 0.5),
			math.floor(options.Accent.B * 160 + 0.5)
		)
	end

	self.theme = resolved
	self.title = options.Title or "EasyUI"
	self._menuKey = options.MenuKey or Enum.KeyCode.LeftAlt
	self._widgets = {}
	self._panels = {}
	self._inputHandlers = {}
	self._inputEndHandlers = {}
	self._watermarkFn = nil
	self._alive = true
	self._visible = false
	self._nextX = options.StartX or 16
	self._nextY = options.StartY or 52
	self._configOpen = false

	local cur = options.Cursor or {}
	local wm = options.WatermarkConfig or {}

	self.config = {
		PanelMaxHeight = options.PanelMaxHeight or EasyUI.Defaults.PanelMaxHeight,
		Cursor = {
			Enabled = (cur.Enabled ~= nil) and cur.Enabled or (options.CustomCursor ~= false),
			Color = cur.Color or resolved.text,
			OutlineColor = cur.OutlineColor or resolved.black,
			Size = cur.Size or EasyUI.Defaults.CursorSize,
			AlwaysVisible = cur.AlwaysVisible == true,
		},
		Watermark = {
			Separator = wm.Separator or EasyUI.Defaults.WatermarkSeparator,
			UpdateInterval = wm.UpdateInterval or EasyUI.Defaults.WatermarkUpdateInterval,
		},
	}

	self._cursorEnabled = self.config.Cursor.Enabled

	local host = getHost()
	local id = options.Id or ("EasyUI_" .. tostring(math.floor(os.clock() * 1000000)))

	for _, c in ipairs(host:GetChildren()) do
		if c.Name == id then
			pcall(function() c:Destroy() end)
		end
	end

	local gui = mk("ScreenGui", {
		Name = id,
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
	}, host)

	pcall(function() gui.DisplayOrder = 2147483647 end)
	pcall(function()
		if syn and syn.protect_gui then syn.protect_gui(gui) end
	end)

	self.gui = gui
	self._id = id

	local root = mk("Frame", {
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromOffset(0, -20),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Visible = false,
		ZIndex = 100000,
	}, gui)

	self.root = root

	self:_buildWatermark(options.Watermark ~= false)
	self:_setupStats(options)
	self:_buildToasts()
	self:_buildUnloadButton()
	self:_buildCursor()

	UserInputService.InputBegan:Connect(function(input, gp)
		if not self._alive then return end

		if input.KeyCode == self._menuKey and not gp then
			self:Toggle()
		end

		for _, fn in ipairs(self._inputHandlers) do
			task.spawn(fn, input, gp)
		end
	end)

	UserInputService.InputEnded:Connect(function(input, gp)
		if not self._alive then return end

		for _, fn in ipairs(self._inputEndHandlers) do
			task.spawn(fn, input, gp)
		end
	end)

	local wmTimer = 0
	self._fps = 0
	self._fpsAccum = 0
	self._fpsCount = 0

	RunService.RenderStepped:Connect(function(dt)
		if not self._alive then return end

		self._fpsAccum += dt
		self._fpsCount += 1

		if self._fpsAccum >= 0.4 then
			self._fps = math.floor(self._fpsCount / self._fpsAccum + 0.5)
			self._fpsAccum = 0
			self._fpsCount = 0
		end

		if self._cursor and self._cursor.Visible then
			local m = UserInputService:GetMouseLocation()
			self._cursor.Position = UDim2.fromOffset(m.X, m.Y)
		end

		if self._watermarkDot and self._watermark and self._watermark.Visible then
			self._watermarkDot.BackgroundColor3 = Color3.fromHSV((os.clock() * 0.12) % 1, 0.55, 1)
		end

		if self._watermarkLabel and self._watermark and self._watermark.Visible then
			wmTimer += dt
			if wmTimer >= self.config.Watermark.UpdateInterval then
				wmTimer = 0
				self:_refreshWatermark()
			end
		end
	end)

	table.insert(activeInstances, self)

	self:SetVisible(options.Visible ~= false)

	return self
end

function EasyUI:_nextPanelPos(width)
	local cam = workspace.CurrentCamera
	local vp = cam and cam.ViewportSize or Vector2.new(1000, 800)

	if self._nextX + width + 16 > vp.X then
		self._nextX = 16
		self._nextY += 360
	end

	local x, y = self._nextX, self._nextY
	self._nextX += width + 12
	return x, y
end

function EasyUI:_makeDraggable(handle, frame)
	local dragging = false
	local dragStart
	local startPos

	handle.InputBegan:Connect(function(input)
		if isClick(input) then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and isMove(input) then
			local d = input.Position - dragStart
			frame.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + d.X,
				startPos.Y.Scale,
				startPos.Y.Offset + d.Y
			)
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if isClick(input) then
			dragging = false
		end
	end)
end

function EasyUI:_trackInput(fn)
	table.insert(self._inputHandlers, fn)
end

function EasyUI:_trackInputEnded(fn)
	table.insert(self._inputEndHandlers, fn)
end

function EasyUI:_registerWidget(w)
	table.insert(self._widgets, w)
end

function EasyUI:CreatePanel(title, arg2, arg3)
	local opts
	if type(arg2) == "table" then
		opts = arg2
	else
		opts = { Width = arg2, MaxHeight = arg3 }
	end

	local p = Panel.new(self, title, opts)
	table.insert(self._panels, p)
	return p
end

function EasyUI:SetPanelMaxHeight(px)
	self.config.PanelMaxHeight = tonumber(px) or self.config.PanelMaxHeight
	for _, panel in ipairs(self._panels) do
		panel:SetMaxHeight(self.config.PanelMaxHeight)
	end
end

function EasyUI.RegisterWidget(name, builder)
	assert(type(name) == "string", "RegisterWidget requires a string name")
	assert(type(builder) == "function", "RegisterWidget requires a function builder")
	WidgetRegistry[name] = builder
	return true
end

function EasyUI.RegisterPlugin(name, fn)
	assert(type(name) == "string", "RegisterPlugin requires a string name")
	assert(type(fn) == "function", "RegisterPlugin requires a function")
	PluginRegistry[name] = fn
	return true
end

function EasyUI:UsePlugin(name, ...)
	local fn = PluginRegistry[name]
	assert(fn, "Plugin not registered: " .. tostring(name))
	return fn(self, ...)
end

function EasyUI:Extend(fn, ...)
	assert(type(fn) == "function", "Extend expects a function")
	return fn(self, ...)
end

function EasyUI.GetRegisteredWidgets()
	local t = {}
	for k in pairs(WidgetRegistry) do t[#t + 1] = k end
	table.sort(t)
	return t
end

function EasyUI.GetRegisteredPlugins()
	local t = {}
	for k in pairs(PluginRegistry) do t[#t + 1] = k end
	table.sort(t)
	return t
end

function EasyUI:Toggle()
	self:SetVisible(not self._visible)
end

function EasyUI:SetVisible(v)
	v = v and true or false
	self._visible = v

	if v then
		self.root.Visible = true
		self.root.Position = UDim2.fromOffset(0, -22)
		Anim.smooth(self.root, 0.34, { Position = UDim2.fromOffset(0, 0) })
		self:_updateCursor(true)
		self:_flash()
	else
		Anim.smooth(self.root, 0.24, { Position = UDim2.fromOffset(0, -22) })
		self:_updateCursor(false)
		task.delay(0.25, function()
			if self.root and not self._visible then
				self.root.Visible = false
			end
		end)
	end
end

function EasyUI:GetVisible()
	return self._visible
end

function EasyUI:SetMenuKey(k)
	self._menuKey = k
end

function EasyUI:_buildWatermark(enabled)
	local theme = self.theme

	local wm = mk("Frame", {
		Size = UDim2.new(0, 0, 0, 26),
		AutomaticSize = Enum.AutomaticSize.X,
		Position = UDim2.new(0, 14, 0, 12),
		BackgroundColor3 = theme.panel,
		BackgroundTransparency = 0.08,
		Visible = enabled,
		ZIndex = 180000,
	}, self.gui)
	corner(6, wm)
	stroke(theme.border, 1, 0.3, wm)

	local glass = mk("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = theme.white,
		BackgroundTransparency = 0.93,
		BorderSizePixel = 0,
		ZIndex = 180000,
	}, wm)
	corner(6, glass)

	local dot = mk("Frame", {
		Size = UDim2.fromOffset(8, 8),
		Position = UDim2.new(0, 8, 0.5, -4),
		BackgroundColor3 = theme.accent,
		BorderSizePixel = 0,
		ZIndex = 180001,
	}, wm)
	corner(4, dot)

	local label = mk("TextLabel", {
		Text = self.title,
		Font = Enum.Font.GothamMedium,
		TextSize = 11,
		TextColor3 = theme.text,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 1, 0),
		Position = UDim2.new(0, 22, 0, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 180001,
	}, wm)

	mk("UIPadding", {
		PaddingRight = UDim.new(0, 10),
	}, wm)

	local gear = mk("TextButton", {
		Text = "⚙",
		Font = Enum.Font.Gotham,
		TextSize = 11,
		TextColor3 = theme.muted,
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Size = UDim2.fromOffset(20, 26),
		Position = UDim2.new(0, -24, 0, 0),
		Visible = false,
		ZIndex = 180002,
	}, wm)

	gear.MouseButton1Click:Connect(function()
		self:OpenConfig()
	end)

	gear.MouseEnter:Connect(function()
		Anim.soft(gear, 0.12, { TextColor3 = theme.accent })
	end)

	gear.MouseLeave:Connect(function()
		Anim.soft(gear, 0.12, { TextColor3 = theme.muted })
	end)

	wm.MouseEnter:Connect(function()
		gear.Visible = true
	end)

	wm.MouseLeave:Connect(function()
		gear.Visible = false
	end)

	self._watermark = wm
	self._watermarkLabel = label
	self._watermarkDot = dot
end

function EasyUI:_refreshWatermark()
	local parts = { self.title }

	for _, s in ipairs(self._statProviders) do
		if s.enabled then
			local ok, v = pcall(s.get)
			if ok and v ~= nil then
				local fok, f = pcall(s.format, v)
				parts[#parts + 1] = fok and f or tostring(v)
			end
		end
	end

	if self._watermarkFn then
		local ok, data = pcall(self._watermarkFn)
		if ok and type(data) == "table" then
			for k, v in pairs(data) do
				parts[#parts + 1] = tostring(k) .. ": " .. tostring(v)
			end
		end
	end

	self._watermarkLabel.Text = table.concat(parts, self.config.Watermark.Separator)
end

function EasyUI:_setupStats(options)
	self._statProviders = {}

	self._getPing = function()
		local ok, v = pcall(function()
			return StatsService.Network.ServerStatsItem["Data Ping"]:GetValue()
		end)
		return (ok and v) and math.floor(v + 0.5) or 0
	end

	if options.ShowFPS ~= false then
		self:AddWatermarkStat("fps", function()
			return self._fps or 0
		end, {
			Format = function(v) return v .. " fps" end,
			Order = 1,
		})
	end

	if options.ShowPing ~= false then
		self:AddWatermarkStat("ping", self._getPing, {
			Format = function(v) return v .. "ms" end,
			Order = 2,
		})
	end
end

function EasyUI:AddWatermarkStat(key, getFn, opts)
	opts = opts or {}
	self:RemoveWatermarkStat(key)

	table.insert(self._statProviders, {
		key = key,
		get = getFn,
		format = opts.Format or tostring,
		enabled = opts.Enabled ~= false,
		order = opts.Order or (#self._statProviders + 10),
	})

	table.sort(self._statProviders, function(a, b)
		return a.order < b.order
	end)
end

function EasyUI:RemoveWatermarkStat(key)
	for i, s in ipairs(self._statProviders) do
		if s.key == key then
			table.remove(self._statProviders, i)
			return
		end
	end
end

function EasyUI:SetWatermarkStatEnabled(key, enabled)
	for _, s in ipairs(self._statProviders) do
		if s.key == key then
			s.enabled = enabled
		end
	end
end

function EasyUI:SetWatermarkVisible(v)
	if self._watermark then
		self._watermark.Visible = v
	end
end

function EasyUI:SetWatermarkStats(fn)
	self._watermarkFn = fn
end

function EasyUI:ConfigureWatermark(o)
	o = o or {}

	if o.Separator then self.config.Watermark.Separator = o.Separator end
	if o.UpdateInterval then self.config.Watermark.UpdateInterval = o.UpdateInterval end
	if o.Font and self._watermarkLabel then self._watermarkLabel.Font = o.Font end
	if o.TextSize and self._watermarkLabel then self._watermarkLabel.TextSize = o.TextSize end
	if o.TextColor and self._watermarkLabel then self._watermarkLabel.TextColor3 = o.TextColor end
	if o.Enabled ~= nil then self:SetWatermarkVisible(o.Enabled) end
end

function EasyUI:_buildUnloadButton()
	local theme = self.theme

	local b = mk("TextButton", {
		Text = "✕",
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextColor3 = theme.muted,
		BackgroundColor3 = theme.panel,
		BackgroundTransparency = 0.08,
		AutoButtonColor = false,
		Size = UDim2.fromOffset(30, 30),
		Position = UDim2.new(1, -45, 0, 14),
		Visible = false,
		ZIndex = 190000,
	}, self.gui)
	corner(15, b)
	local s = stroke(theme.border, 1, 0.3, b)

	b.MouseButton1Click:Connect(function()
		self:Toast("EasyUI", "Unloading...", 1.5, "warn")
		task.delay(0.6, function()
			self:Destroy()
		end)
	end)

	b.MouseEnter:Connect(function()
		Anim.soft(b, 0.12, { TextColor3 = theme.bad, BackgroundTransparency = 0 })
		Anim.soft(s, 0.12, { Color = theme.bad })
	end)

	b.MouseLeave:Connect(function()
		Anim.soft(b, 0.15, { TextColor3 = theme.muted, BackgroundTransparency = 0.08 })
		Anim.soft(s, 0.15, { Color = theme.border })
	end)

	self._unloadBtn = b

	self.root:GetPropertyChangedSignal("Visible"):Connect(function()
		if self._unloadBtn then
			self._unloadBtn.Visible = self.root.Visible
		end
	end)
end

function EasyUI:SetUnloadButtonVisible(v)
	if self._unloadBtn then
		self._unloadBtn.Visible = v
	end
end

function EasyUI:_buildCursor()
	local cfg = self.config.Cursor
	local size = cfg.Size
	local asset = "rbxasset://textures/ArrowCursor.png"

	local holder = mk("Frame", {
		Size = UDim2.fromOffset(size, size),
		BackgroundTransparency = 1,
		Visible = false,
		Active = false,
		Selectable = false,
		ZIndex = 999999,
	}, self.gui)

	local shadow = mk("ImageLabel", {
		Image = asset,
		Size = UDim2.fromOffset(size, size),
		Position = UDim2.fromOffset(1, 1),
		BackgroundTransparency = 1,
		ImageColor3 = cfg.OutlineColor,
		ImageTransparency = 0.18,
		Active = false,
		Selectable = false,
		ZIndex = 999999,
	}, holder)

	local main = mk("ImageLabel", {
		Image = asset,
		Size = UDim2.fromOffset(size, size),
		BackgroundTransparency = 1,
		ImageColor3 = cfg.Color,
		Active = false,
		Selectable = false,
		ZIndex = 1000000,
	}, holder)

	self._cursor = holder
	self._cursorMain = main
	self._cursorShadow = shadow

	UserInputService.InputBegan:Connect(function(input)
		if self._alive and isClick(input) and holder.Visible then
			local s = self.config.Cursor.Size
			Anim.soft(holder, 0.06, { Size = UDim2.fromOffset(s * 0.86, s * 0.86) })
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if self._alive and isClick(input) and holder.Visible then
			local s = self.config.Cursor.Size
			Anim.spring(holder, 0.14, { Size = UDim2.fromOffset(s, s) })
		end
	end)
end

function EasyUI:_updateCursor(v)
	if not self._cursor then return end

	if not self._cursorEnabled then
		self._cursor.Visible = false
		pcall(function() UserInputService.MouseIconEnabled = true end)
		return
	end

	local show = v or self.config.Cursor.AlwaysVisible
	self._cursor.Visible = show

	pcall(function()
		UserInputService.MouseIconEnabled = not show
	end)
end

function EasyUI:SetCursorConfig(o)
	o = o or {}
	local cfg = self.config.Cursor

	if o.Color then
		cfg.Color = o.Color
		if self._cursorMain then self._cursorMain.ImageColor3 = o.Color end
	end

	if o.OutlineColor then
		cfg.OutlineColor = o.OutlineColor
		if self._cursorShadow then self._cursorShadow.ImageColor3 = o.OutlineColor end
	end

	if o.Size then
		cfg.Size = o.Size
		if self._cursor then
			self._cursor.Size = UDim2.fromOffset(o.Size, o.Size)
			self._cursorMain.Size = UDim2.fromOffset(o.Size, o.Size)
			self._cursorShadow.Size = UDim2.fromOffset(o.Size, o.Size)
		end
	end

	if o.AlwaysVisible ~= nil then
		cfg.AlwaysVisible = o.AlwaysVisible and true or false
	end

	if o.Enabled ~= nil then
		cfg.Enabled = o.Enabled and true or false
		self._cursorEnabled = cfg.Enabled
	end

	self:_updateCursor(self._visible)
end

function EasyUI:_flash()
	local flash = mk("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = self.theme.white,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 999990,
	}, self.gui)

	Anim.to(flash, 0.12, { BackgroundTransparency = 0.88 }, Enum.EasingStyle.Quad)
	task.delay(0.12, function()
		Anim.smooth(flash, 0.35, { BackgroundTransparency = 1 })
		task.delay(0.4, function()
			pcall(function() flash:Destroy() end)
		end)
	end)
end

function EasyUI:_buildToasts()
	local holder = mk("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 280, 1, -30),
		Position = UDim2.new(1, -292, 0, 15),
		ZIndex = 200000,
	}, self.gui)

	mk("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 6),
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	}, holder)

	self._toastHolder = holder
	self._toastOrder = 0
end

function EasyUI:Toast(title, msg, duration, kind)
	duration = duration or 3.2
	local theme = self.theme
	local color = (kind == "ok" and theme.good)
		or (kind == "err" and theme.bad)
		or (kind == "warn" and theme.warn)
		or theme.accent

	self._toastOrder += 1

	local toast = mk("Frame", {
		Size = UDim2.new(1, 60, 0, 56),
		Position = UDim2.new(1, 60, 0, 0),
		BackgroundColor3 = theme.panel,
		BackgroundTransparency = 0.05,
		LayoutOrder = self._toastOrder,
		ZIndex = 200000,
		ClipsDescendants = true,
	}, self._toastHolder)
	corner(8, toast)
	stroke(theme.border, 1, 0.2, toast)

	local bar = mk("Frame", {
		Size = UDim2.new(0, 3, 1, -12),
		Position = UDim2.new(0, 6, 0, 6),
		BackgroundColor3 = color,
		BorderSizePixel = 0,
		ZIndex = 200001,
	}, toast)
	corner(2, bar)

	mk("TextLabel", {
		Text = title,
		Font = Enum.Font.GothamMedium,
		TextSize = 11,
		TextColor3 = color,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -24, 0, 15),
		Position = UDim2.new(0, 15, 0, 7),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 200002,
	}, toast)

	mk("TextLabel", {
		Text = msg,
		Font = Enum.Font.Gotham,
		TextSize = 10,
		TextColor3 = theme.muted,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -24, 0, 26),
		Position = UDim2.new(0, 15, 0, 23),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		ZIndex = 200002,
	}, toast)

	local prog = mk("Frame", {
		Size = UDim2.new(1, 0, 0, 2),
		Position = UDim2.new(0, 0, 1, -2),
		BackgroundColor3 = color,
		BorderSizePixel = 0,
		ZIndex = 200003,
	}, toast)

	Anim.spring(toast, 0.34, {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0, 56),
	})
	Anim.to(prog, duration, { Size = UDim2.new(0, 0, 0, 2) }, Enum.EasingStyle.Linear)

	task.delay(duration, function()
		if not self._alive then return end
		Anim.smooth(toast, 0.28, {
			Position = UDim2.new(1, 60, 0, 0),
			BackgroundTransparency = 1,
		})
		task.delay(0.32, function()
			pcall(function() toast:Destroy() end)
		end)
	end)
end

function EasyUI:OpenConfig()
	if self._configOpen then
		if self._configPanel then self._configPanel:SetVisible(false) end
		self._configOpen = false
		return
	end

	if self._configPanel then
		self._configPanel:SetVisible(true)
		self._configOpen = true
		return
	end

	local p = self:CreatePanel("Settings", { Width = 250, Open = true })
	self._configPanel = p

	p:AddSeparator("Appearance")
	p:AddColorPicker("Accent", self.theme.accent, function(c)
		self.theme.accent = c
		self.theme.accentDim = Color3.fromRGB(
			math.floor(c.R * 160 + 0.5),
			math.floor(c.G * 160 + 0.5),
			math.floor(c.B * 160 + 0.5)
		)
	end)

	p:AddToggle("Watermark", self._watermark and self._watermark.Visible, function(v)
		self:SetWatermarkVisible(v)
	end)

	p:AddToggle("Show FPS", true, function(v)
		self:SetWatermarkStatEnabled("fps", v)
	end)

	p:AddToggle("Show Ping", true, function(v)
		self:SetWatermarkStatEnabled("ping", v)
	end)

	p:AddToggle("Custom Cursor", self._cursorEnabled, function(v)
		self:SetCursorConfig({ Enabled = v })
	end)

	p:AddSlider("Cursor Size", 18, 50, self.config.Cursor.Size, 0, function(v)
		self:SetCursorConfig({ Size = v })
	end)

	p:AddSlider("Panel Height", 200, 700, self.config.PanelMaxHeight, 0, function(v)
		self:SetPanelMaxHeight(v)
	end)

	p:AddSeparator("Controls")
	p:AddKeybind("Menu Key", self._menuKey, function(k)
		if k then
			self._menuKey = k
			self:Toast("Keybind", "Menu key: " .. k.Name, 1.5, "ok")
		end
	end)

	p:AddSeparator("Actions")
	p:AddButton("Unload UI", function()
		self:Toast("EasyUI", "Unloading...", 1.5, "warn")
		task.delay(0.6, function()
			self:Destroy()
		end)
	end, true)

	self._configOpen = true
end

function EasyUI:CloseConfig()
	if self._configPanel then
		self._configPanel:SetVisible(false)
	end
	self._configOpen = false
end

function EasyUI:GetConfig()
	local out = {}
	for i, w in ipairs(self._widgets) do
		if w.type ~= "button" and w.type ~= "label" then
			out[i] = { type = w.type, value = w.value }
		end
	end
	return out
end

function EasyUI:GetWidgets()
	return self._widgets
end

function EasyUI:GetPanels()
	return self._panels
end

function EasyUI:GetTheme()
	return self.theme
end

function EasyUI:Destroy()
	self._alive = false
	self:_updateCursor(false)

	for i = #activeInstances, 1, -1 do
		if activeInstances[i] == self then
			table.remove(activeInstances, i)
		end
	end

	pcall(function()
		UserInputService.MouseIconEnabled = true
	end)

	pcall(function()
		self.gui:Destroy()
	end)

	self._widgets = {}
	self._panels = {}
	self._inputHandlers = {}
	self._inputEndHandlers = {}
end

function EasyUI.GetThemes()
	local t = {}
	for k in pairs(Themes) do t[#t + 1] = k end
	table.sort(t)
	return t
end

function EasyUI.AddTheme(name, palette)
	if type(name) == "string" and type(palette) == "table" then
		Themes[name] = palette
		return true
	end
	return false
end

function EasyUI.GetTheme(name)
	return Themes[name]
end

EasyUI.Toolkit = {
	Create = mk,
	Corner = corner,
	Padding = padding,
	Stroke = stroke,
	Anim = Anim,
	IsClick = isClick,
	IsMove = isMove,
	Themes = Themes,
}

function EasyUI.GetToolkit()
	return EasyUI.Toolkit
end

return EasyUI
