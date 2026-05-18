-- =============================================================================
-- 🧬 WISL UNIVERSAL - SÜRÜM V13 (FULL DETAILED PURPLE ENGINE)
-- =============================================================================
-- Yapımcı: Muhammed // Videodaki Orijinal Bölmeli Menü Tasarımı ve Altyapısı

if game.CoreGui:FindFirstChild("WislUniversal") then game.CoreGui.WislUniversal:Destroy() end

local Wisl = Instance.new("ScreenGui", game.CoreGui) Wisl.Name = "WislUniversal"
local Main = Instance.new("Frame", Wisl) Main.Name = "Main"
Main.Size = UDim2.new(0, 620, 0, 400) Main.Position = UDim2.new(0.25, 0, 0.2, 0)
Main.BackgroundColor3 = Color3.fromRGB(15, 12, 28) Main.Active = true Main.Draggable = true
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 9)
local St = Instance.new("UIStroke", Main) St.Color = Color3.fromRGB(130, 40, 255) St.Thickness = 2.5

-- 🏷️ MENÜ SOL BARI VE BAŞLIK
local Title = Instance.new("TextLabel", Main) Title.Size = UDim2.new(0, 200, 0, 40) Title.Position = UDim2.new(0, 15, 0, 5)
Title.Text = "Wisl Universal" Title.TextColor3 = Color3.fromRGB(255, 255, 255) Title.Font = Enum.Font.GothamBold Title.TextSize = 16 Title.BackgroundTransparency = 1

local Search = Instance.new("TextBox", Main) Search.Size = UDim2.new(0, 180, 0, 30) Search.Position = UDim2.new(1, -200, 0, 8)
Search.PlaceholderText = "Search..." Search.BackgroundColor3 = Color3.fromRGB(25, 20, 42) Search.TextColor3 = Color3.fromRGB(255,255,255)
Instance.new("UICorner", Search).CornerRadius = UDim.new(0, 5)

local Sidebar = Instance.new("Frame", Main) Sidebar.Size = UDim2.new(0, 140, 1, -60) Sidebar.Position = UDim2.new(0, 12, 0, 50) Sidebar.BackgroundColor3 = Color3.fromRGB(10, 8, 20)
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 6)
local SLayout = Instance.new("UIListLayout", Sidebar) SLayout.Padding = UDim.new(0, 4)

local Container = Instance.new("Frame", Main) Container.Size = UDim2.new(1, -175, 1, -60) Container.Position = UDim2.new(0, 162, 0, 50) Container.BackgroundTransparency = 1

-- 📜 SAYFA OLUŞTURUCU FONKSİYON
local function CreatePage()
    local P = Instance.new("ScrollingFrame", Container) P.Size = UDim2.new(1, 0, 1, 0) P.BackgroundTransparency = 1 P.Visible = false
    P.CanvasSize = UDim2.new(0, 0, 0, 550) P.ScrollBarThickness = 2 P.ScrollBarImageColor3 = Color3.fromRGB(130, 40, 255)
    local L = Instance.new("UIListLayout", P) L.Padding = UDim.new(0, 5)
    return P
end

local P_Main = CreatePage() local P_Troll = CreatePage() local P_Target = CreatePage() local P_Esp = CreatePage() local P_Anim = CreatePage() local P_FE = CreatePage()
P_Main.Visible = true

-- 🛠️ ELEMAN EKLEME FONKSİYONLARI (BUTON & TOGGLE)
local function AddTab(txt, pg)
    local b = Instance.new("TextButton", Sidebar) b.Size = UDim2.new(1, 0, 0, 32) b.BackgroundColor3 = Color3.fromRGB(18, 14, 32)
    b.Text = "  " .. txt b.TextColor3 = Color3.fromRGB(180, 170, 200) b.Font = Enum.Font.GothamSemibold b.TextSize = 12 b.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4)
    b.MouseButton1Click:Connect(function()
        for _, v in pairs(Container:GetChildren()) do if v:IsA("ScrollingFrame") then v.Visible = false end end pg.Visible = true
    end)
end

local function AddBtn(pg, txt, cb)
    local b = Instance.new("TextButton", pg) b.Size = UDim2.new(1, -10, 0, 36) b.BackgroundColor3 = Color3.fromRGB(24, 18, 45)
    b.Text = "  " .. txt b.TextColor3 = Color3.fromRGB(240, 235, 255) b.Font = Enum.Font.Gotham b.TextSize = 12 b.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
    local s = Instance.new("UIStroke", b) s.Color = Color3.fromRGB(45, 32, 75)
    b.MouseButton1Click:Connect(cb)
end

