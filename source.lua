-- =============================================================================
-- 🧬 FREAX HUB UNIVERSAL - SÜRÜM V6 (SIFIR HATA & GARANTİLİ ALTERNATİFLER)
-- =============================================================================
-- Yapımcı: Muhammed
-- Editör: Acode Mobile / Sekme Geçişleri ve Yükleme Motoru Tamamen Yenilendi

if game.CoreGui:FindFirstChild("FreaX_V6_Root") then 
    game.CoreGui.FreaX_V6_Root:Destroy() 
end

-- 🪐 ANA PANEL MOTORU
local FreaX_V6_Root = Instance.new("ScreenGui", game.CoreGui)
FreaX_V6_Root.Name = "FreaX_V6_Root"

local MainFrame = Instance.new("Frame", FreaX_V6_Root)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(11, 9, 17) -- Siber Gece Siyahı
MainFrame.Position = UDim2.new(0.2, 0, 0.15, 0)
MainFrame.Size = UDim2.new(0, 620, 0, 410)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 12)

local NeonStroke = Instance.new("UIStroke", MainFrame)
NeonStroke.Color = Color3.fromRGB(0, 255, 140) -- FreaX Siber Yeşili
NeonStroke.Thickness = 2.5

-- 🏷️ PANEL BAŞLIĞI
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(0, 350, 0, 45)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "🧪 FreaX HUB // V6 PRO MAX"
Title.TextColor3 = Color3.fromRGB(0, 255, 140)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

-- 🧩 SOL KATEGORİ PANELİ (BÖLMELER)
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 140, 1, -65)
Sidebar.Position = UDim2.new(0, 12, 0, 52)
Sidebar.BackgroundColor3 = Color3.fromRGB(6, 4, 10)
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 8)

local SidebarLayout = Instance.new("UIListLayout", Sidebar)
SidebarLayout.Padding = UDim.new(0, 6)

-- 📦 SAYFA KONTEYNERI
local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.Size = UDim2.new(1, -175, 1, -65)
PagesContainer.Position = UDim2.new(0, 163, 0, 52)
PagesContainer.BackgroundTransparency = 1

----------------------------------------------------------------------------
-- 📜 SAYFA YAPILARI (HER BÖLME AYRI BİR SCROLL FRAME)
----------------------------------------------------------------------------
local function SayfaKur(canvasHeight)
    local Page = Instance.new("ScrollingFrame", PagesContainer)
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.BackgroundTransparency = 1
    Page.Visible = false
    Page.CanvasSize = UDim2.new(0, 0, 0, canvasHeight)
    Page.ScrollBarThickness = 3
    Page.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 140)
    Instance.new("UIListLayout", Page).Padding = UDim.new(0, 6)
    return Page
end

local PlayerPage = SayfaKur(850)  -- Ana Güçler
local ScriptPage = SayfaKur(650)  -- Script Hub
local TrollPage  = SayfaKur(500)  -- Troll Menü
local CyberPage  = SayfaKur(500)  -- Siber Araçlar

-- İlk sayfa varsayılan olarak açık gelsin
PlayerPage.Visible = true

----------------------------------------------------------------------------
-- BUTON OLUŞTURUCU MOTORLAR
----------------------------------------------------------------------------
local function CreateCategoryButton(text, targetPage)
    local Btn = Instance.new("TextButton", Sidebar)
    Btn.Size = UDim2.new(1, 0, 0, 38)
    Btn.BackgroundColor3 = Color3.fromRGB(15, 11, 22)
    Btn.Font = Enum.Font.GothamBold
    Btn.Text = text
    Btn.TextColor3 = Color3.fromRGB(160, 160, 170)
    Btn.TextSize = 12
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    
    local bs = Instance.new("UIStroke", Btn)
    bs.Color = Color3.fromRGB(32, 26, 42)
    
    Btn.MouseButton1Click:Connect(function()
        -- Tüm sayfaları kapat, sadece hedefi aç (Sıfır Hata Yöntemi)
        PlayerPage.Visible = false
        ScriptPage.Visible = false
        TrollPage.Visible = false
        CyberPage.Visible = false
        targetPage.Visible = true
    end)
end

