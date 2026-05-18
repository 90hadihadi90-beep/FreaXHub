-- =============================================================================
-- 🧬 FREAX HUB UNIVERSAL - SÜRÜM V11 (PURPLE EDITION & SIFIR DONMA MOTORU)
-- =============================================================================
-- Yapımcı: Muhammed // Delta Mobil Tabanlı Tam 200 Satırlık Özel Stabil Kod

if game.CoreGui:FindFirstChild("FreaX_Purple_V11") then 
    game.CoreGui.FreaX_Purple_V11:Destroy() 
end

-- 🪐 ANA PANEL MOTORU (SİBER MOR TEMA)
local FreaX_Purple_V11 = Instance.new("ScreenGui", game.CoreGui)
FreaX_Purple_V11.Name = "FreaX_Purple_V11"

local MainFrame = Instance.new("Frame", FreaX_Purple_V11)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 8, 20) -- Koyu Siber Mor
MainFrame.Position = UDim2.new(0.2, 0, 0.15, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 380)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 10)

local NeonStroke = Instance.new("UIStroke", MainFrame)
NeonStroke.Color = Color3.fromRGB(168, 50, 253) -- Canlı Neon Mor Neon Işığı
NeonStroke.Thickness = 2.5

-- 🏷️ PANEL BAŞLIĞI
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(0, 350, 0, 45)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "🧪 FreaX HUB // V11 PURPLE CORE"
Title.TextColor3 = Color3.fromRGB(168, 50, 253)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextXAlignment = Enum.TextXAlignment.Left

-- 🧩 SOL BÖLME PANELİ (SEKMELER AYNI EKRANDA BAĞLANTILI)
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 140, 1, -65)
Sidebar.Position = UDim2.new(0, 12, 0, 52)
Sidebar.BackgroundColor3 = Color3.fromRGB(7, 4, 12)
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 8)

local SidebarLayout = Instance.new("UIListLayout", Sidebar)
SidebarLayout.Padding = UDim.new(0, 6)

-- 📦 ORTAK SAYFA KONTEYNERI
local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.Size = UDim2.new(1, -175, 1, -65)
PagesContainer.Position = UDim2.new(0, 163, 0, 52)
PagesContainer.BackgroundTransparency = 1

----------------------------------------------------------------------------
-- 📜 BÖLMELERE ÖZEL PANEL KURULUMU
----------------------------------------------------------------------------
local function SayfaOlustur(canvasSizeY)
    local Page = Instance.new("ScrollingFrame", PagesContainer)
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.BackgroundTransparency = 1
    Page.Visible = false
    Page.CanvasSize = UDim2.new(0, 0, 0, canvasSizeY)
    Page.ScrollBarThickness = 3
    Page.ScrollBarImageColor3 = Color3.fromRGB(168, 50, 253)
    Instance.new("UIListLayout", Page).Padding = UDim.new(0, 5)
    return Page
end

local MainPowers = SayfaOlustur(500) -- Bölme 1: Ana Güçler
local ScriptHub  = SayfaOlustur(550) -- Bölme 2: Script Hub
local TrollLab   = SayfaKur(400)    -- Bölme 3: Troll & Siber

MainPowers.Visible = true -- İlk bölme varsayılan açık

----------------------------------------------------------------------------
-- 🛠️ BUTON MOTORLARI
----------------------------------------------------------------------------
local function CreateCategoryButton(text, targetPage)
    local Btn = Instance.new("TextButton", Sidebar)
    Btn.Size = UDim2.new(1, 0, 0, 36)
    Btn.BackgroundColor3 = Color3.fromRGB(18, 12, 30)
    Btn.Font = Enum.Font.GothamBold
    Btn.Text = text
    Btn.TextColor3 = Color3.fromRGB(180, 170, 195)
    Btn.TextSize = 12
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    
    local bs = Instance.new("UIStroke", Sidebar)
    bs.Color = Color3.fromRGB(40, 25, 65)
    
    Btn.MouseButton1Click:Connect(function()
        MainPowers.Visible = false
        ScriptHub.Visible = false
        TrollLab.Visible = false
        targetPage.Visible = true
    end)
end

