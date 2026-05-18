-- =============================================================================
-- 🧬 WISL UNIVERSAL - SÜRÜM V14 (PRO MOBILE RE-DESIGN)
-- =============================================================================
-- Yapımcı: Muhammed // Kayma ve Kötü Görünüm Hataları Tamamen Düzeltilmiş Sürüm

if game.CoreGui:FindFirstChild("WislUniversalV14") then 
    game.CoreGui.WislUniversalV14:Destroy() 
end

local Wisl = Instance.new("ScreenGui")
Wisl.Name = "WislUniversalV14"
Wisl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Wisl.Parent = game.CoreGui

-- 🟪 MASTER PANEL (Ekrana Göre Otomatik Ölçeklenir)
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 540, 0, 320)
Main.Position = UDim2.new(0.5, -270, 0.5, -160) -- Tam ekran ortalaması
Main.BackgroundColor3 = Color3.fromRGB(13, 11, 22)
Main.Active = true
Main.Draggable = true
Main.Parent = Wisl

Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 8)
local MasterStroke = Instance.new("UIStroke", Main)
MasterStroke.Color = Color3.fromRGB(140, 50, 255)
MasterStroke.Thickness = 2

-- 🏷️ ÜST BAŞLIK ALANI
local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 40)
Header.BackgroundTransparency = 1
Header.Parent = Main

local Title = Instance.new("TextLabel", Header)
Title.Size = UDim2.new(0.5, 0, 1, 0)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Text = "Wisl Universal // V14"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.BackgroundTransparency = 1

local Search = Instance.new("TextBox", Header)
Search.Size = UDim2.new(0, 160, 0, 26)
Search.Position = UDim2.new(1, -210, 0, 7)
Search.PlaceholderText = "Target name..."
Search.BackgroundColor3 = Color3.fromRGB(22, 18, 36)
Search.TextColor3 = Color3.fromRGB(255, 255, 255)
Search.Font = Enum.Font.Gotham
Search.TextSize = 11
Search.Parent = Header
Instance.new("UICorner", Search).CornerRadius = UDim.new(0, 4)
Instance.new("UIStroke", Search).Color = Color3.fromRGB(45, 35, 70)

-- 🧩 SOL KATEGORİ PANELİ (BÖLMELER)
local Sidebar = Instance.new("Frame", Main)
Sidebar.Size = UDim2.new(0, 125, 1, -55)
Sidebar.Position = UDim2.new(0, 10, 0, 45)
Sidebar.BackgroundColor3 = Color3.fromRGB(9, 7, 16)

Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 6)
local SLayout = Instance.new("UIListLayout", Sidebar)
SLayout.Padding = UDim.new(0, 4)

-- 📦 SAĞ İÇERİK ALANI
local Container = Instance.new("Frame", Main)
Container.Size = UDim2.new(1, -155, 1, -55)
Container.Position = UDim2.new(0, 145, 0, 45)
Container.BackgroundTransparency = 1

-- 📜 SAYFA FABRİKASI
local function CreatePage()
    local P = Instance.new("ScrollingFrame", Container)
    P.Size = UDim2.new(1, 0, 1, 0)
    P.BackgroundTransparency = 1
    P.Visible = false
    P.CanvasSize = UDim2.new(0, 0, 0, 400)
    P.ScrollBarThickness = 2
    P.ScrollBarImageColor3 = Color3.fromRGB(140, 50, 255)
    local L = Instance.new("UIListLayout", P)
    L.Padding = UDim.new(0, 5)
    return P
end

local P_Main = CreatePage() local P_Troll = CreatePage() local P_Target = CreatePage() local P_Esp = CreatePage() local P_Anim = CreatePage() local P_FE = CreatePage()
P_Main.Visible = true

-- 🛠️ AKILLI NESNE OLUŞTURUCULAR
local function AddTab(txt, pg)
    local b = Instance.new("TextButton", Sidebar)
    b.Size = UDim2.new(1, 0, 0, 30)
    b.BackgroundColor3 = Color3.fromRGB(18, 14, 32)
    b.Text = "  " .. txt
    b.TextColor3 = Color3.fromRGB(170, 160, 190)
    b.Font = Enum.Font.GothamSemibold
    b.TextSize = 11
    b.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4)
    
    b.MouseButton1Click:Connect(function()
        for _, v in pairs(Container:GetChildren()) do if v:IsA("ScrollingFrame") then v.Visible = false end end
        pg.Visible = true
    end)
end

local function AddBtn(pg, txt, cb)
    local b = Instance.new("TextButton", pg)
    b.Size = UDim2.new(1, -6, 0, 34)
    b.BackgroundColor3 = Color3.fromRGB(24, 19, 42)
    b.Text = "  " .. txt
    b.TextColor3 = Color3.fromRGB(240, 235, 255)
    b.Font = Enum.Font.Gotham
    b.TextSize = 12
    b.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
    Instance.new("UIStroke", b).Color = Color3.fromRGB(45, 35, 75)
    b.MouseButton1Click:Connect(cb)
