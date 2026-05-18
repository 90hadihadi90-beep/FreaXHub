
-- =============================================================================
-- 🧬 FREAX HUB UNIVERSAL - SÜRÜM V12 (PURPLE FIXED ENGINE)
-- =============================================================================
-- Yapımcı: Muhammed // Ekran Boş Kalma Hatası Tamamen Giderilmiş Sürüm

if game.CoreGui:FindFirstChild("FreaX_Purple_V12") then 
    game.CoreGui.FreaX_Purple_V12:Destroy() 
end

-- 🪐 ANA PANEL KATMANI (Delta için Görünürlük Garantili)
local FreaX_Purple_V12 = Instance.new("ScreenGui")
FreaX_Purple_V12.Name = "FreaX_Purple_V12"
FreaX_Purple_V12.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
FreaX_Purple_V12.Parent = game.CoreGui

-- 🟪 SİBER MOR ANA PANEL
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 10, 25) -- Koyu Mor-Siyah
MainFrame.Position = UDim2.new(0.25, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 580, 0, 360)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = FreaX_Purple_V12

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

local NeonStroke = Instance.new("UIStroke")
NeonStroke.Color = Color3.fromRGB(180, 50, 255) -- Parlak Neon Mor
NeonStroke.Thickness = 2.5
NeonStroke.Parent = MainFrame

-- 🏷️ PANEL BAŞLIĞI
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(0, 400, 0, 45)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "🧪 FreaX HUB // V12 PURPLE ENGINE"
Title.TextColor3 = Color3.fromRGB(180, 50, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

-- 🧩 SOL BÖLME PANELİ (SEKMELER)
local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 135, 1, -65)
Sidebar.Position = UDim2.new(0, 12, 0, 52)
Sidebar.BackgroundColor3 = Color3.fromRGB(8, 5, 15)
Sidebar.Parent = MainFrame

Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 8)
local SidebarLayout = Instance.new("UIListLayout", Sidebar)
SidebarLayout.Padding = UDim.new(0, 6)

-- 📦 ORTAK SAYFA KONTEYNERI (TAM ORTADA VE BÖLMELİ)
local PagesContainer = Instance.new("Frame")
PagesContainer.Name = "PagesContainer"
PagesContainer.Size = UDim2.new(1, -170, 1, -65)
PagesContainer.Position = UDim2.new(0, 158, 0, 52)
PagesContainer.BackgroundTransparency = 1
PagesContainer.Parent = MainFrame

--------------------------------============================================
-- 📜 BÖLME SEKMELERİNİN OLUŞTURULMASI
----------------------------------------------------------------------------
local function SayfaOlustur(height)
    local Page = Instance.new("ScrollingFrame")
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.BackgroundTransparency = 1
    Page.Visible = false
    Page.CanvasSize = UDim2.new(0, 0, 0, height)
    Page.ScrollBarThickness = 3
    Page.ScrollBarImageColor3 = Color3.fromRGB(180, 50, 255)
    Page.Parent = PagesContainer
    Instance.new("UIListLayout", Page).Padding = UDim.new(0, 5)
    return Page
end

local MainPowers = SayfaOlustur(450) -- Bölme 1
local ScriptHub  = SayfaOlustur(500) -- Bölme 2
local TrollLab   = SayfaOlustur(400) -- Bölme 3

MainPowers.Visible = true -- İlk bölme ekran açıldığında otomatik gelsin

----------------------------------------------------------------------------
-- 🛠️ HAFİF VE AKICI BUTON MOTORLARI
----------------------------------------------------------------------------
local function CreateCategoryButton(text, targetPage)
    local Btn = Instance.new("TextButton", Sidebar)
    Btn.Size = UDim2.new(1, 0, 0, 36)
    Btn.BackgroundColor3 = Color3.fromRGB(22, 14, 35)
    Btn.Font = Enum.Font.GothamBold
    Btn.Text = text
    Btn.TextColor3 = Color3.fromRGB(200, 190, 220)
    Btn.TextSize = 12
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    Instance.new("UIStroke", Btn).Color = Color3.fromRGB(45, 30, 70)
    
    Btn.MouseButton1Click:Connect(function()
        MainPowers.Visible = false
        ScriptHub.Visible = false
        TrollLab.Visible = false
        targetPage.Visible = true
    end)
end

local function CreateActionButton(parent, text, callback)
    local Btn = Instance.new("TextButton", parent)
    Btn.Size = UDim2.new(1, -8, 0, 38)
    Btn.BackgroundColor3 = Color3.fromRGB(28, 18, 45)
    Btn.Font = Enum.Font.GothamSemibold
    Btn.Text = "  " .. text
    Btn.TextColor3 = Color3.fromRGB(245, 240, 255)
    Btn.TextSize = 13
    Btn.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    
    local BStroke = Instance.new("UIStroke", Btn)
    BStroke.Color = Color3.fromRGB(60, 40, 95)
    
    Btn.MouseEnter:Connect(function() BStroke.Color = Color3.fromRGB(180, 50, 255) Btn.TextColor3 = Color3.fromRGB(180, 50, 255) end)
    Btn.MouseLeave:Connect(function() BStroke.Color = Color3.fromRGB(60, 40, 95) Btn.TextColor3 = Color3.fromRGB(245, 240, 255) end)
    Btn.MouseButton1Click:Connect(callback)