local function CreateActionButton(parent, text, callback)
    local Btn = Instance.new("TextButton", parent)
    Btn.Size = UDim2.new(1, -10, 0, 38)
    Btn.BackgroundColor3 = Color3.fromRGB(24, 16, 40)
    Btn.Font = Enum.Font.GothamSemibold
    Btn.Text = "  " .. text
    Btn.TextColor3 = Color3.fromRGB(245, 240, 255)
    Btn.TextSize = 13
    Btn.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    
    local BStroke = Instance.new("UIStroke", Btn)
    BStroke.Color = Color3.fromRGB(55, 35, 85)
    
    Btn.MouseEnter:Connect(function() BStroke.Color = Color3.fromRGB(168, 50, 253) Btn.TextColor3 = Color3.fromRGB(168, 50, 253) end)
    Btn.MouseLeave:Connect(function() BStroke.Color = Color3.fromRGB(55, 35, 85) Btn.TextColor3 = Color3.fromRGB(245, 240, 255) end)
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
CreateActionButton(MainPowers, "🔄 Sunucuya Yeniden Bağlan (Rejoin)", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

----------------------------------------------------------------------------
-- 📚 BÖLÜM 2: SCRIPT HUB (GHOSTHUB ENTEGRELİ)
----------------------------------------------------------------------------
CreateActionButton(ScriptHub, "👻 GHOST HUB (Premium Mobil Sürüm)", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/GhostHub/main/NewGhostHub'))() 
end)
CreateActionButton(ScriptHub, "👑 INFINITE YIELD ADMIN PANEL", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source'))() 
end)
CreateActionButton(ScriptHub, "🍊 Blox Fruits: Redz Hub (Oto Farm)", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml'))() 
end)
CreateActionButton(ScriptHub, "🧠 Steal a Brainrot: Auto Grab Tools", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua'))() 
end)
CreateActionButton(ScriptHub, "🎯 Blade Ball: FF Hub Deflect", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FFCommunity/FFHub/main/BladeBall.lua'))() 
end)
CreateActionButton(ScriptHub, "⚔️ BedWars: Vape V4 Exploit Hack", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua'))() 
end)

----------------------------------------------------------------------------
-- 👺 BÖLÜM 3: TROLL & SİBER ARAÇLAR
----------------------------------------------------------------------------
CreateActionButton(TrollLab, "🔥 EVRENSEL FLING (Oyuncuları Fırlat)", function()
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local bV = Instance.new("BodyVelocity", hrp) bV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    task.spawn(function()
        while hrp do bV.Velocity = Vector3.new(math.random(-600,600), 0, math.random(-600,600)) task.wait(0.1) end
    end)
end)
CreateActionButton(TrollLab, "👁️ ESP: Oyuncuları Duvar Arkasından Gör", function()
    for _, o in pairs(game.Players:GetChildren()) do
        if o ~= game.Players.LocalPlayer and o.Character and o.Character:FindFirstChild("Head") then
            local bg = Instance.new("BillboardGui", o.Character.Head) bg.AlwaysOnTop = true bg.Size = UDim2.new(0, 180, 0, 45)
            local tl = Instance.new("TextLabel", bg) tl.Size = UDim2.new(1, 0, 1, 0) tl.Text = o.Name tl.TextColor3 = Color3.fromRGB(168, 50, 253) tl.BackgroundTransparency = 1
        end
    end
end)
CreateActionButton(TrollLab, "🛠️ Dex Explorer V4 (Dosya Gezgini)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))() end)
CreateActionButton(TrollLab, "📡 SimpleSpy V2 (Remote Logger)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua'))() end)
CreateActionButton(TrollLab, "💡 FullBright: Karanlık Haritaları Aydınlat", function() game.Lighting.Brightness = 2 game.Lighting.ClockTime = 14 game.Lighting.GlobalShadows = false end)
CreateActionButton(TrollLab, "🔓 Mobil Shift Lock Mekanizmasını Aç", function() game.Players.LocalPlayer.DevEnableMouseLock = true end)

----------------------------------------------------------------------------
-- 🪐 BÖLME KATEGORİ SEÇİCİLERİ
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
CloseBtn.MouseButton1Click:Connect(function() FreaX_Purple_V11:Destroy() end)

print("[FreaX Hub V11 Purple Core Loaded successfully!]")