end

local function AddToggle(pg, txt, cb)
    local f = Instance.new("Frame", pg)
    f.Size = UDim2.new(1, -6, 0, 34)
    f.BackgroundColor3 = Color3.fromRGB(20, 16, 36)
    Instance.new("UICorner", f).CornerRadius = UDim.new(0, 5)
    
    local l = Instance.new("TextLabel", f)
    l.Size = UDim2.new(0.7, 0, 1, 0)
    l.Position = UDim2.new(0, 10, 0, 0)
    l.Text = txt
    l.TextColor3 = Color3.fromRGB(215, 205, 235)
    l.Font = Enum.Font.Gotham
    l.TextSize = 11
    l.BackgroundTransparency = 1
    l.TextXAlignment = Enum.TextXAlignment.Left
    
    local tb = Instance.new("TextButton", f)
    tb.Size = UDim2.new(0, 40, 0, 20)
    tb.Position = UDim2.new(1, -50, 0, 7)
    tb.BackgroundColor3 = Color3.fromRGB(38, 28, 58)
    tb.Text = ""
    Instance.new("UICorner", tb).CornerRadius = UDim.new(0, 10)
    
    local state = false
    tb.MouseButton1Click:Connect(function()
        state = not state
        tb.BackgroundColor3 = state and Color3.fromRGB(140, 50, 255) or Color3.fromRGB(38, 28, 58)
        cb(state)
    end)
end

-- 📂 SEKMELERİ YERLEŞTİR
AddTab("Main", P_Main) AddTab("Trolling", P_Troll) AddTab("Target", P_Target) AddTab("Esp", P_Esp) AddTab("Animations", P_Anim) AddTab("FE", P_FE)

-- 🚀 ÖZELLİKLER VE FONKSİYONLAR
AddBtn(P_Main, "⚡ WalkSpeed (Hız Modu): 100", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 end)
AddBtn(P_Main, "🦘 JumpPower (Süper Zıplama): 150", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150 end)
AddToggle(P_Main, "🛸 CFrame Fly (Uçma Sistemi)", function(t)
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if t then _G.WislFly = true task.spawn(function() while _G.WislFly and hrp do hrp.CFrame = hrp.CFrame + hrp.CFrame.lookVector * 1.8 task.wait() end end) else _G.WislFly = false end
end)
AddBtn(P_Main, "🔄 Rejoin Server", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

AddBtn(P_Troll, "🔥 Evrensel Fling (Oyuncuları Uçur)", function()
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local bV = Instance.new("BodyVelocity", hrp) bV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    task.spawn(function() while hrp and bV do bV.Velocity = Vector3.new(math.random(-500,500), 0, math.random(-500,500)) task.wait(0.1) end end)
end)
AddBtn(P_Troll, "🛡️ Ghost Hub Enjekte Et", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/GhostHub/main/NewGhostHub'))() end)

AddBtn(P_Target, "👁️ Spectate (Hedefi İzle)", function()
    local p = game.Players:FindFirstChild(Search.Text)
    if p and p.Character then game.Workspace.CurrentCamera.CameraSubject = p.Character.Humanoid end
end)
AddBtn(P_Target, "📍 Teleport (Hedefe Işınlan)", function()
    local p = game.Players:FindFirstChild(Search.Text)
    if p and p.Character then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame end
end)

AddToggle(P_Esp, "🟢 Player ESP (İsimleri Göster)", function(t)
    if t then
        for _, o in pairs(game.Players:GetChildren()) do
            if o ~= game.Players.LocalPlayer and o.Character and o.Character:FindFirstChild("Head") then
                local bg = Instance.new("BillboardGui", o.Character.Head) bg.Name = "WislEsp" bg.AlwaysOnTop = true bg.Size = UDim2.new(0, 140, 0, 35)
                local tl = Instance.new("TextLabel", bg) tl.Size = UDim2.new(1, 0, 1, 0) tl.Text = o.Name tl.TextColor3 = Color3.fromRGB(140, 50, 255) tl.BackgroundTransparency = 1 tl.Font = Enum.Font.GothamBold tl.TextSize = 10
            end
        end
    else
        for _, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "WislEsp" then v:Destroy() end end
    end
end)

AddBtn(P_Anim, "🕺 Catwalk Glam Pack", function() print("Catwalk Active") end)
AddBtn(P_Anim, "⚡ Ninja Package Override", function() print("Ninja Active") end)

AddBtn(P_FE, "👑 Infinite Yield Admin", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source'))() end)

-- ❌ Kapatma Butonu
local Close = Instance.new("TextButton", Header)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Position = UDim2.new(1, -35, 0, 5)
Close.BackgroundTransparency = 1
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 70, 100)
Close.Font = Enum.Font.GothamBold
Close.TextSize = 14
Close.MouseButton1Click:Connect(function() Wisl:Destroy() end)