end

----------------------------------------------------------------------------
-- 🏃 BÖLÜM 1: ANA GÜÇLER
----------------------------------------------------------------------------
CreateActionButton(MainPowers, "⚡ WalkSpeed: Hız Modu (100)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 end)
CreateActionButton(MainPowers, "🚶 WalkSpeed: Normale Dön (16)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)
CreateActionButton(MainPowers, "🦘 JumpPower: Süper Zıplama (150)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150 end)
CreateActionButton(MainPowers, "🛑 JumpPower: Normale Dön (50)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)
CreateActionButton(MainPowers, "🌙 Yerçekimini Düşür (Ay Gravity)", function() game.Workspace.Gravity = 40 end)
CreateActionButton(MainPowers, "🌍 Yerçekimini Normale Döndür", function() game.Workspace.Gravity = 196.2 end)
CreateActionButton(MainPowers, "🔮 Teleport: 15 Adım İleri Işınlan", function() local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") if hrp then hrp.CFrame = hrp.CFrame * CFrame.new(0, 0, -15) end end)
CreateActionButton(MainPowers, "🔄 Sunucuye Yeniden Bağlan (Rejoin)", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

----------------------------------------------------------------------------
-- 📚 BÖLÜM 2: SCRIPT HUB (GHOSTHUB VE DIĞERLERI)
----------------------------------------------------------------------------
CreateActionButton(ScriptHub, "👻 GHOST HUB (Premium Mobil Sürüm)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/GhostHub/main/NewGhostHub'))() end)
CreateActionButton(ScriptHub, "👑 INFINITE YIELD ADMIN PANEL", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source'))() end)
CreateActionButton(ScriptHub, "🍊 Blox Fruits: Redz Hub (Oto Farm)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml'))() end)
CreateActionButton(ScriptHub, "🧠 Steal a Brainrot: Auto Grab Tools", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua'))() end)
CreateActionButton(ScriptHub, "🎯 Blade Ball: FF Hub Deflect", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/FFCommunity/FFHub/main/BladeBall.lua'))() end)
CreateActionButton(ScriptHub, "⚔️ BedWars: Vape V4 Exploit Hack", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua'))() end)

----------------------------------------------------------------------------
-- 👺 BÖLÜM 3: TROLL & SİBER ARAÇLAR
----------------------------------------------------------------------------
CreateActionButton(TrollLab, "🔥 EVRENSEL FLING (Oyuncuları Fırlat)", function()
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local bV = Instance.new("BodyVelocity", hrp) bV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    task.spawn(function() while hrp and bV do bV.Velocity = Vector3.new(math.random(-600,600), 0, math.random(-600,600)) task.wait(0.1) end end)
end)
CreateActionButton(TrollLab, "👁️ ESP: Oyuncuları Duvar Arkasından Gör", function()
    for _, o in pairs(game.Players:GetChildren()) do
        if o ~= game.Players.LocalPlayer and o.Character and o.Character:FindFirstChild("Head") then
            local bg = Instance.new("BillboardGui", o.Character.Head) bg.AlwaysOnTop = true bg.Size = UDim2.new(0, 180, 0, 45)
            local tl = Instance.new("TextLabel", bg) tl.Size = UDim2.new(1, 0, 1, 0) tl.Text = o.Name tl.TextColor3 = Color3.fromRGB(180, 50, 255) tl.BackgroundTransparency = 1
        end
    end
end)
CreateActionButton(TrollLab, "🛠️ Dex Explorer V4 (Dosya Gezgini)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))() end)
CreateActionButton(TrollLab, "📡 SimpleSpy V2 (Remote Logger)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua'))() end)
CreateActionButton(TrollLab, "💡 FullBright: Karanlık Haritaları Aydınlat", function() game.Lighting.Brightness = 2 game.Lighting.ClockTime = 14 game.Lighting.GlobalShadows = false end)
CreateActionButton(TrollLab, "🔓 Mobil Shift Lock Mekanizmasını Aç", function() game.Players.LocalPlayer.DevEnableMouseLock = true end)

----------------------------------------------------------------------------
-- 🪐 SOL BARA BUTONLARI YERLEŞTİRME
----------------------------------------------------------------------------
CreateCategoryButton("🏃 Ana Güçler", MainPowers)
CreateCategoryButton("📚 Script Hub", ScriptHub)
CreateCategoryButton("👺 Troll & Siber", TrollLab)

-- ❌ KAPATMA BUTONU
local CloseBtn = Instance.new("TextButton", MainFrame)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 60, 100)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 16
CloseBtn.MouseButton1Click:Connect(function() FreaX_Purple_V12:Destroy() end)

print("[FreaX Hub V12 Fixed Purple Engine Loaded]")
