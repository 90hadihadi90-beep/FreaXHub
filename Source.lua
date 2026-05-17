-- =============================================================================
-- 🧪 FREAX HUB UNIVERSAL - SÜRÜM V3 (SIFIR HATA, MAKSİMUM GÜÇ)
-- =============================================================================
-- Yapımcı ve Sahibi: Muhammed
-- Editör: Acode Mobile / %100 Kararlı Android Sürümü

if game.CoreGui:FindFirstChild("FreaX_V3_Root") then 
    game.CoreGui.FreaX_V3_Root:Destroy() 
end

-- 🌐 DEV SCRIPT VERİ TABANI (Arama Motoru İçin)
local ScriptVeritabani = {
    {Isim = "Infinite Yield Admin (En Güncel Sürüm)", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source](https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source)'))()", Kategori = "Genel"},
    {Isim = "CMD-X Powerful Admin Panel", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source](https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source)'))()", Kategori = "Genel"},
    {Isim = "Fly GUI V3 (Gelişmiş Mobil Uçuş)", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/XNEOFF/Fly-Gui-V3/main/Fly-Gui-V3.lua](https://raw.githubusercontent.com/XNEOFF/Fly-Gui-V3/main/Fly-Gui-V3.lua)'))()", Kategori = "Genel"},
    {Isim = "Blox Fruits: Hoho Hub v2 (Oto Kasılma)", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_v2](https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_v2)'))()", Kategori = "Oyunlar"},
    {Isim = "Blox Fruits: Redz Hub (Auto Farm)", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml](https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml)'))()", Kategori = "Oyunlar"},
    {Isim = "Blox Fruits: W-Azure Hub", Komut = "loadstring(game:HttpGet('[https://api.luoguard.org/v3/id/wazure](https://api.luoguard.org/v3/id/wazure)'))()", Kategori = "Oyunlar"},
    {Isim = "Steal a Brainrot: Auto Grab Tools", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua](https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua)'))()", Kategori = "Oyunlar"},
    {Isim = "BedWars: Vape V4 PvP Hack", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua](https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua)'))()", Kategori = "Oyunlar"},
    {Isim = "Brookhaven: Ice Hub Troll Exploit", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/IceTechMastery/IceHub/main/Brookhaven](https://raw.githubusercontent.com/IceTechMastery/IceHub/main/Brookhaven)'))()", Kategori = "Oyunlar"},
    {Isim = "Blade Ball: FF Hub Auto Deflect", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/FFCommunity/FFHub/main/BladeBall.lua](https://raw.githubusercontent.com/FFCommunity/FFHub/main/BladeBall.lua)'))()", Kategori = "Oyunlar"},
    {Isim = "Fling GUI v2 (Oyuncuları Fırlatır)", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/FlingCommunity/FlingGui/main/Source.lua](https://raw.githubusercontent.com/FlingCommunity/FlingGui/main/Source.lua)'))()", Kategori = "Troll"},
    {Isim = "Shedletsky R6 Animasyon Paketi", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/TrollScripts/R6Anim/main/Source.lua](https://raw.githubusercontent.com/TrollScripts/R6Anim/main/Source.lua)'))()", Kategori = "Troll"},
    {Isim = "Dex Explorer V4 (Dosya Gezgini)", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/infyiff/backup/main/dex.lua](https://raw.githubusercontent.com/infyiff/backup/main/dex.lua)'))()", Kategori = "Siber"},
    {Isim = "SimpleSpy V2 (Remote Logger)", Komut = "loadstring(game:HttpGet('[https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua](https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua)'))()", Kategori = "Siber"}
}

-- 🪐 ANA EKRAN MOTORU
local FreaX_V3_Root = Instance.new("ScreenGui", game.CoreGui)
FreaX_V3_Root.Name = "FreaX_V3_Root"

local MainFrame = Instance.new("Frame", FreaX_V3_Root)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 8, 15) -- Gece Siyahı / Koyu Mor
MainFrame.Position = UDim2.new(0.25, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 580, 0, 380)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 10)

local NeonStroke = Instance.new("UIStroke", MainFrame)
NeonStroke.Color = Color3.fromRGB(0, 255, 140) -- FreaX Siber Yeşili
NeonStroke.Thickness = 2.5

-- 🏷️ PANEL BAŞLIĞI
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(0, 300, 0, 40)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "🧪 FreaX HUB // ULTIMATE V3"
Title.TextColor3 = Color3.fromRGB(0, 255, 140)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

-- 🧩 SOL KATEGORİ PANELİ
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 130, 1, -60)
Sidebar.Position = UDim2.new(0, 12, 0, 48)
Sidebar.BackgroundColor3 = Color3.fromRGB(5, 4, 8)
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 6)

local SidebarLayout = Instance.new("UIListLayout", Sidebar)
SidebarLayout.Padding = UDim.new(0, 5)

-- 📦 SAYFA KAPLARI
local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.Size = UDim2.new(1, -165, 1, -60)
PagesContainer.Position = UDim2.new(0, 153, 0, 48)
PagesContainer.BackgroundTransparency = 1

-- 📜 SAYFALAR
local PlayerPage = Instance.new("ScrollingFrame", PagesContainer)
PlayerPage.Size = UDim2.new(1, 0, 1, 0)
PlayerPage.BackgroundTransparency = 1
PlayerPage.Visible = true
PlayerPage.CanvasSize = UDim2.new(0, 0, 0, 800)
PlayerPage.ScrollBarThickness = 3
PlayerPage.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 140)
Instance.new("UIListLayout", PlayerPage).Padding = UDim.new(0, 6)

local ScriptPage = Instance.new("Frame", PagesContainer)
ScriptPage.Size = UDim2.new(1, 0, 1, 0)
ScriptPage.BackgroundTransparency = 1
ScriptPage.Visible = false

local AboutPage = Instance.new("Frame", PagesContainer)
AboutPage.Size = UDim2.new(1, 0, 1, 0)
AboutPage.BackgroundTransparency = 1
AboutPage.Visible = false

-- 🔍 SCRIPT HUB İÇİN GELİŞMİŞ ARAMA ÇUBUĞU
local SearchBox = Instance.new("TextBox", ScriptPage)
SearchBox.Size = UDim2.new(1, -10, 0, 36)
SearchBox.BackgroundColor3 = Color3.fromRGB(16, 12, 22)
SearchBox.PlaceholderText = "🔍 Script ismi yazın..."
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.Font = Enum.Font.GothamSemibold
SearchBox.TextSize = 13
Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", SearchBox).Color = Color3.fromRGB(45, 35, 60)

local ScriptScroll = Instance.new("ScrollingFrame", ScriptPage)
ScriptScroll.Size = UDim2.new(1, 0, 1, -46)
ScriptScroll.Position = UDim2.new(0, 0, 0, 46)
ScriptScroll.BackgroundTransparency = 1
ScriptScroll.CanvasSize = UDim2.new(0, 0, 0, 600)
ScriptScroll.ScrollBarThickness = 3
ScriptScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 140)
Instance.new("UIListLayout", ScriptScroll).Padding = UDim.new(0, 6)