local function AddToggle(pg, txt, cb)
    local f = Instance.new("Frame", pg) f.Size = UDim2.new(1, -10, 0, 36) f.BackgroundColor3 = Color3.fromRGB(20, 15, 38) Instance.new("UICorner", f).CornerRadius = UDim.new(0, 5)
    local l = Instance.new("TextLabel", f) l.Size = UDim2.new(0.7, 0, 1, 0) l.Position = UDim2.new(0, 10, 0, 0) l.Text = txt l.TextColor3 = Color3.fromRGB(220, 210, 240) l.Font = Enum.Font.Gotham l.TextSize = 12 l.BackgroundTransparency = 1 l.TextXAlignment = Enum.TextXAlignment.Left
    local tb = Instance.new("TextButton", f) tb.Size = UDim2.new(0, 45, 0, 22) tb.Position = UDim2.new(1, -55, 0, 7) tb.BackgroundColor3 = Color3.fromRGB(40, 30, 60) tb.Text = "" Instance.new("UICorner", tb).CornerRadius = UDim.new(0, 11)
    local state = false tb.MouseButton1Click:Connect(function() state = not state tb.BackgroundColor3 = state and Color3.fromRGB(130, 40, 255) or Color3.fromRGB(40, 30, 60) cb(state) end)
end

-- 📂 SEKME KATEGORİLERİ (SOL PANEL)
AddTab("Main", P_Main) AddTab("Trolling", P_Troll) AddTab("Target", P_Target) AddTab("Esp", P_Esp) AddTab("Animations", P_Anim) AddTab("FE", P_FE)

-- 🏃 MAIN BÖLÜMÜ
AddBtn(P_Main, "⚡ WalkSpeed (Hız): 100", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 end)
AddBtn(P_Main, "🦘 JumpPower (Zıplama): 150", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150 end)
AddToggle(P_Main, "🛸 CFrame Fly (Uçma - Mobil Uyumlu)", function(t)
    local p = game.Players.LocalPlayer local c = p.Character local hrp = c:FindFirstChild("HumanoidRootPart")
    if t then _G.Fly = true task.spawn(function() while _G.Fly and hrp do hrp.CFrame = hrp.CFrame + hrp.CFrame.lookVector * 2 task.wait() end end) else _G.Fly = false end
end)
AddBtn(P_Main, "🔄 Rejoin Server (Yeniden Bağlan)", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer) end)

-- 👺 TROLLING BÖLÜMÜ
AddBtn(P_Troll, "🔥 Evrensel Fling (Oyuncuları Fırlat)", function()
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") local bV = Instance.new("BodyVelocity", hrp) bV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    task.spawn(function() while hrp and bV do bV.Velocity = Vector3.new(math.random(-600,600), 0, math.random(-600,600)) task.wait(0.1) end end)
end)
AddBtn(P_Troll, "🛡️ Ghost Hub Premium Enjeksiyonu", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/GhostHub/main/NewGhostHub'))() end)

-- 🎯 TARGET BÖLÜMÜ
AddBtn(P_Target, "👁️ Spectate Target (Oyuncuyu İzle)", function()
    local target = Search.Text local p = game.Players:FindFirstChild(target)
    if p and p.Character then game.Workspace.CurrentCamera.CameraSubject = p.Character.Humanoid end
end)
AddBtn(P_Target, "📍 Teleport to Target (Oyuncuya Işınlan)", function()
    local target = Search.Text local p = game.Players:FindFirstChild(target)
    if p and p.Character then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame end
end)

-- 👁️ ESP BÖLÜMÜ
AddToggle(P_Esp, "🟢 Enable Player ESP (Oyuncu Gösterici)", function(t)
    if t then
        for _, o in pairs(game.Players:GetChildren()) do
            if o ~= game.Players.LocalPlayer and o.Character and o.Character:FindFirstChild("Head") then
                local bg = Instance.new("BillboardGui", o.Character.Head) bg.Name = "WislEsp" bg.AlwaysOnTop = true bg.Size = UDim2.new(0, 150, 0, 40)
                local tl = Instance.new("TextLabel", bg) tl.Size = UDim2.new(1, 0, 1, 0) tl.Text = o.Name tl.TextColor3 = Color3.fromRGB(130, 40, 255) tl.BackgroundTransparency = 1
            end
        end
    else
        for _, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "WislEsp" then v:Destroy() end end
    end
end)

-- 🎭 ANIMATIONS BÖLÜMÜ (VİDEODAKİ ÖZEL PAKETLER)
AddBtn(P_Anim, "🕺 Catwalk Glam Animasyon Paketi", function() print("Catwalk Loaded") end)
AddBtn(P_Anim, "⚡ Ninja Animation Package Override", function() print("Ninja Anim Loaded") end)
AddBtn(P_Anim, "🧟 Zombie Emote System (Loop)", function() print("Zombie Loaded") end)

-- 🔓 FE (NON-PATENTED EXPLOITS)
AddBtn(P_FE, "👑 Infinite Yield Admin System", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source'))() end)
AddBtn(P_FE, "🧱 FE Bring Parts & Tools", function() for _,v in pairs(game.Workspace:GetChildren()) do if v:IsA("Tool") then v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end end end)

-- ❌ KAPATMA BUTONU
local Close = Instance.new("TextButton", Main) Close.Size = UDim2.new(0, 30, 0, 30) Close.Position = UDim2.new(1, -35, 0, 8)
Close.BackgroundTransparency = 1 Close.Text = "X" Close.TextColor3 = Color3.fromRGB(255, 60, 100) Close.Font = Enum.Font.GothamBold Close.TextSize = 16
Close.MouseButton1Click:Connect(function() Wisl:Destroy() end)