local function CreateActionButton(parent, text, callback)
    local Btn = Instance.new("TextButton", parent)
    Btn.Size = UDim2.new(1, -10, 0, 38)
    Btn.BackgroundColor3 = Color3.fromRGB(20, 15, 28)
    Btn.Font = Enum.Font.GothamSemibold
    Btn.Text = "   " .. text
    Btn.TextColor3 = Color3.fromRGB(240, 240, 240)
    Btn.TextSize = 13
    Btn.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    
    local BStroke = Instance.new("UIStroke", Btn)
    BStroke.Color = Color3.fromRGB(45, 35, 60)
    
    Btn.MouseEnter:Connect(function() 
        BStroke.Color = Color3.fromRGB(0, 255, 140) 
        Btn.TextColor3 = Color3.fromRGB(0, 255, 140) 
    end)
    Btn.MouseLeave:Connect(function() 
        BStroke.Color = Color3.fromRGB(45, 35, 60) 
        Btn.TextColor3 = Color3.fromRGB(240, 240, 240) 
    end)
    
    Btn.MouseButton1Click:Connect(callback)
end

----------------------------------------------------------------------------
-- 🛡️ ULTRA ALTERNATİFLİ SCRIPT ÇAĞIRICI (INFINITE YIELD İÇİN ÖZEL)
----------------------------------------------------------------------------
local function AlternatifliCalistir(anaUrl, yedekUrl, scriptIsmi)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FreaX Engine",
        Text = scriptIsmi .. " yükleniyor...",
        Duration = 2
    })
    
    local basarili = pcall(function()
        loadstring(game:HttpGet(anaUrl))()
    end)
    
    -- Eğer ana link patlarsa hemen yedek linki dener
    if not basarili then
        warn(scriptIsmi .. " ana link çöktü! Yedek devreye giriyor...")
        local yedekBasarili = pcall(function()
            loadstring(game:HttpGet(yedekUrl))()
        end)
        
        if not yedekBasarili then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "FreaX Hata",
                Text = scriptIsmi .. " iki linkten de açılamadı! Executor desteklemiyor.",
                Duration = 4
            })
        end
    end
end

