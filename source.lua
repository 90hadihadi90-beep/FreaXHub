-- =============================================================================
-- 🧬 FREAX HUB UNIVERSAL - SÜRÜM V5 (ÇOK BÖLMELİ VE KORUMALI)
-- =============================================================================
-- Yapımcı: Muhammed
-- Editör: Acode Mobile / Çoklu Sekme ve Gelişmiş Koruma Sistemi

if game.CoreGui:FindFirstChild("FreaX_V5_Root") then 
    game.CoreGui.FreaX_V5_Root:Destroy() 
end

-- 🪐 ANA EKRAN MOTORU
local FreaX_V5_Root = Instance.new("ScreenGui", game.CoreGui)
FreaX_V5_Root.Name = "FreaX_V5_Root"

local MainFrame = Instance.new("Frame", FreaX_V5_Root)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(11, 9, 17) -- Ultra Siber Gece Siyahı
MainFrame.Position = UDim2.new(0.23, 0, 0.18, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 400)
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
Title.Text = "🧪 FreaX HUB // ULTIMATE V5"
Title.TextColor3 = Color3.fromRGB(0, 255, 140)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

-- 🧩 SOL GENİŞ KATEGORİ PANELİ (BÖLMELER)
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 140, 1, -65)
Sidebar.Position = UDim2.new(0, 12, 0, 52)
Sidebar.BackgroundColor3 = Color3.fromRGB(6, 4, 10)
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 8)

local SidebarLayout = Instance.new("UIListLayout", Sidebar)
SidebarLayout.Padding = UDim.new(0, 6)

-- 📦 SAYFA KAPLARI
local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.Size = UDim2.new(1, -175, 1, -65)
PagesContainer.Position = UDim2.new(0, 163, 0, 52)
PagesContainer.BackgroundTransparency = 1

-- 📜 TÜM BÖLMELERİN LİSTESİ
local KategoriSayfalari = {}

local function YeniSayfaOlustur(isim, varsayilanGörünürlük)
    local Page = Instance.new("ScrollingFrame", PagesContainer)
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.BackgroundTransparency = 1
    Page.Visible = varsayilanGörünürlük
    Page.CanvasSize = UDim2.new(0, 0, 0, 850)
    Page.ScrollBarThickness = 3
    Page.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 140)
    Instance.new("UIListLayout", Page).Padding = UDim.new(0, 6)
    KategoriSayfalari[isim] = Page
    return Page
end

-- Sayfaları Tanımlıyoruz (Bölmeler)
local PlayerPage = YeniSayfaOlustur("Ana Güçler", true)
local ScriptPage = YeniSayfaOlustur("Script Hub", false)
local TrollPage  = YeniSayfaOlustur("Troll Menü", false)
local CyberPage  = YeniSayfaOlustur("Siber Araçlar", false)

