local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local StatsService = game:GetService("Stats")
local LocalPlayer = Players.LocalPlayer

local Themes = {
	Pastel = {
		panel = Color3.fromRGB(245, 240, 238),
		header = Color3.fromRGB(252, 248, 246),
		row = Color3.fromRGB(255, 255, 255),
		rowAlt = Color3.fromRGB(247, 242, 240),
		border = Color3.fromRGB(225, 220, 218),
		borderBright = Color3.fromRGB(200, 195, 190),
		accent = Color3.fromRGB(255, 182, 193),
		accentDim = Color3.fromRGB(230, 160, 170),
		text = Color3.fromRGB(80, 75, 73),
		muted = Color3.fromRGB(150, 145, 142),
		dim = Color3.fromRGB(180, 175, 172),
		good = Color3.fromRGB(140, 200, 155),
		bad = Color3.fromRGB(255, 130, 135),
		warn = Color3.fromRGB(235, 185, 95),
		black = Color3.new(0, 0, 0),
		white = Color3.fromRGB(250, 248, 247),
		panelTrans = 0,
		rowTrans = 0,
		strokeTrans = 0.15,
	},
	Midnight = {
		panel = Color3.fromRGB(18, 18, 23), header = Color3.fromRGB(24, 24, 30),
		row = Color3.fromRGB(30, 30, 37), rowAlt = Color3.fromRGB(38, 38, 46),
		border = Color3.fromRGB(52, 52, 62), borderBright = Color3.fromRGB(74, 74, 86),
		accent = Color3.fromRGB(185, 145, 255), accentDim = Color3.fromRGB(128, 100, 205),
		text = Color3.fromRGB(235, 235, 243), muted = Color3.fromRGB(155, 155, 170),
		dim = Color3.fromRGB(95, 95, 110), good = Color3.fromRGB(130, 225, 160),
		bad = Color3.fromRGB(255, 95, 105), warn = Color3.fromRGB(255, 185, 80),
		black = Color3.new(0,0,0), white = Color3.new(1,1,1),
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
		black = Color3.new(0,0,0), white = Color3.new(1,1,1),
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
		black = Color3.new(0,0,0), white = Color3.new(1,1,1),
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
		black = Color3.new(0,0,0), white = Color3.new(1,1,1),
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
		black = Color3.new(0,0,0), white = Color3.new(1,1,1),
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
		black = Color3.new(0,0,0), white = Color3.fromRGB(252, 252, 252),
		panelTrans = 0.04, rowTrans = 0.00, strokeTrans = 0.22,
	},
}

local function mk(className, props, parent)
	local inst = Instance.new(className)
	for prop, value in pairs(props or {}) do
		pcall(function() inst[prop] = value end)
	end
	if parent then inst.Parent = parent end
	return inst
end
local function corner(r, parent)
	return mk("UICorner", { CornerRadius = UDim.new(0, tonumber(r) or 0) }, parent)
end
local function padding(t, b, l, r, parent)
	return mk("UIPadding", { PaddingTop = UDim.new(0, t), PaddingBottom = UDim.new(0, b), PaddingLeft = UDim.new(0, l), PaddingRight = UDim.new(0, r) }, parent)