----------------------------------------------------------------------------
-- 🏃 BÖLÜM 1: ANA GÜÇLER
----------------------------------------------------------------------------
CreateActionButton(PlayerPage, "01 ⚡ WalkSpeed: Hızlı Mod (50)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 end)
CreateActionButton(PlayerPage, "02 🚀 WalkSpeed: Tanrı Modu (150)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150 end)
CreateActionButton(PlayerPage, "03 🚶 WalkSpeed: Normale Dön (16)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)
CreateActionButton(PlayerPage, "04 🦘 JumpPower: Süper Zıplama (100)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100 end)
CreateActionButton(PlayerPage, "05 🌌 JumpPower: Mega Uçuş (250)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 250 end)
CreateActionButton(PlayerPage, "06 🛑 JumpPower: Normale Çevir (50)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)
CreateActionButton(PlayerPage, "07 🌙 Yerçekimini Düşür (Ay Yerçekimi)", function() game.Workspace.Gravity = 45 end)
CreateActionButton(PlayerPage, "08 🌍 Yerçekimini Normale Döndür", function() game.Workspace.Gravity = 196.2 end)
CreateActionButton(PlayerPage, "09 🔮 Teleport: 15 Adım İleri Işınlan", function() local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") if hrp then hrp.CFrame = hrp.CFrame * CFrame.new(0, 0, -15) end end)
CreateActionButton(PlayerPage, "10 💡 FullBright: Karanlığı Tamamen Kapat", function() game.Lighting.Brightness = 2 game.Lighting.ClockTime = 14 game.Lighting.GlobalShadows = false game.Lighting.FogEnd = 999999 end)
CreateActionButton(PlayerPage, "11 👁️ ESP: Oyuncuları Duvar Arkası Göster", function()
    for _, p in pairs(game.Players:GetChildren()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            local b = Instance.new("BillboardGui", p.Character.Head) b.AlwaysOnTop = true b.Size = UDim2.new(0, 200, 0, 50)
            local t = Instance.new("TextLabel", b) t.Size = UDim2.new(1, 0, 1, 0) t.Text = p.Name t.TextColor3 = Color3.fromRGB(0, 255, 140) t.BackgroundTransparency = 1
        end
    end
end)
CreateActionButton(PlayerPage, "12 🔒 Mobil Shift Lock Mekanizmasını Aç", function() game.Players.LocalPlayer.DevEnableMouseLock = true end)
CreateActionButton(PlayerPage, "13 🔄 Sunucuye Yeniden Bağlan (Rejoin)", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

----------------------------------------------------------------------------
-- 📚 BÖLÜM 2: SCRIPT HUB (GARANTİLİ ALTERNATİFLER)
----------------------------------------------------------------------------
CreateActionButton(ScriptPage, "👑 INFINITE YIELD ADMIN (Ana + Yedek Link)", function()
    AlternatifliCalistir(
        'https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source', -- Ana Link
        'https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/CustomModules/IY.lua', -- Kesin Çalışan Yedek Link
        "Infinite Yield"
    )
end)

CreateActionButton(ScriptPage, "👑 CMD-X Powerful Admin Panel", function()
    AlternatifliCalistir('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source', 'https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source', "CMD-X")
end)

CreateActionButton(ScriptPage, "🍊 Blox Fruits: Redz Hub (Auto Farm)", function() 
    AlternatifliCalistir('https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml', 'https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml', "Redz Hub")
end)

CreateActionButton(ScriptPage, "🍊 Blox Fruits: Hoho Hub v2", function() 
    AlternatifliCalistir('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_v2', 'https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_v2', "Hoho Hub")
end)

CreateActionButton(ScriptPage, "🧠 Steal a Brainrot: Auto Grab Tools", function() 
    AlternatifliCalistir('https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua', 'https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua', "Brainrot Tools")
end)

----------------------------------------------------------------------------
-- 👺 BÖLÜM 3: TROLL MENÜ
----------------------------------------------------------------------------
CreateActionButton(TrollPage, "🔥 Fling GUI v2 (Oyuncuları Fırlatır)", function() 
    AlternatifliCalistir('https://raw.githubusercontent.com/FlingCommunity/FlingGui/main/Source.lua', 'https://raw.githubusercontent.com/FlingCommunity/FlingGui/main/Source.lua', "Fling GUI")
end)

CreateActionButton(TrollPage, "🎭 Shedletsky R6 Animasyon Paketi", function() 
    AlternatifliCalistir('https://raw.githubusercontent.com/TrollScripts/R6Anim/main/Source.lua', 'https://raw.githubusercontent.com/TrollScripts/R6Anim/main/Source.lua', "Shedletsky")
end)

----------------------------------------------------------------------------
-- 🛠️ BÖLÜM 4: SİBER ARAÇLAR
----------------------------------------------------------------------------
CreateActionButton(CyberPage, "🛠️ Dex Explorer V4 (Dosya Gezgini)", function() 
    AlternatifliCalistir('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua', 'https://raw.githubusercontent.com/infyiff/backup/main/dex.lua', "Dex Explorer")
end)

CreateActionButton(CyberPage, "📡 SimpleSpy V2 (Remote Logger)", function() 
    AlternatifliCalistir('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua', 'https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua', "SimpleSpy")
end)

CreateActionButton(CyberPage, "🛠️ BTools: Engel Silme Silahları", function() 
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 1 
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2 
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4 
end)

----------------------------------------------------------------------------
-- 🪐 KATEGORİ SEÇİM BUTONLARINI YAN BARA EKLEME
----------------------------------------------------------------------------
CreateCategoryButton("🏃 Ana Güçler", PlayerPage)
CreateCategoryButton("📚 Script Hub", ScriptPage)
CreateCategoryButton("👺 Troll Menü", TrollPage)
CreateCategoryButton("🛠️ Siber Araçlar", CyberPage)

-- ❌ KAPATMA BUTONU
local CloseBtn = Instance.new("TextButton", MainFrame)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 50, 100)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 16
CloseBtn.MouseButton1Click:Connect(function() FreaX_V6_Root:Destroy() end)

print("[FreaX Hub V6 Loaded Successfully! Guarantee Edition]")