----------------------------------------------------------------------------
-- BUTON OLUŞTURUCU MOTORLAR
----------------------------------------------------------------------------
local function CreateCategoryButton(text)
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
        for k, sayfa in pairs(KategoriSayfalari) do
            sayfa.Visible = (k == text)
        end
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
-- 💻 GÜVENLİ SCRİPT ÇAĞIRICI FONKSİYON (ÇÖKMEYİ ENGELLER)
----------------------------------------------------------------------------
local function GuvenliCalistir(url, scriptIsmi)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FreaX Sinyal",
        Text = scriptIsmi .. " yükleniyor, lütfen bekleyin...",
        Duration = 3
    })
    
    local basarili, hata = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    
    if not basarili then
        -- Birinci kaynak hata verirse yedekleyici devreye girer
        warn("Hata oluştu: " .. tostring(hata))
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FreaX Hata Koruyucu",
            Text = scriptIsmi .. " başlatılamadı! Executor linki engelliyor olabilir.",
            Duration = 5
        })
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
CreateActionButton(PlayerPage, "07 🌙 Yerçekimini Düşür (Düşük Gravity)", function() game.Workspace.Gravity = 45 end)
CreateActionButton(PlayerPage, "08 🌍 Yerçekimini Normale Döndür", function() game.Workspace.Gravity = 196.2 end)
CreateActionButton(PlayerPage, "09 🔮 Teleport: 15 Adım İleri Işınlan", function() local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") if hrp then hrp.CFrame = hrp.CFrame * CFrame.new(0, 0, -15) end end)
CreateActionButton(PlayerPage, "10 💡 FullBright: Karanlığı Tamamen Kapat", function() game.Lighting.Brightness = 2 game.Lighting.ClockTime = 14 game.Lighting.GlobalShadows = false game.Lighting.FogEnd = 999999 end)
CreateActionButton(PlayerPage, "11 👁️ ESP: Oyuncu İsimlerini Duvar Arkası Göster", function()
    for _, p in pairs(game.Players:GetChildren()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            local b = Instance.new("BillboardGui", p.Character.Head) b.AlwaysOnTop = true b.Size = UDim2.new(0, 200, 0, 50)
            local t = Instance.new("TextLabel", b) t.Size = UDim2.new(1, 0, 1, 0) t.Text = p.Name t.TextColor3 = Color3.fromRGB(0, 255, 140) t.BackgroundTransparency = 1
        end
    end
end)
CreateActionButton(PlayerPage, "12 🔒 Mobil Shift Lock Mekanizmasını Aç", function() game.Players.LocalPlayer.DevEnableMouseLock = true end)
CreateActionButton(PlayerPage, "13 🔄 Sunucuya Yeniden Bağlan (Rejoin)", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

----------------------------------------------------------------------------
-- 📚 BÖLÜM 2: SCRIPT HUB (KORUMALI LİNKLER)
----------------------------------------------------------------------------
CreateActionButton(ScriptPage, "👑 INFINITE YIELD ADMIN (Gelişmiş Koruma)", function()
    GuvenliCalistir('https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source', "Infinite Yield")
end)

CreateActionButton(ScriptPage, "👑 CMD-X Powerful Admin Panel", function()
    GuvenliCalistir('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source', "CMD-X Admin")
end)

CreateActionButton(ScriptPage, "🍊 Blox Fruits: Redz Hub (Auto Farm)", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml', "Redz Hub")
end)

CreateActionButton(ScriptPage, "🍊 Blox Fruits: Hoho Hub v2", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_v2', "Hoho Hub")
end)

CreateActionButton(ScriptPage, "🧠 Steal a Brainrot: Auto Grab Tools", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua', "Brainrot Tools")
end)

CreateActionButton(ScriptPage, "🎯 Blade Ball: FF Hub Auto Deflect", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/FFCommunity/FFHub/main/BladeBall.lua', "FF Hub")
end)

----------------------------------------------------------------------------
-- 👺 BÖLÜM 3: TROLL MENÜ
----------------------------------------------------------------------------
CreateActionButton(TrollPage, "🔥 Fling GUI v2 (Oyuncuları Fırlatır)", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/FlingCommunity/FlingGui/main/Source.lua', "Fling GUI")
end)

CreateActionButton(TrollPage, "🎭 Shedletsky R6 Animasyon Paketi", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/TrollScripts/R6Anim/main/Source.lua', "Shedletsky Animasyon")
end)

----------------------------------------------------------------------------
-- 🛠️ BÖLÜM 4: SİBER ARAÇLAR
----------------------------------------------------------------------------
CreateActionButton(CyberPage, "🛠️ Dex Explorer V4 (Dosya Gezgini)", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua', "Dex Explorer")
end)

CreateActionButton(CyberPage, "📡 SimpleSpy V2 (Remote Logger)", function() 
    GuvenliCalistir('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua', "SimpleSpy")
end)

CreateActionButton(CyberPage, "🛠️ BTools: Engel Silme Silahları", function() 
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 1 
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2 
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4 
end)

----------------------------------------------------------------------------
-- BÖLME SEÇİCİ BUTONLARI AKTİF ETME
----------------------------------------------------------------------------
CreateCategoryButton("Ana Güçler")
CreateCategoryButton("Script Hub")
CreateCategoryButton("Troll Menü")
CreateCategoryButton("Siber Araçlar")

-- ❌ KAPATMA BUTONU
local CloseBtn = Instance.new("TextButton", MainFrame)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 50, 100)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 16
CloseBtn.MouseButton1Click:Connect(function() FreaX_V5_Root:Destroy() end)

print("[FreaX Hub V5 Loaded Successfully! Anti-Crash Edition]")