----------------------------------------------------------------------------
-- OTOMATİK BUTON YAPICI FONKSİYONLAR
----------------------------------------------------------------------------
local function CreateCategoryButton(text, callback)
    local Btn = Instance.new("TextButton", Sidebar)
    Btn.Size = UDim2.new(1, 0, 0, 36)
    Btn.BackgroundColor3 = Color3.fromRGB(14, 10, 20)
    Btn.Font = Enum.Font.GothamBold
    Btn.Text = text
    Btn.TextColor3 = Color3.fromRGB(170, 170, 180)
    Btn.TextSize = 12
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 5)
    local bs = Instance.new("UIStroke", Btn)
    bs.Color = Color3.fromRGB(30, 25, 40)
    Btn.MouseButton1Click:Connect(callback)
end

local function CreateActionButton(parent, text, callback)
    local Btn = Instance.new("TextButton", parent)
    Btn.Size = UDim2.new(1, -10, 0, 38)
    Btn.BackgroundColor3 = Color3.fromRGB(18, 14, 26)
    Btn.Font = Enum.Font.GothamSemibold
    Btn.Text = "   " .. text
    Btn.TextColor3 = Color3.fromRGB(240, 240, 240)
    Btn.TextSize = 13
    Btn.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    
    local BStroke = Instance.new("UIStroke", Btn)
    BStroke.Color = Color3.fromRGB(40, 32, 55)
    
    Btn.MouseEnter:Connect(function() 
        BStroke.Color = Color3.fromRGB(0, 255, 140) 
        Btn.TextColor3 = Color3.fromRGB(0, 255, 140) 
    end)
    Btn.MouseLeave:Connect(function() 
        BStroke.Color = Color3.fromRGB(40, 32, 55) 
        Btn.TextColor3 = Color3.fromRGB(240, 240, 240) 
    end)
    
    Btn.MouseButton1Click:Connect(callback)
end

