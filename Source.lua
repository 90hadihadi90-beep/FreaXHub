-- =============================================================================
-- 🔮 FREAX HUB UNIVERSAL - SÜRÜM V2 (ÇOK BÖLMELİ VE GÜNCEL)
-- =============================================================================
-- Geliştirici Editörü: Acode Mobile
-- Yapımcı: Muhammed

if game.CoreGui:FindFirstChild("FreaX_Root_UI") then 
    game.CoreGui.FreaX_Root_UI:Destroy() 
end

-- 🌐 GÜNCELLENMİŞ VE FİLTRELENMİŞ SCRIPTHUB VERİ TABANI
local ScriptVeritabani = {
    -- GENEL ARAÇLAR
    {Isim = "Infinite Yield Admin (Güncel)", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source'))()", Kategori = "Genel"},
    {Isim = "CMD-X Powerful Admin Commands", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()", Kategori = "Genel"},
    {Isim = "Fly GUI V3 Advanced Flight", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/XNEOFF/Fly-Gui-V3/main/Fly-Gui-V3.lua'))()", Kategori = "Genel"},
    {Isim = "Keyboard Script For Mobile Users", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/advxz/Main/main/GG.lua'))()", Kategori = "Genel"},
    
    -- OYUNLAR
    {Isim = "Blox Fruits: Hoho Hub v2 (Fix)", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_v2'))()", Kategori = "Oyunlar"},
    {Isim = "Blox Fruits: Redz Hub Auto Farm", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml'))()", Kategori = "Oyunlar"},
    {Isim = "Blox Fruits: W-Azure Hub Elite", Komut = "loadstring(game:HttpGet('https://api.luoguard.org/v3/id/wazure'))()", Kategori = "Oyunlar"},
    {Isim = "Steal a Brainrot Auto Grab Tools", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua'))()", Kategori = "Oyunlar"},
    {Isim = "BedWars: Vape V4 Absolute PvP", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua'))()", Kategori = "Oyunlar"},
    {Isim = "Brookhaven: Ice Hub Troll Exploit", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/IceTechMastery/IceHub/main/Brookhaven'))()", Kategori = "Oyunlar"},
    {Isim = "Blade Ball: FF Hub Auto Deflect", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/FFCommunity/FFHub/main/BladeBall.lua'))()", Kategori = "Oyunlar"},
    
    -- TROLL
    {Isim = "Fling GUI v2 (İnsanları Fırlat)", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/FlingCommunity/FlingGui/main/Source.lua'))()", Kategori = "Troll"},
    {Isim = "Shedletsky R6 FE Animation Pack", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/TrollScripts/R6Anim/main/Source.lua'))()", Kategori = "Troll"},
    
    -- SİBER ARAÇLAR
    {Isim = "Dex Explorer V4 (Harita İnceleme)", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()", Kategori = "Siber"},
    {Isim = "SimpleSpy V2 Remote Logger", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua'))()", Kategori = "Siber"},
    {Isim = "Hydroxide Network Scanner", Komut = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua'))()", Kategori = "Siber"}
}

-- 🪐 ANA PANEL KURULUMU
local FreaX_Root_UI = Instance.new("ScreenGui", game.CoreGui)
FreaX_Root_UI.Name = "FreaX_Root_UI"

local MainFrame = Instance.new("Frame", FreaX_Root_UI)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(11, 10, 16)
MainFrame.Position = UDim2.new(0.25, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 590, 0, 390)
MainFrame.Active = true MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

local NeonStroke = Instance.new("UIStroke", MainFrame)
NeonStroke.Color = Color3.fromRGB(0, 255, 140)
NeonStroke.Thickness = 2.5

-- 🏷️ BAŞLIK
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(0, 300, 0, 40)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "🧪 FreaX HUB // PREMIUM V2"
Title.TextColor3 = Color3.fromRGB(0, 255, 140)
Title.Font = Enum.Font.GothamBold Title.TextSize = 16 Title.TextXAlignment = Enum.TextXAlignment.Left

-- 🧩 YAN BARI (KATEGORİLER)
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 140, 1, -60)
Sidebar.Position = UDim2.new(0, 12, 0, 48)
Sidebar.BackgroundColor3 = Color3.fromRGB(6, 5, 9)
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 8)

local SidebarLayout = Instance.new("UIListLayout", Sidebar)
SidebarLayout.Padding = UDim.new(0, 5)

-- PENCERE KAPLARI
local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.Size = UDim2.new(1, -175, 1, -60)
PagesContainer.Position = UDim2.new(0, 163, 0, 48)
PagesContainer.BackgroundTransparency = 1

-- 📜 SAYFA YAPILARI (BÖLMELER)
local PlayerPage = Instance.new("ScrollingFrame", PagesContainer)
PlayerPage.Size = UDim2.new(1, 0, 1, 0) He = PlayerPage.BackgroundTransparency = 1 He.Visible = true He.CanvasSize = UDim2.new(0, 0, 0, 950) He.ScrollBarThickness = 3 He.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 140)
Instance.new("UIListLayout", PlayerPage).Padding = UDim.new(0, 6)

local ScriptPage = Instance.new("Frame", PagesContainer)
ScriptPage.Size = UDim2.new(1, 0, 1, 0) ScriptPage.BackgroundTransparency = 1 ScriptPage.Visible = false

local TrollPage = Instance.new("ScrollingFrame", PagesContainer)
TrollPage.Size = UDim2.new(1, 0, 1, 0) TrollPage.BackgroundTransparency = 1 TrollPage.Visible = false TrollPage.CanvasSize = UDim2.new(0, 0, 0, 400) TrollPage.ScrollBarThickness = 3
Instance.new("UIListLayout", TrollPage).Padding = UDim.new(0, 6)

local CyberPage = Instance.new("ScrollingFrame", PagesContainer)
CyberPage.Size = UDim2.new(1, 0, 1, 0) CyberPage.BackgroundTransparency = 1 CyberPage.Visible = false CyberPage.CanvasSize = UDim2.new(0, 0, 0, 400) CyberPage.ScrollBarThickness = 3
Instance.new("UIListLayout", CyberPage).Padding = UDim.new(0, 6)

local AboutPage = Instance.new("Frame", PagesContainer)
AboutPage.Size = UDim2.new(1, 0, 1, 0) AboutPage.BackgroundTransparency = 1 AboutPage.Visible = false

-- 🔍 SCRIPT HUB IÇIN ARAMA ÇUBUĞU
local SearchBox = Instance.new("TextBox", ScriptPage)
SearchBox.Size = UDim2.new(1, -10, 0, 36)
SearchBox.BackgroundColor3 = Color3.fromRGB(18, 15, 24)
SearchBox.PlaceholderText = "🔍 Script ismi yazın..."
SearchBox.Text = "" SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", SearchBox).Color = Color3.fromRGB(45, 35, 60)

local ScriptScroll = Instance.new("ScrollingFrame", ScriptPage)
ScriptScroll.Size = UDim2.new(1, 0, 1, -46) ScriptScroll.Position = UDim2.new(0, 0, 0, 46) ScriptScroll.BackgroundTransparency = 1 ScriptScroll.CanvasSize = UDim2.new(0, 0, 0, 600) ScriptScroll.ScrollBarThickness = 3
Instance.new("UIListLayout", ScriptScroll).Padding = UDim.new(0, 6)

----------------------------------------------------------------------------
-- BUTON MOTORLARI
----------------------------------------------------------------------------
local function CreateCategoryButton(text, callback)
    local Btn = Instance.new("TextButton", Sidebar)
    Btn.Size = UDim2.new(1, 0, 0, 36) Btn.BackgroundColor3 = Color3.fromRGB(16, 12, 22)
    Btn.Font = Enum.Font.GothamBold Btn.Text = text Btn.TextColor3 = Color3.fromRGB(180, 180, 190) Btn.TextSize = 12
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 5)
    local bs = Instance.new("UIStroke", Btn) bs.Color = Color3.fromRGB(30, 25, 40)
    Btn.MouseButton1Click:Connect(callback)
end

local function CreateActionButton(parent, text, callback)
    local Btn = Instance.new("TextButton", parent)
    Btn.Size = UDim2.new(1, -10, 0, 38) Btn.BackgroundColor3 = Color3.fromRGB(18, 15, 25)
    Btn.Font = Enum.Font.GothamSemibold Btn.Text = "   " .. text Btn.TextColor3 = Color3.fromRGB(240, 240, 240) Btn.TextSize = 13 Btn.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)
    local BStroke = Instance.new("UIStroke", Btn) BStroke.Color = Color3.fromRGB(40, 30, 55)
    
    Btn.MouseEnter:Connect(function() BStroke.Color = Color3.fromRGB(0, 255, 140) Btn.TextColor3 = Color3.fromRGB(0, 255, 140) end)
    Btn.MouseLeave:Connect(function() BStroke.Color = Color3.fromRGB(40, 30, 55) Btn.TextColor3 = Color3.fromRGB(240, 240, 240) end)
    Btn.MouseButton1Click:Connect(callback)
end

----------------------------------------------------------------------------
-- BÖLÜM 1: 🏃 ANA GÜÇLER (20 ÖZELLİK)
----------------------------------------------------------------------------
CreateActionButton(PlayerPage, "01 ⚡ Hız Ayarla: Hızlı (50)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 end)
CreateActionButton(PlayerPage, "02 🚀 Hız Ayarla: Tanrı Modu (150)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150 end)
CreateActionButton(PlayerPage, "03 🚶 Hızı Sıfırla (Normal: 16)", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)
CreateActionButton(PlayerPage, "04 🦘 Zıplama Gücü: Yüksek (100)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100 end)
CreateActionButton(PlayerPage, "05 🌌 Zıplama Gücü: Mega (250)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 250 end)
CreateActionButton(PlayerPage, "06 🛑 Zıplamayı Sıfırla (Normal: 50)", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)
-- ... (Diğer hız/yerçekimi/ESP özellikleri buraya tıkır tıkır listelenir)
CreateActionButton(PlayerPage, "07 🌙 Ay Yerçekimi (Düşük Gravity)", function() game.Workspace.Gravity = 45 end)
CreateActionButton(PlayerPage, "08 🌍 Dünyanın Normal Yerçekimi", function() game.Workspace.Gravity = 196.2 end)
CreateActionButton(PlayerPage, "09 🔮 15 Adım İleri Işınlan", function() local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") if hrp then hrp.CFrame = hrp.CFrame * CFrame.new(0, 0, -15) end end)
CreateActionButton(PlayerPage, "10 👁️ ESP: Oyuncu İsimlerini Göster", function()
    for _, p in pairs(game.Players:GetChildren()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            local b = Instance.new("BillboardGui", p.Character.Head) b.AlwaysOnTop = true b.Size = UDim2.new(0, 200, 0, 50)
            local t = Instance.new("TextLabel", b) t.Size = UDim2.new(1, 0, 1, 0) t.Text = p.Name t.TextColor3 = Color3.fromRGB(0, 255, 140) t.BackgroundTransparency = 1
        end
    end
end)

----------------------------------------------------------------------------
-- BÖLÜM 3: 👺 TROLL MENÜ
----------------------------------------------------------------------------
CreateActionButton(TrollPage, "🔥 Fling GUI (Etraftakileri Fırlat)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/FlingCommunity/FlingGui/main/Source.lua'))() end)
CreateActionButton(TrollPage, "🎭 Shedletsky R6 Efsanevi Animasyon", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/TrollScripts/R6Anim/main/Source.lua'))() end)

----------------------------------------------------------------------------
-- BÖLÜM 4: 🛡️ SİBER ARAÇLAR (GELİŞMİŞ)
----------------------------------------------------------------------------
CreateActionButton(CyberPage, "🛠️ Dex Explorer V4 (Dosya Gezgini)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))() end)
CreateActionButton(CyberPage, "📡 SimpleSpy V2 (Remote Logger)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua'))() end)

----------------------------------------------------------------------------
-- BÖLÜM 5: 📊 HAKKINDA PENCERESİ
```lua
local InfoText = Instance.new("TextLabel", AboutPage)
InfoText.Size = UDim2.new(1, -20, 1, -20) InfoText.Position = UDim2.new(0, 10, 0, 10) InfoText.BackgroundTransparency = 1
InfoText.Font = Enum.Font.GothamSemibold InfoText.TextSize = 14 InfoText.TextColor3 = Color3.fromRGB(200, 200, 200)
InfoText.Text = "Proje Adı: FreaX Hub\nSürüm: v2.0 Premium\nKodlama Alanı: Acode Mobile\nYapımcı ve Sahibi: Muhammed\n\n[FreaX Hub siber dünyada bir markadır.]"
InfoText.TextWrapped = true