end
local function stroke(color, thickness, transparency, parent)
	return mk("UIStroke", { Color = color, Thickness = thickness or 1, Transparency = transparency or 0, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, parent)
end

local Anim = {}
function Anim.to(inst, duration, props, style, dir) local info = TweenInfo.new(duration, style or Enum.EasingStyle.Quart, dir or Enum.EasingDirection.Out); local t = TweenService:Create(inst, info, props); t:Play(); return t end
function Anim.smooth(inst, duration, props) return Anim.to(inst, duration, props, Enum.EasingStyle.Quint, Enum.EasingDirection.Out) end
function Anim.spring(inst, duration, props) return Anim.to(inst, duration, props, Enum.EasingStyle.Back, Enum.EasingDirection.Out) end
function Anim.soft(inst, duration, props) return Anim.to(inst, duration, props, Enum.EasingStyle.Sine, Enum.EasingDirection.Out) end
function Anim.snap(inst, props) inst[prop .. "Value"] = props; pcall(function() tweenService:Create(inst, TweenInfo.new(0.08), {}):Play() end); return end -- immediate set

local function getHost()
	local host; pcall(function() host = (gethui and gethui()) or game:GetService("CoreGui") end)
	host = host or LocalPlayer:WaitForChild("PlayerGui"); return host
end
local function hexOf(c) return string.format("#%02X%02X%02X", math.floor(c.R * 255 + .5), math.floor(c.G * 255 + .5), math.floor(c.B * 255 + .5)) end
local hasAutoCanvas = pcall(function() return Enum.AutomaticCanvasSize.Y end)

local WidgetRegistry = {}
local PluginRegistry = {}
local Panel, PanelMethods = {}, {}

function Panel.new(ui, title, opts)
	opts = opts or {}
	local self = setmetatable({}, Panel)
	self._ui = ui; self.theme = ui.theme; self._widgets = {}; self._maxHeight = opts.MaxHeight or ui.config.PanelMaxHeight
	local width = opts.Width or 228; local x, y = ui:_nextPanelPos(width)
	local theme = self.theme; self._open = true

	local frame = mk("Frame", {
		Name = "Panel",
		Position = UDim2.fromOffset(x, y - 26),
		Size = UDim2.new(0, width, 0, 34),
		BackgroundColor3 = theme.panel,
		BackgroundTransparency = 1,
		ZIndex = 100010,
	}, ui.root)
	corner(10, frame); stroke(theme.border, 1, theme.strokeTrans, frame)

	local glass = mk("Frame", { Size = UDim2.fromScale(1, 1), BackgroundColor3 = theme.white, BackgroundTransparency = 0.96, BorderSizePixel = 0, ZIndex = 100009 }, frame)
	corner(10, glass)

	local header = mk("Frame", { Size = UDim2.new(1, 0, 0, 34), Position = UDim2.new(0, 0, 0, 0), BackgroundColor3 = theme.header, BackgroundTransparency = 0.06, ZIndex = 100011 }, frame)
	corner(10, header)
	mk("Frame", { Size = UDim2.new(1, 0, 0, 12), Position = UDim2.new(0, 0, 1, -12), BackgroundColor3 = theme.header, BackgroundTransparency = 0.06, BorderSizePixel = 0, ZIndex = 100010 }, header)

	local dot = mk("Frame", { Size = UDim2.fromOffset(10, 10), Position = UDim2.new(0, 13, 0.5, -5), BackgroundColor3 = theme.accent, ZIndex = 100012 }, header)
	corner(5, dot)
	task.spawn(function()
		while dot.Parent and ui._alive do
			Anim.soft(dot, 1.4, { Size = UDim2.fromOffset(11, 11) }); task.wait(1.4)
			Anim.soft(dot, 1.4, { Size = UDim2.fromOffset(9, 9) }); task.wait(1.4)
		end
	end)

	local titleLabel = mk("TextLabel", { Text = title, Font = Enum.Font.GothamMedium, TextSize = 13, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(1, -65, 1, 0), Position = UDim2.new(0, 29, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd, ZIndex = 100012 }, header)

	local collapse = mk("TextButton", { Text = "–", Font = Enum.Font.GothamBold, TextSize = 16, TextColor3 = theme.muted, BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.new(0, 30, 1, 0), Position = UDim2.new(1, -33, 0, 0), ZIndex = 100012 }, header)

	local bodyProps = { Size = UDim2.new(1, 0, 0, 0), Position = UDim2.new(0, 0, 0, 34), BackgroundTransparency = 1, BorderSizePixel = 0, ScrollingDirection = Enum.ScrollingDirection.Y, ScrollBarThickness = 2, ScrollBarImageColor3 = theme.accent, ScrollBarImageTransparency = 0.5, CanvasSize = UDim2.new(0, 0, 0, 0), ClipsDescendants = true, ZIndex = 100011 }
	if hasAutoCanvas then bodyProps.AutomaticCanvasSize = Enum.AutomaticCanvasSize.Y end
	local body = mk("ScrollingFrame", bodyProps, frame)
	local layout = mk("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 5) }, body)
	padding(8, 10, 10, 10, body)

	local function refresh()
		if not self._open then
			frame.Size = UDim2.new(0, width, 0, 34)
			return
		end
		local contentH = layout.AbsoluteContentSize.Y + 20
		local displayH = math.clamp(contentH, 0, self._maxHeight)
		Anim.smooth(body, 0.18, { Size = UDim2.new(1, 0, 0, displayH) })
		Anim.smooth(frame, 0.18, { Size = UDim2.new(0, width, 0, 34 + displayH) })
		if not hasAutoCanvas then body.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 6) end
	end
	layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(refresh)
	self._refreshHeight = refreshHeight
	task.defer(refresh); task.delay(.15, refresh)

	collapse.MouseButton1Click:Connect(function()
		self._open = not self._open; collapse.Text = self._open and "–" or "+"; body.Visible = self._open; refresh()
	end)
	collapse.MouseEnter: connect(function() Anim.soft(collapse, .15, { TextColor3 = theme.accent }) end)
	collapse.MouseLeave: connect(function() Anim.soft(collapse, .15, { TextColor3 = theme.muted }) end)
	ui:_makeDraggable(header, frame)

	self.frame = frame; self.body = body; self.header = header; self.titleLabel = titleLabel
	Anim.smooth(frame, .45, { Position = UDim2.fromOffset(x, y), BackgroundTransparency = theme.panelTrans })
	return self
end

PanelMethods._ctx = function(self) return {
	theme = self.theme, ui = self._ui, panel = self, body = self.body,
		mk = mk, corner = corner, padding = padding, stroke = stroke, Anim = Anim,
		row = function(h) return self:Row(h) end, register = function(w) return self:_register(w) end,
		trackInput = function(fn) return self._ui:_trackInput(fn) end,
		trackInputEnded = function(fn) return self._ui:_trackInputEnded(fn) end,
}
PanelMethods._register = function(self, widget) widget = widget or {}; table.insert(self._widgets, widget); self._ui:_registerWidget(widget); if self._refreshHeight then task.defer(self._refreshHeight) end; return widget end
PanelMethods.Row = function(self, height)
	local theme = self.theme; local row = mk("Frame", { Size = UDim2.new(1, 0, 0, height or 26), BackgroundColor3 = theme.row, BackgroundTransparency = 1, ZIndex = 100012 }, self.body)
	corner(6, row)
	row.MouseEnter: connect(function() Anim.soft(row, .12, { BackgroundTransparency = .5 }) end)
	row.MouseLeave: connect(function() Anim.soft(row, .15, { BackgroundTransparency = 1 }) end)
	return row
end
PanelMethods.SetTitle = function(self, t) self.titleLabel.Text = t end
PanelMethods.SetMaxHeight = function(self, px) self._maxHeight = px; if self._refreshHeight then self._refreshHeight() end end
PanelMethods.SetOrder = function(self, o) self.frame.LayoutOrder = o end
PanelMethods.SetVisible = function(self, v)
	local theme = self.theme
	if v then
		self.frame.Visible = true
		Anim.smooth(self.frame, .28, { BackgroundTransparency = theme.panelTrans, Size = UDim2.new(0, self.frame.Size.X.Offset, 0, 340) })
	else
		Anim.smooth(self.frame, .22, { BackgroundTransparency = 1 }); task.delay(.22, function() if self.frame then self.frame.Visible = false end end)
	end
end
PanelMethods.Destroy = function(self) pcall(function() self.frame:Destroy() end) end
Panel.__index = function(tbl, k)
	local d = PanelMethods[k]; if d then return d end
	if type(k) == "string" and k:sub(1,3) == "Add" then
		local n = k:sub(4); local b = WidgetRegistry[n]
		if b then return function(self, ...) return b(self, self:_ctx(), ...) end
	end
	return nil
end

WidgetRegistry.Label = function(panel, ctx, text)
	local theme = ctx.theme
	local lbl = ctx.mk("TextLabel", { Text = text or "", Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 100013 }, ctx.body)
	local w = { type = "label" }; function w:Set(t) lbl.Text = t end; return ctx.register(w)
end

WidgetRegistry.Separator = function(panel, ctx, label)
	local theme = ctx.theme; local row = ctx.mk("Frame", { Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1, ZIndex = 100012 }, ctx.body)
	ctx.mk("Frame", { Size = UDim2.new(0, 3, 0, 12), Position = UDim2.new(0, 0, .5, -6), BackgroundColor3 = theme.accentDim, BorderSizePixel = 0, ZIndex = 100013 }, row)
	ctx.mk("TextLabel", { Text = label or "", Font = Enum.Font.GothamMedium, TextSize = 10, TextColor3 = theme.dim, BackgroundTransparency = 1, Size = UDim2.new(1, -12, 1, 0), Position = UDim2.new(0, 10, 0, 0), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
	return ctx.register({ type = "label" })
end

WidgetRegistry.Toggle = function(panel, ctx, label, default, callback)
	local theme = ctx.theme; local row = ctx.row(28); ctx.padding(0, 0, 10, 8, row)
	ctx.mk("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(1, -72, 1, 0), TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd, ZIndex = 100013 }, row)
	
	-- bind key area moved below for clarity
	local bindArea = ctx.mk("TextButton", { Text = "", Font = Enum.Font.Code, TextSize = 10, TextColor3 = theme.dim, BackgroundTransparency = 1, Size = UDim2.new(0.55, 0, 1, 0), Position = UDim2.new(0.45, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, AutoButtonColor = false, Active = false, ZIndex = 100014 }, row)
	local btn = ctx.mk("TextButton", { Text = "", Size = UDim2.fromOffset(36, 18), AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, 0, .5, 0), BackgroundColor3 = theme.rowAlt, AutoButtonColor = false, ZIndex = 100013 }, row)
	corner(9, btn); local bs = ctx.stroke(default and theme.accent or theme.borderBright, 1.5, 0, btn)
	local knob = ctx.mk("Frame", { Size = UDim2.fromOffset(13, 13), AnchorPoint = Vector2.new(0, .5), Position = default and UDim2.new(1, -17, .5, 0) or UDim2.new(0, 4, .5, 0), BackgroundColor3 = default and theme.accent or theme.muted, ZIndex = 100014 }, btn); corner(7, knob)
	
	local enabled, boundKey, waiting = default and true or false, nil, false
	local widget = { type = "toggle", value = enabled }
	
	local function refresh()
		Anim.spring(knob, .22, { Position = enabled and UDim2.new(1, -17, .5, 0) or UDim2.new(0, 4, .5, 0), BackgroundColor3 = enabled and theme.accent or theme.muted })
		Anim.soft(bs, .15, { Color = enabled and theme.accent or theme.borderBright }); Anim.soft(btn, .15, { BackgroundColor3 = enabled and theme.accentDim or theme.rowAlt })
	end
	
	local function flip() enabled = not enabled; widget.value = enabled; refresh(); if callback then task.spawn(callback, enabled) end
	btn.MouseButton1Click:connect(flip)
	
	-- Right-click on row opens bind capture instead of bindLabel
	row.InputBegan: connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			waiting = true; bindArea.Text = "[...]"; Anim.soft(bindArea, .1, { TextColor3 = theme.accent })
		end
	end)
	
	ctx.trackInput(function(input, gp)
		if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
			waiting = false
			if input.KeyCode == Enum.KeyCode.Escape then
				boundArea = nil; bindArea.Text = ""; Anim.soft(bindArea, .1, { TextColor3 = theme.muted }); if callback then task.spawn(callback, nil) end; return
			end
			boundArea.Text = "["..input.KeyCode.Name.."]"; Anim.soft(bindArea, .1, { TextColor3 = theme.dim })
			boundKey = input.KeyCode; widget.value = input.KeyCode; if callback then task.spawn(callback, input.KeyCode) end; return
		end
		if not gp and boundKey and input.KeyCode == boundKey and input.UserInputType == Enum.UserInputType.Keyboard then flip() end
	end)
	function widget:Set(v) enabled = v and true or false; widget.value = enabled; refresh(); if callback then task.spawn(callback, enabled) end end
	function widget:Get() return enabled end
	return ctx.register(widget)
end

WidgetRegistry.Slider = function(panel, ctx, label, min, max, default, rounding, callback)
	local theme = ctx.theme; min = min or 0; max = max or 100; default = default ~= nil and default or min; local span = max - min; if span <= 0 then span = 1 end
	local row = ctx.row(40); ctx.padding(6, 6, 10, 10, row)
	ctx.mk("TextLabel", { Text = label, Font = Enum.Font.Gotham, TextSize = 12, TextColor3 = theme.text, BackgroundTransparency = 1, Size = UDim2.new(0.62, 0, 0, 15), TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 100013 }, row)
	local valLbl = ctx.mk("TextLabel", { Text = tostring(math.round((default or min), rounding or 1)), Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = theme.accent, BackgroundTransparency = 1, Size = UDim2.new(0.38, 0, 0, 15), Position = UDim2.new(0.62, 0, 0, 0), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 100013 }, row)
	local track = ctx.mk("Frame", { Size = UDim2.new(1, 0, 0, 6), Position = UDim2.new(0, 0, 0, 24), BackgroundColor3 = theme.rowAlt, BorderSizePixel = 0, ZIndex = 100013 }, row); corner(3.5, track)
	local fill = ctx.mk("Frame", { Size = UDim2.fromScale((default-min)/span, 1), BackgroundColor3 = theme.accent, BorderSizePixel = 0, ZIndex = 100014 }, track); corner(3.5, fill)
	local knob = ctx.mk("Frame", { Size = UDim2.fromOffset(14, 14), AnchorPoint = Vector2.new(.5, .5), Position = UDim2.new((default-min)/span, 0, .5, 0), BackgroundColor3 = theme.white, ZIndex = 100015 }, track); corner(7, knob); ctx.stroke(theme.accentDim, 1.5, .1, knob)
	local glow = ctx.mk("Frame", { Size = UDim2.fromOffset(20, 20), AnchorPoint = Vector2.new(.5,.5), Position = UDim2.new(.5,.5,0,0), BackgroundColor3 = theme.accent, BackgroundTransparency = .7, BorderSizePixel = 0, ZIndex = 100014 }, knob); corner(10, glow)
	
	local widget = { type = "slider", value = default, _min = min, _max = max }
	local function round(v) if not rounding then return v end; if rounding == 0 then return math.floor(v+.5) end; local p = 10^rounding; return math.floor(v*p+.5)/p end
	local drag = false
	local function setVal(v, anim)
		v = math.clamp(v, min, max)
		local a = (v-min)/span
		if anim then
			Anim.smooth(fill, .12, { Size = UDim2.fromScale(a, 1) })
			Anim.smooth(knob, .12, { Position = UDim2.new(a,0,.5,0) })
		else fill.Size = UDim2.fromScale(a,1); knob.Position = UDim2.new(a,0,.5,0)
		end
		local s = round(v); valLbl.Text = tostring(s); widget.value = s; glow.Position = UDim2.new(-.1,0,0,0) -- reset glow
		if callback then task.spawn(callback, s) end
	end
	local function fromX(px) return min + math.clamp((px-track.AbsolutePosition.X)/track.AbsoluteSize.X,0,1)*span end
	track.InputBegan: connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
			drag = true; Anim.spring(knob, .12, { Size = UDim2.fromOffset(16, 16) }); setVal(fromX(i.Position.X))
		elseif i.UserInputType == Enum.UserInputType.MouseWheel then
			setVal(widget.value + i.Position.Z*(span/50), true)
		end
	end)
	knob.InputBegan: connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
			drag = true; Anim.spring(knob, .12, { Size = UDim2.fromOffset(16, 16) })
		end
	end)
	ctx.trackInput(function(i) if drag and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then setVal(fromX(i.Position.X)) end )
	ctx.trackInputEnded(function(i)
		if (i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch) and drag then
			drag=false; Anim.spring(knob, .18, { Size = UDim2.fromOffset(14, 14) }); glow.Size = UDim2.fromOffset(0,0); glow.Position = UDim2.new(-.1,0,0,0)
		end
	end)
	widget.Set = function(v) setVal(v,true) end
	widget.Get = function() return widget.value end
	setVal(default)
	return ctx.register(widget)
end

WidgetRegistry.ModeToggle = function(panel, ctx, label, modes, defaultIdx, cb)
	local theme = ctx.theme; modes=modes or {}; defaultIdx=defaultIdx or 1; if #modes<1 then return ctx.register{type="modetoggle",value=0,_modes={}} end
	local row=ctx.row(40); ctx.padding(6,6,10,10,row); ctx.mk("TextLabel",{Text=label,Font=Enum.Font.Gotham,TextSize=12,TextColor3=theme.text,BackgroundTransparency=1,Size=UDim2.new(1,0,0,16),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=100013},row)
	local track=ctx.mk("Frame",{Size=UDim2.new(1,0,0,24),Position=UDim2.new(0,0,0,18),BackgroundColor3=theme.rowAlt,BorderSizePixel=0,ZIndex=100013},row);corner(12,track)
	local segW=1/#modes
	local fill=ctx.mk("Frame",{Size=UDim2.fromScale(segW,1),Position=UDim2.fromScale((defaultIdx-1)*segW,0),BackgroundColor3=theme.accent,BackgroundTransparency=.15,BorderSizePixel=0,ZIndex=100014},track);corner(12,fill)
	local labels={}
	for i,name in pairs(modes) do labels[i]=ctx.mk("TextLabel",{Text=name,Font=Enum.Font.GothamMedium,TextSize=10,TextColor3=i==defaultIdx and theme.text or theme.dim,BackgroundTransparency=1,Size=Udim.fromScale(segW,1),Position=UDim.fromScale((i-1)*segW,0),ZIndex=100016},track) end
	local w={type="modetoggle",value=defaultIdx,_modes=modes}
	local function snap(i)
		i=math.clamp(i,1,#modes);w.value=i
		Anim.spring(fill,.28,{Position=UDim.fromScale((i-1)*segW,0)})
		for _,l in ipairs(labels) do Anim.soft(l,.15,{TextColor3=i==i and theme.text or theme.dim}) end
		if cb then task.spawn(cb,i,modes[i]) end
	end
	track.InputBegan:connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then snap(math.floor(((i.Position.X-track.AbsolutePosition.X)/track.AbsoluteSize.X)*#modes)+1)) end end)
	w.Set=function(i) snap(i) end; w.Get=function() return w.value end; w.GetMode=function() return modes[w.value] end
	return ctx.register(w)
end

WidgetRegistry.Dropdown = function(panel, ctx, label, options, default, callback)
	local theme=ctx.theme; options=options or {}; default=default or options[1] or ""
	local wrapper=ctx.mk("Frame",{Size=UDim.new(1,0,0,28),AutomaticSize=Enum.AutomaticSizeY,BackgroundTransparency=1,ZIndex=100014},ctx.body)
	ctx.mk("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,3)},wrapper)
	local row=ctx.mk("Frame",{Size=UDim.new(1,0,0,28),BackgroundTransparency=1,LayoutOrder=1,ZIndex=100014},wrapper); ctx.padding(0,0,10,8,row)
	ctx.mk("TextLabel",{Text=label,Font=Enum.Font.Gotham,TextSize=12,TextColor3=theme.text,BackgroundTransparency=1,Size=UDim.new(0.5,0,1,0),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=100015},row)
	local btn=ctx.mk("TextButton",{Text="",Size=UDim.new(0,104,0,21),AnchorPoint=Vector2.new(1,.5),Position=UDim.new(1,0,.5,0),BackgroundColor3=theme.rowAlt,AutoButtonColor=false,ZIndex=100015},row); corner(6,btn); ctx.stroke(theme.border,1,.2,btn)
	local valTxt=ctx.mk("TextLabel",{Text=default,Font=Enum.Font.Gotham,TextSize=11,TextColor3=theme.text,BackgroundTransparency=1,Size=UDim.new(1,-18,1,0),Position=UDim.new(0,7,0,0),TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,ZIndex=100016},btn)
	local arrow=ctx.mk("TextLabel",{Text="▾",Font=Enum.Font.Gotham,TextSize=11,TextColor3=theme.dim,BackgroundTransparency=1,Size=UDim.new(0,16,1,0),Position=UDim.new(1,-14,0,0),ZIndex=100016},btn)
	local list=ctx.mk("Frame",{Size=UDim.new(1,0,0,0),BackgroundColor3=theme.header,ClipsDescendants=true,LayoutOrder=2,ZIndex=100016},wrapper); corner(6,list); ctx.stroke(theme.border,1,.2,list); ctx.mk("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder},list); ctx.padding(4,4,4,4,list)
	local selected,open = default,optButtons={},widget={type="dropdown",value=default,_options=options}
	local function rebuild()
		for _,b in ipairs(optButtons) do pcall(function()b:Destroy() end) end
		optButtons={}
		for _,opt in ipairs(options) do
			local ob=ctx.mk("TextButton",{Text=opt,Font=Enum.Font.Gotham,TextSize=11,TextColor3=opt==selected and theme.accent or theme.muted,BackgroundTransparency=1,Size=UDim.new(1,0,0,21),AutoButtonColor=false,ZIndex=100017},list)
			corner(4,ob)
			ob.MouseEnter:connect(function()Anim.soft(ob,.1,{BackgroundTransparency=.7,BackgroundColor3=theme.accentDim}) end)
			ob.MouseLeave:connect(function()Anim.soft(ob,.1,{BackgroundTransparency=1}) end)
			ob.MouseButton1Click:connect(function()
				selected=opt;widget.value=opt;valTxt.Text=opt;if cb then task.spawn(cb,opt) end
				open=false; Anim.smooth(list,.2,{Size=UDim.new(1,0,0,0)});Anim.smooth(arrow,.15,{Rotation=0})
				for _,x in ipairs(optButtons)do Anim.soft(x,.15,{TextColor3=x.Text==opt and theme.accent or theme.muted}) end
				if panel._refreshHeight then task.delay(.05,panel._refreshHeight); task.delay(.2,panel._refreshHeight) end
			end)
			table.insert(optButtons,ob)
		end
	end
	btn.MouseButton1Click:connect(function()
		open=open; Anim.smooth(list,.25,{Size=open and UDim.new(1,0,0,#options*25+8) or UDim.new(1,0,0,0)}); Anim.smooth(arrow,.18,{Rotation=open and 180 or 0})
		if panel._refreshHeight then task.delay(.05,panel._refreshHeight); task.delay(.25,panel._refreshHeight) end
	end)
	widget.Set=function(v) selected=v;widget.value=v;valTxt.Text=v;for _,x in ipairs(optButtons) do Anim.soft(x,.15,{TextColor3=x.Text==v and theme.accent or theme.muted}) end; if cb then task.spawn(cb,v) end end
	widget.Get=function() return selected end
	widget.SetOptions=function(newOpts)options=newOpts or{};widget._options=options;if not table.find(options,selected)then selected=options[1] or"";valTxt.Text=selected;widget.value=selected end; rebuild()
	rebuild();return ctx.register(widget)
end

WidgetRegistry.Button = function(panel, ctx,label,callback,danger)
	local theme=ctx.theme;color=danger and theme.bad or theme.accent
	local btn=ctx.mk("TextButton",{Text=label,Font=-- "GothamSemiBold"or "font",TextSize=12,TextColor3=theme.text,BackgroundColor3=theme.row,BackgroundTransparency=0.25,AutoButtonColor=false,Size=UDim.new(1,0,0,30),ZIndex=100013},ctx.body); corner(7,btn); local bs=ctx.stroke(theme.border,1.15,.15,btn)
	btn.MouseEnter:connect(function()Anim.soft(btn,.12,{BackgroundTransparency=0,TextColor3=color});Anim.soft(bs,.12,{Color=color})end)
	btn.MouseLeave:connect(function()Anim.soft(btn,.18,{BackgroundTransparency=.25,TextColor3=theme.text});Anim.soft(bs,.18,{Color=theme.border})end)
	btn.MouseButton1Click:connect(function()
		Anim.spring(btn,.08,{Size=UDim.new(.97,0,0,28)})
		task.wait(.08)
		Anim.spring(btn,.15,{Size=UDim.new(1,0,0,30)})
		if callback then task.spawn(callback) end
	end)
	local w={type="button"}; w.Fire=function() if callback then task.spawn(callback) end; w.SetText=function(t)btn.Text=t end; return ctx.register(w)
end

WidgetRegistry.Keybind = function(panel,ctx,label,defaultKey,callback)
	local theme=ctx.theme;local row=ctx.row(28);ctx.padding(0,0,10,8,row)
	ctx.mk("TextLabel",{Text=label,Font=Enum.Font.Gotham,TextSize=12,TextColor3=theme.text,BackgroundTransparency=1,Size=UDim.new(.58,0,1,0),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=100013},row)
	local kbBtn=ctx.mk("TextButton",{Text="["..",(defaultKey and defaultKey.Name or"...").."]",Font=Enum.Font.Gotham,TextSize=11,TextColor3=theme.dim,BackgroundTransparency=1,Size=UDim2.new(.42,-6,1,0),Position=UDim.new(.58,0,0,0),TextXAlignment=Enum.TextXAlignment.Right,Active=false,ZIndex=100014},row)
	local waiting,boundKey=false,defaultKey,w={type="keybind",value=defaultKey}
	kbBtn.MouseButton1Click:connect(function()waiting=true;kbBtn.Text="[...]",Anim.soft(kbBtn,.1,{TextColor3=theme.accent});end)
	ctx.trackInput(function(input,gp)
	if waiting and input.UserInputType==Enum.UserInputType.Keyboard then
		waiting=false
		if input.KeyCode==Enum.KeyCode.Escape then kbBtn.Text="[..]";boundKey=nil;widget.value=nil;Anim.soft(kbBtn,.1,{TextColor3=theme.muted});if callback then task.spawn(callback,nil)return end
		else kbBtn.Text="["..input.KeyCode.Name.."]";Anim.soft(kbBtn,.1,{TextColor3=theme.dim});boundKey=input.KeyCode;widget.value=input.KeyCode;if callback then task.spawn(callback,input.KeyCode)end;return
	end
	if not gp and boundKey and input.KeyCode==boundKey and input.UserInputType==Enum.UserInputType.Keyboard then
		if widget._onPress then task.spawn(widget._onPress)end
	end
	end)
	w.Set=function(k)boundKey=k;widget.value=k;kbBtn.Text=k and("["..k.Name.."]")or"[..]"
	w.Get=function()return boundKey end
	w.OnPress=function(fn)widget._onPress=fn end
	return ctx.register(w)
end

WidgetRegistry.TextBox = function(panel,ctx,label,default,placeholder,callback)
	local theme=ctx.theme;local hasLabel=label~=""
	local row=ctx.row(hasLabel and 34 or 26);ctx.padding(5,5,10,10,row)
	if hasLabel then ctx.mk("TextLabel",{Text=label,Font=Enum.Font.Gotham,TextSize=12,TextColor3=theme.text,BackgroundTransparency=1,Size=UDim.new(1,0,0,15),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=100013},row) end
	local box=ctx.mk("TextBox",{Text=default or"",PlaceholderText=placeholder or"",Font=Enum.Font.Gotham,TextSize=12,TextColor3=theme.text,PlaceholderColor3=theme.dim,BackgroundColor3=theme.rowAlt,BackgroundTransparency=.35,ClearTextOnFocus=false,Size=UDim.new(1,0,0,20),Position=hasLabel and UDim.new(0,0,0,17) or UDim2.new(0,0,0,3),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=100013},row); corner(5,box);ctx.padding(0,0,8,8,box);local bs=ctx.stroke(theme.border,1.2,.2,box)
	box.Focused:connect(function()Anim.soft(box,.12,{BackgroundTransparency=.05});Anim.soft(bs,.12,{Color=theme.accent})end)
	box.FocusLost:connect(function(e)Anim.soft(box,.12,{BackgroundTransparency=.35});Anim.soft(bs,.12,{Color=theme.border})end)
	local w={type="textbox",value=default or""}
	box.FocusLost:connect(function(e)
		Anim.soft(box,.12,{BackgroundTransparency=.35});Anim.soft(bs,.12,{Color=theme.border})
		w.value=box.Text;if callback then task.spawn(callback,box.Text,e)end
	end)
	w.Set=function(t)box.Text=t or"";w.value=box.Text end
	w.Get=function()return box.Text end
	return ctx.register(w)
end

WidgetRegistry.ProgressBar = function(panel,ctx,label,initial,callback)
	local theme=ctx.theme;local row=ctx.row(34);ctx.padding(6,6,10,10,row)
	ctx.mk("TextLabel",{Text=label,Font=.." GothicSemiBold"or" font",TextSize=12,TextColor3=theme.text,BackgroundTransparency=1,Size=UDim.new(.65,0,0,14),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=100013},row)
	local pct=ctx.mk("TextLabel",{"0%",Font=.." GothamSemiBold"or" font",TextSize=11,TextColor3=theme.accent,BackgroundTransparency=1,Size=UDim.new(.35,0,0,14),Position=UDim.new(.65,0,0,0),TextXAlignment=Enum.TextXAlignment.Right,ZIndex=100013},row)
	local track=ctx.mk("Frame",{Size=UDim.new(1,0,0,6),Position=UDim.new(0,0,0,20),BackgroundColor3=theme.rowAlt,BorderSizePixel=0,ZIndex=100013},row);corner(3.5,track)
	local fill=ctx.mk("Frame",{Size=UDim.fromScale(math.clamp(initial or 0,0,1),1),BackgroundColor3=theme.accent,BorderSizePixel=0,ZIndex=100014},track);corner(3.5,fill)
	local w={type="progress",value=initial or 0}
	local function set(p)
		p=math.clamp(p,0,1);w.value=p
		Anim.smooth(fill,.25,{Size=UDim.fromScale(p,1),BackgroundColor3=p>=1 and theme.good or theme.accent})
		pct.Text=math.floor(p*100+.5).."%"
		Anim.soft(pct,.2,{TextColor3=p>=1 and theme.good or theme.accent})
		if callback then task.spawn(callback,p) end
	end
	w.Set=set; w.Get=function()return w.value end
	set(initial or 0);return ctx.register(w)
end

WidgetRegistry.ColorPicker = function(panel,ctx,label,defaultColor,callback)
	local theme=ctx.theme;defaultColor=defaultColor or theme.white
	local row=ctx.row(28);ctx.padding(0,0,10,8,row)
	ctx.mk("TextLabel",{Text=label,Font=Enum.Font.Gotham,TextSize=12,TextColor3=theme.text,BackgroundTransparency=1,Size=UDim.new(.4,0,1,0),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=100013},row)
	local swatch=ctx.mk("TextButton",{Text="",Size=UDim.fromOffset(28,18),AnchorPoint=Vector2.new(1,.5),Position=UDim.new(1,0,.5,0),BackgroundColor3=defaultColor,AutoButtonColor=false,ZIndex=100013},row);corner(5,swatch);ctx.stroke(theme.borderBright,1.2,.08,swatch)
	local hexBox=ctx.mk("TextBox",{Text=hexOf(defaultColor),Font=Enum.Font.Code,TextSize=11,TextColor3=theme.muted,BackgroundColor3=theme.rowAlt,ClearTextOnFocus=false,Size=UDim.fromOffset(62,18),AnchorPoint=local2.new(1,.5),Position=UDim.new(1,-34,.5,0),TextXAlignment=Center,ZIndex=100013},row);corner(5,hexBox)
	local picker=ctx.mk("Frame",{Size=UDim.fromOffset(170,118),Position=UDim.new(1,12,0,0),BackgroundColor3=theme.header,BackgroundTransparency=0.02,Visible=false,ZIndex=100050},row);corner(8,picker);ctx.stroke(theme.border,1.15,.04,picker);ctx.padding(10,10,10,10,picker)
	local hue,sat,val=Color3.toHSV(defaultColor);local w={type="color",value=defaultColor}
	local function setColor(c)
		swatch.BackgroundColor3=c; hexBox.Text=hexOf(c); w.value=c; if callback then task.spawn(callback,c) end
	end
	local grid=ctx.mk("Frame",{Size=UDim.fromOffset(152,64),BackgroundColor3=Color3.fromHSV(hue,1,1),BorderSizePixel=0,ZIndex=100051},picker);corner(5,grid)
	ctx.mk("UIGradient",{Color=ColorSequence.new(Color3.new(1,1,1),Color3.fromHSV(hue,1,1)),Rotation=0},grid)
	local shade=ctx.mk("Frame",{Size=UDim.fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),BorderSizePixel=0,ZIndex=100052},grid);corner(5,shade)
	ctx.mk("UIGradient",{Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)}),Rotation=90},shade)
	local crosshair=ctx.mk("Frame",{Size=UDim.fromOffset(9,9),AnchorPoint=Vector2.new(.5,.5),BackgroundColor3=theme.white,BorderSizePixel=0,ZIndex=100061},grid);corner(4,crosshair);ctx.stroke(theme.black,1.2,.3,crosshair)
	local hueBar=ctx.mk("Frame",{Size=UDim.fromOffset(152,16),Position=UDim.fromOffset(0,76),BorderSizePixel=0,ZIndex=100051},picker);corner(4,hueBar)
	ctx.mk("UIGradient",{Color=ColorSequence.new({
		ColorSequenceKeypoint.new(0,Color3.fromHSV(0,1,1)),ColorSequenceKeypoint.new(.16,Color3.fromHSV(.16,1,1)),
		ColorSequenceKeypoint.new(.33,Color3.fromHSV(.33,1,1)),ColorSequenceKeypoint.new(.5,Color3.fromHSV(.5,1,1)),
		ColorSequenceKeypoint.new(.66,Color3.fromHSV(.66,1,1)),ColorSequenceKeypoint.new(.83,Color3.fromHSV(.83,1,1)),
		ColorSequenceKeypoint.new(1,Color3.fromHSV(1,1,1)),
	}),hueBar)
	local hueDot=ctx.mk("Frame",{Size=UDim.fromOffset(10,18),AnchorPoint=local2.new(.5,.5),Position=Udim.from(hue,0,.5,0),BackgroundColor3=theme.white,ZIndex=100060},hueBar);corner(4,hueDot);ctx.stroke(theme.black,1.2,.3,hueDot)
	local function updateCross()crosshair.Position=UDim.new(sat,0,1-val,0) end;updateCross()
	local dragGrid,dragHue=false,false
	local function applyGrid(p)
		sat=math.clamp((p.X-grid.AbsolutePosition.X)/grid.AbsoluteSize.X,0,1)
		val=1-math.clamp((p.Y-grid.AbsolutePosition.Y)/grid.AbsoluteSize.Y,0,1)
		updateCross();setColor(Color3.fromHSV(hue,sat,val))
	end
	local function applyHue(p)
		hue=math.clamp((p.X-hueBar.AbsolutePosition.X)/hueBar.AbsoluteSize.X,0,1)
		hueDot.Position=UDim.new(hue,0,.5,0)
		grid.BackgroundColor3=Color3.fromHSV(hue,1,1);setColor(Color3.fromHSV(hue,sat,val))
	end
	grid.InputBegan:connect(function(i)
		if i.UserInputType==Enum.UserInputType.MouseButton1 then dragGrid=true; applyGrid(i.Position)
	elseif i.UserInputType==Enum.UserInputType.Touch then dragGrid=true; applyGrid(i.Position) end
	end)
	grid.InputEnded:connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dragGrid=false end end)
	hueBar.InputBegan:connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dragHue=true;applyHue(i.Position) end)
	hueBar.InputEnded:connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dragHue=false end end)
	ctx.trackInput(function(i)
		if i.UserInputType~=Enum.UserInputType.MouseMovement then return end
		if dragGrid then applyGrid(i.Position) elseif dragHue then applyHue(i.Position) end
	end)
	ctx.trackInputEnded:function(i)
		if i.UserInputType==Enum.UserInputType.MouseButton1 then dragGrid=false;dragHue=false end
	end)
	swatch.MouseButton1Click:connect(function()picker.Visible=not picker.Visible
		if picker.Visible then picker.Position=UDim.new(1,12,0,-8);Anim.smooth(picker,.2,{Position=UDim.new(1,12,0,0)})end
	hexBox.FocusLost:connect(function()
		local hex=hexBox.Text:gsub("#",""); if #hex~=6 then return end
		local r,g,b=tonumber(hex:sub(1,2),16),tonumber(hex:sub(3,4),16),tonumber(hex:sub(5,6),16)
		if r and g and b then
			local c=Color3.fromRGB(r,g,b); hue,sat,val=Color3.toHSV(c)
			hueDot.Position=UDim.new(hue,0,.5,0);grid.BackgroundColor3=Color3.fromHSV(hue,1,1);updateCross();setColor(c)
		end
	end)
	w.Set=function(c) hue,sat,val=Color3.toHSV(c);hueDot.Position=UDim.new(hue,0,.5,0);grid.BackgroundColor3= setColor3.fromHSV(hue,1,1);updateCross();setColor(c)end
	w.Get=function()return w.value end
	setColor(defaultColor);return ctx.register(w)
end

local EasyUI={}
EasyUI.__index=EasyUI;EasyUI.Anim=Anim
local activeInstances={}
EasyUI.Defaults={
	PanelMaxHeight=420,CursorSize=28,WatermarkSeparator=" • ",WatermarkUpdateInterval=.5,
}

function EasyUI.new(opts)
	opts=opts or{}
	local self=setmetatable({},EasyUI)
	local theme=Themes[opts.Theme or "Pastel"] or Themes.Pastel
	local resolved={}
	for k,v in pairs(theme) do resolved[k]=v end
	if type(opts.ThemeOverride)=="table" then for k,v in pairs(opts.ThemeOverride) do resolved[k]=v end
	if opts.Accent then
		resolved.accent=opts.Accent
		resolved.accentDim=Color3fromRGB(math.floor(opts.Accent.R*180+.5),math.floor(opts.Accent.G*180+.5),math.floor(opts.Accent.B*180+.5))
	end

	self.theme=resolved
	self.title=opts.Title or "EasyUI"
	self._menuKey=opts.MenuKey or Enum.KeyCode.LeftAlt
	self._widgets={};self._panels={}
	self._inputHandlers={};self._inputEndHandlers={};self._watermarkFn=nil
	self._alive=true
	self._nextX,self._nextY=16,52
	self._configOpen=false
	local cur=opts.Cursor or{}; local wm=opts.WatermarkConfig or {}
	self.config={
		PanelMaxHeight=opts.PanelMaxHeight or EasyUI.Defaults.PanelMaxHeight,
		Cursor={Enabled=(cur.Enabled~=nil)and cur.Enabled or (opts.CustomCursor~=false),Color=cur.Color or resolved.text,OutlineColor=cur.OutlineColor or resolved.black,Size=cur.Size or EasyUI.Defaults.CursorSize},
		Watermark={Separator=wm.Separator or EasyUI.Defaults.WatermarkSeparator,UpdateInterval=wm.UpdateInterval or EasyUI.Defaults.WatermarkUpdateInterval},
	}
	self._cursorEnabled=self.config.Cursor.Enabled

	local host=getHost()
	local id=opts.Id or ("EasyUI_"..tostring(os.clock()):gsub("%.","_"))
	for _,c in ipairs(host:GetChildren()) do if c.Name==id then pcall(function() c:Destroy()end) end

	local gui=mk("ScreenGui",{Name=id,ResetOnSpawn=false,IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Global},host)
	pcall(function()gui.DisplayOrder=2147483647 end)
	pcall(function() if syn and syn.protect_gui then syn.protect gui end end)
	self.gui=gui;self._id=id

	local root=mk("Frame",{Size=UDim.fromScale(1,1),BackgroundTransparency=1,Visible=false,ZIndex=100000},gui)
	self.root=root
	self:_buildWatermark(opts.Watermark~=false)
	self:_setupStats(opts)
	self:_buildToasts()
	self:_buildUnloadButton()
	self:_buildCursor()

	UserInputService.InputBegan:connect(function(input,gp)
	if not self._alive then return end
	if input.KeyCode==self._menuKey and not gp then self:Toggle() end
		for _,fn in ipairs(self._inputHandlers) do task.spawn(fn,input,gp) end
	end)
UserInputService.InputEnded:connect(function(input,gp)
	if not self._alive then return end
	for _,fn in ipairs(self._inputEndHandlers) do task.spawn(fn,input,gp) end
	end)
	local wmTimer=0;self._fps,self._fpsAccum,self._fpsCount=0,0
	RunService.RenderStepped:connect(function(dt)
	if not self._alive then return end
	self._fpsAccum+=dt;self._fpsCount+=1
	if self._fpsAccum>=.4 then self._fps=math.floor(self._fpsCount/self._fpsAccum+.5);self._fpsAccum,self._fpsCount=0,0 end
	if self._cursor and self.cursor.Visible then
		local m=UserInputService:GetMouseLocation()
		self.cursor.Position=UDim.fromOffset(m.X,m.Y)
	end
	if self.watermarkDot and self.watermark.Visible then
		self.watermarkDot.BackgroundColor3=Color3.fromHSV((os.clock*.12)%1,.55,1)
	end
	if self.watermarkLabel and self.watermark	then
		wmTimer+=dt
		if wmTimer>=self.config.WatermarkUpdateInterval then wmTimer=0; self:_refreshWatermark() end
	end
end)

	table.insert(activeInstances,self)
	root.Visible=true
root.Position=UDim.fromOffset(0,-20)
Anim.smooth(root,.45,{Position=Udim.fromOffset(0,0)})
self:flash()
return self
end

function EasyUI:_nextPanelPos(width)
	local cam=workspace.CurrentCamera; local vp=cam and cam.ViewportSize or Vector2.new(1000,800)
	if self._nextX+width+16>vp.X then self._nextX=16;self._nextY=self._nextY+380 end
	local x,y=self._nextX,self._nextY
	self._nextX=self._nextX+width+14
	return x,y
end

function EasyUI:_makeDraggable(handle,frame)
	local dragging,dragStart,startPos=false,nil
	handle.InputBegan:connect(function(i)
		if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
			dragging=true;dragStart=i.Position;startPos=frame.Position
		end
end)
UserInputService.InputChanged:connect(function(i)
	if dragging and(i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
		local d=i.Position-dragStart
		frame.Position=Udim.new(startPos.X.Scale,startPos.X.Offset+d.X,startPos.Y.Scale,startPos.Y.Offset+d.Y)
end)
end)
UserInputService.InputEnded:connect(function(i)
	if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=false end
end

function EasyUI:_trackInput(fn) table.insert(self._inputHandlers,fn) end
function EasyUI:_trackInputEnded(fn) table.insert(self._inputEndHandlers,fn) end
function EasyUI:_registerWidget(w) table.insert(self._widgets,w) end

function EasyUI:CreatePanel(title,arg2,arg3)
	local opts
	if type(arg2)=="table" then opts=arg2 else opts={} end
	local p=Panel.new(self,title,opts)
	table.insert(self._panels,p)
	return p
end
function EasyUI:SetPanelMaxHeight(px)self.config.PanelMaxHeight=px end
function EasyUI.RegisterWidget(name,builder)
	assert(type(name)=="string" and type(builder)=="function","RegisterWidget(name,builder)")
	WidgetRegistry[name]=builder;return true
end
function EasyUI.RegisterPlugin(name,fn)
	assert(type(name)=="string" and type(fn)=="function","RegisterPlugin(name,fn)")
	PluginRegistry[name]=fn;return true
end
function EasyUI:UsePlugin(name,...)
	local fn=PluginRegistry[name]
	assert(fn,"Plugin not registered: "..tostring(name))
	return fn(self,...)
end
function EasyUI:Extend(fn,...)
	assert(type(fn)=="function","Extend expects function")
	return fn(self,...)
end
function EasyUI.GetRegisteredWidgets()
	local t={}; for k in pairs(WidgetRegistry) do t[#t+1]=k end; table.sort(t); return t
end
function EasyUI.GetRegisteredPlugins()
	local t={}; for k in pairs(PluginRegistry) do t[#t+1]=k end; table.sort(t); return t
end

function EasyUI:Toggle() self:SetVisible(not self.root.Visible) end
function EasyUI:SetVisible(v)
	self.root.Visible=v
	self:_updateCursor(v)
	if v then
		self.root.Position=UDim.fromOffset(0,-20)
		Anim.smooth(root,.35,{Position=Udim.fromOffset(0,0)},.15)
		self:flash()
	end
end
function EasyUI:GetVisible()return self.root.Visible end
function EasyUI:SetMenuKey(k)self._menuKey=k end
function EasyUI:_buildWatermark(enabled)
	local theme=self.theme
	local wm=mk("Frame",{Size=UDim.new(0,0,0,28),AutomaticSize=Enum.AutomaticSizeX,Position=Udim.new(0,14,0,12),BackgroundColor3=theme.panel,BackgroundTransparency=0,Visible=enabled,ZIndex=180000},self.gui)
	corner(8,wm);stroke(theme.border,1.2,.08,wm)
	mk("Frame",{Size=Udim.fromScale(1,1),BackgroundColor3=theme.white,BackgroundTransparency=.97,BorderSizePixel=0,ZIndex=180000},wm); corner(8,wm)
	local dot=mk("Frame",{Size=Udim.fromOffset(9,9),Position=Udim.new(0,9,.5,-4),BackgroundColor3=theme.accent,ZIndex=180001},wm); corner(5,dot)
	local lbl=mk("TextLabel",{Text=self.title,Font=Enum.Font.GothamMedium,TextSize=12,TextColor3=theme.text,BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSizeX,Size=Udim.new(0,0,1,0),Position=Udim.new(0,22,0,0),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=180001},wm)
	mk("UIPadding",{PaddingRight=Udim.new(0,10)},wm)
	local gear=mk("TextButton",{Text="⚙",Font=Enum.Gotham,TextSize=12,TextColor3=theme.muted,BackgroundTransparency=1,AutoSize=false,Size=Udim.fromOffset(22,26),Position=Udim.new(0,-24,0,0),Visible=false,ZIndex=180002},wm)
	gear.MouseButton1Click:connect(function() self:OpenConfig() end)
	gear.MouseEnter:connect(function()Anim.soft(gear,.12,{TextColor3=theme.accent})end)
	gear.MouseLeave:connect(function()Anim.soft(gear,.12,{TextColor3=theme.muted}end)
	wm.MouseEnter:connect(function()gear.Visible=true end)
	wm.MouseLeave:connect(function()gear.Visible=false end)
	self._watermark=wm;self._watermarkLabel=lbl;self._watermarkDot=dot
end

function EasyUI:_refreshWatermark()
	local parts={self.title}
	for _,s in ipairs(self._statProviders) do
		if s.enabled then
			local ok,v=pcall(s.get)
			if ok and v~=nil then
				local fok,f=pcall(s.format,v)
				parts[#parts+1]=fok and f or tostring(v)
			end
		end
	end
	if self._watermarkFn then
		local ok,data=pcall(self._watermarkFn)
		if ok and type(data)=="table" then
			for k,v in pairs(data) do parts[#parts+1]=tostring(k)..": ".... tostring(v) end
		end
	end
	self._watermarkLabel.Text=table.concat(parts,self.config.Watermark.Separator)
end

function EasyUI:_setupStats(options)
	self._statProviders={}
	self._pingFn=function()
	local ok,v=pcall(function()return StatsService.Network.ServerStatsItem["Data Ping"]:GetValue() end)
	return (ok and v) and math.floor(v+.5) or 0
end
if options.ShowFPS~=false then
	self:AddWatermarkStat("fps",function()return self._fps or 0 end,{Format=function(v)return v.." fps"end,Order=1})
end
if options.ShowPing~=false then
	self:AddWatermarkStat("ping",self._pingFn,{Format=function(v)return v.."ms"end,Order=2})
end
end

function EasyUI:AddWatermarkStat(key,getFn,opts)
	opts=opts or{}
	self:RemoveWatermarkStat(key)
	table.insert(self._statProviders,{
		key=key,get=getFn,format=opts.Format or tostring,enabled=opts.Enabled~=false,order=opts.Order or(#self._statProviders+10)
	})
	table.sort(self._stat,function(a,b) return a.order<b.order end)
end
function EasyUI:RemoveWatermarkStat(key)
	for i,s in ipairs(self._statProviders) do if s.key==key then table.remove(self._statProviders,i) return end end
end
function EasyUI:SetWatermarkStat(key,en)
	for _,s in ipairs(self._statProviders) do if s.key==key then s.enabled=en end end
end
function EasyUI:SetWatermarkVisible(v)if self._watermark then self._watermark.Visible=v end end
function EasyUI:SetWatermarkStats(fn)self._watermarkFn=fn end
function EasyUI:ConfigureWatermark(o)
	o=o or{}
	if o.Separator then self.config.Watermark.Separator=o.Separator end
	if o.UpdateInterval then self.config.Watermark.UpdateInterval=o.UpdateInterval end
	if o.Font and self._watermarkLabel then self._watermark.Font=o.Font end
	if o.TextSize then self._watermark.TextSize=o.TextSize end
	if o.Enabled~=nil then self:SetWatermarkVisible(o.Enabled) end
end

function EasyUI:_buildToasts()
	local holder=mk("Frame",{BackgroundTransparency=1,Size=UDim.new(0,280,1,-30),Position=Udim.new(1,-290,0,15),ZIndex=200000},self.gui)
	mk("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=Udim.new(0,6),VerticalAlignment=Enum.VerticalAlignment.Bottom,HorizontalAlignment=Enum.HorizontalAlignment.Right},holder)
	self._toastHolder=holder;self._toastOrder=0
end
function EasyUI:Toast(title,msg,duration,kind)
	duration=duration or 3.2; local theme=self.theme
	local color=(kind=="ok" and theme.good) or (kind=="err" and theme.bad) or (kind=="warn" and theme.warn) or theme.accent
	self._toastOrder+=1
	local toast=mk("Frame",{Size=Udim.new(1,62,0,56),Position=Udim.new(1,60,0,0),BackgroundColor3=theme.panel,BackgroundTransparency=0.03,LayoutOrder=self._toastOrder,ZIndex=200000,ClipsDescendants=true},self._toastHolder)
	corner(8,toast);stroke(theme.border,1,.2,toast)
	local bar=mk("Frame",{Size=Udim.new(0,4,1,-12),Position=Udim.new(0,6,0,6),BackgroundColor3=color,BorderSizePixel=0,ZIndex=200001},toast);corner(2,bar)
	mk("TextLabel",{Text=title,Font=Enum.FontGothamMedium,TextSize=11,TextColor3=color,BackgroundTransparency=1,Size=Udim.new(1,-24,0,15),Position=Udim.new(0,15,0,7),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=200002},toast)
	mk("TextLabel",{Text=msg,Font=Enum.FontGotham,TextSize=10,TextColor3=theme.muted,BackgroundTransparency=1,Size=Udim.new(1,-24,0,26),Position=Udim.new(0,15,0,23),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,ZIndex=200002},toast)
	local prog=mk("Frame",{Size=Udim.new(1,0,0,2),Position=Udim.new(0,0,1,-2),BackgroundColor3=color,BorderSizePixel=0,ZIndex=200003},toast)
	Anim.spring(toast,.35,{Position=Udim.new(0,0,0,0)})
	Anim.to(prog,duration,{Size=Udim.new(0,0,0,2)},Enum.EasingStyle.Linear)
	task.delay(duration,function()
		if not self._alive then return end
		Anim.smooth(toast,.3,{Position=Udim.new(1,60,0,0),BackgroundTransparency=1})
		task.wait(.35)
		pcall(function() toast:Destroy() end)
	end)
end

function EasyUI:OpenConfig()
	if self._configOpen then
		if self._configPanel then self._configPanel:SetVisible(false);self._configOpen=false;return
	end
	if self._configPanel then self._configPanel:SetVisible(true);self._configOpen=true;return end
	local p=self:CreatePanel("⚙ Settings",{Width=250})
	self._configPanel=p
	p:AddSeparator("Appearance")
	p:AddColorPicker("Accent",self.theme.accent,function(c)
		self.theme.accent=c
		self.theme.accentDim=Color3.fromRGB(math.floor(c.R*160+.5),math.floor(c.G*160+.5),math.floor(c.B*160+.5))
	end)
	p:AddToggle("Watermark",self._watermark and self._watermark.Visible or true,function(v)self:SetWatermarkVisible(v)end)
	p:AddToggle("Show FPS",true,function(v)self:SetWatermarkStatEnabled("fps",v)end)
	p:AddToggle("Show Ping",true,function(v)self:SetWatermarkStatEnabled("ping",v)end)
	p:AddToggle("Custom Cursor",self._cursorEnabled,function(v)
		self:SetCursorConfig{Enabled=v}
	end)
	p:AddSlider("Panel Scroll Height",200,700,self.config.PanelMaxHeight,0,function(v)self:SetPanelMaxHeight(v)end)
	p:AddSeparator("Controls")
	p:AddKeybind("Menu Key",self._menuKey,function(k)
		if k then
			self._menuKey=k
			self:Toast("Keybind","Menu key: "..k.Name..",1.5,"ok")
		end
	end)
	p:AddSeparator("Actions")
	p:AddButton("Unload UI",function()
		self:Toast("EasyUI","Unloading...",1.5,"warn");task.delay(.6,function()self:Destroy()end)
	end,true)
	self._configOpen=true
end

function EasyUI:CloseConfig()
	if self._configPanel then self._configPanel:SetVisible(false);self._configOpen=false end
end

function EasyUI:GetConfig()
	local out={}
	for i,w in ipairs(self._widgets) do
		if w.type~="button" and w.type~="label" then out[i]={type=w.type,value=w.value} end
	end
	return out
end
function EasyUI:GetWidgets()return self._widgets end
function EasyUI:GetPanels()return self._panels end
function EasyUI:Destroy()
	self._alive=false;self:_updateCursor(false)
	for i=#activeInstances,1,-1 do
		if activeInstances[i]==self then table.remove(activeInstances,i) end
	end
	pcall(function()UserInputService.MouseIconEnabled=true end)
	pcall(function()self.gui:Destroy()end)
	self._widgets={}
	self._panels={}
	self._inputHandlers={}
	self._inputEndHandlers={}
end

function EasyUI.GetThemes()
	local t={};for k in pairs(Themes) do t[#t+1]=k end; table.sort(t); return t
end
function EasyUI.AddTheme(name,palette)
	if type(name)=="string" and type(palette)=="table" then Themes[name]=palette;return true end
	return false
end
function EasyUI.GetTheme(name)return Themes[name]end

return EasyUI