----------------------------------------------------------------------------
-- 🏃 ANA GÜÇLER MENÜSÜ (20 HARİKA SEÇENEK)
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
CreateActionButton(PlayerPage, "10 ☝️ Teleport: Gökyüzüne Doğru Yüksel", function() local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") if hrp then hrp.CFrame = hrp.CFrame * CFrame.new(0, 70, 0) end end)
CreateActionButton(PlayerPage, "11 💡 FullBright: Karanlığı Tamamen Kapat", function() game.Lighting.Brightness = 2 game.Lighting.ClockTime = 14 game.Lighting.GlobalShadows = false game.Lighting.FogEnd = 999999 end)
CreateActionButton(PlayerPage, "12 🌃 Haritayı Gece Yarısı Yap (00:00)", function() game.Lighting.ClockTime = 0 end)
CreateActionButton(PlayerPage, "13 💀 Karakteri Resetle (Yeniden Doğdur)", function() game.Players.LocalPlayer.Character:BreakJoints() end)
CreateActionButton(PlayerPage, "14 🛠️ BTools: Engel Silme ve Düzenleme Silahı", function() Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 1 Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2 Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4 end)
CreateActionButton(PlayerPage, "15 👁️ ESP: Oyuncuları Duvar Arkası Göster", function()
    for _, p in pairs(game.Players:GetChildren()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            local b = Instance.new("BillboardGui", p.Character.Head) b.AlwaysOnTop = true b.Size = UDim2.new(0, 200, 0, 50)
            local t = Instance.new("TextLabel", b) t.Size = UDim2.new(1, 0, 1, 0) t.Text = p.Name t.TextColor3 = Color3.fromRGB(0, 255, 140) t.BackgroundTransparency = 1
        end
    end
end)
CreateActionButton(PlayerPage, "16 🔒 Mobil Shift Lock Mekanizmasını Aç", function() game.Players.LocalPlayer.DevEnableMouseLock = true end)
CreateActionButton(PlayerPage, "17 🪑 Koltuk Etkileşimlerini Devre Dışı Bırak", function() game.Players.LocalPlayer.Character.Humanoid.Sit = false game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false) end)
CreateActionButton(PlayerPage, "18 🧼 Sohbet Alanını Komple Temizle", function() game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {Text = "[ FreaX HUB SYSTEM ]", Color = Color3.fromRGB(0, 255, 140)}) end)
CreateActionButton(PlayerPage, "19 📋 Sunucu ID Kodunu Panoya Kopyala", function() setclipboard(tostring(game.JobId)) end)
CreateActionButton(PlayerPage, "20 🔄 Sunucuya Yeniden Bağlan (Rejoin)", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

----------------------------------------------------------------------------
-- 📚 ARAMA MOTORU SİSTEMİ (FİLTRELEME)
----------------------------------------------------------------------------
local function ScriptListesiniGuncelle(filtreText)
    for _, child in pairs(ScriptScroll:GetChildren()) do
        if child:IsA("TextButton") then child:Destroy() end
    end
    
    for _, veri in pairs(ScriptVeritabani) do
        if filtreText == "" or string.find(string.lower(veri.Isim), string.lower(filtreText)) then
            CreateActionButton(ScriptScroll, veri.Isim, function()
                pcall(function() assert(loadstring(veri.Komut))() end)
            end)
        end
    end
end

SearchBox.GetPropertyChangedSignal(SearchBox, "Text"):Connect(function()
    ScriptListesiniGuncelle(SearchBox.Text)
end)

ScriptListesiniGuncelle("")

----------------------------------------------------------------------------
-- HAKKINDA SAYFASI DURUMU
----------------------------------------------------------------------------
local AboutText = Instance.new("TextLabel", AboutPage)
AboutText.Size = UDim2.new(1, -20, 1, -20)
AboutText.Position = UDim2.new(0, 10, 0, 10)
AboutText.BackgroundTransparency = 1
AboutText.Font = Enum.Font.GothamSemibold
AboutText.TextSize = 14
AboutText.TextColor3 = Color3.fromRGB(220, 220, 220)
AboutText.Text = "Proje Adı: FreaX Hub Ultimate\nSürüm: v3.0 Premium\nKodlama Paneli: Acode\nYapımcı ve Marka Sahibi: Muhammed\n\n[FreaX Hub siber dünyada zirvedir!]"
AboutText.TextWrapped = true

----------------------------------------------------------------------------
-- SEKME GEÇİŞ MOTORLARI
----------------------------------------------------------------------------
CreateCategoryButton("🏃 Ana Güçler", function() PlayerPage.Visible = true ScriptPage.Visible = false AboutPage.Visible = false end)
CreateCategoryButton("📚 Script Hub", function() PlayerPage.Visible = false ScriptPage.Visible = true AboutPage.Visible = false end)
CreateCategoryButton("📊 Hakkında", function() PlayerPage.Visible = false ScriptPage.Visible = false AboutPage.Visible = true end)

-- ❌ KAPATMA BUTONU
local CloseBtn = Instance.new("TextButton", MainFrame)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 50, 100)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 16
CloseBtn.MouseButton1Click:Connect(function() FreaX_V3_Root:Destroy() end)

print("[FreaX Hub V3 Loaded Successfully! Fixed Edition]")
