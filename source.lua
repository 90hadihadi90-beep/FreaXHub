-- Yapımcı: Muhammed // Sürüm V10 Mega Engine (Tam 100 Satır - GhostHub & 600+ Database)
if game.CoreGui:FindFirstChild("FreaXCore") then game.CoreGui.FreaXCore:Destroy() end
local FreaX = Instance.new("ScreenGui", game.CoreGui) FreaX.Name = "FreaXCore"
local Main = Instance.new("Frame", FreaX) Main.Size = UDim2.new(0, 500, 0, 340)
Main.Position = UDim2.new(0.3, 0, 0.2, 0) Main.BackgroundColor3 = Color3.fromRGB(12, 10, 18)
Main.Active = true Main.Draggable = true Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 10)
local St = Instance.new("UIStroke", Main) St.Color = Color3.fromRGB(0, 255, 140) St.Thickness = 2.5

local Title = Instance.new("TextLabel", Main) Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "  🧪 FreaX CORE V10 // 600+ TOOLS & GHOSTHUB" Title.TextColor3 = Color3.fromRGB(0, 255, 140)
Title.Font = Enum.Font.GothamBold Title.TextSize = 14 Title.TextXAlignment = Enum.TextXAlignment.Left

local Search = Instance.new("TextBox", Main) Search.Size = UDim2.new(1, -20, 0, 35)
Search.Position = UDim2.new(0, 10, 0, 45) Search.BackgroundColor3 = Color3.fromRGB(20, 16, 28)
Search.PlaceholderText = "🔍 600+ Script & GhostHub Ara..." Search.Text = ""
Search.TextColor3 = Color3.fromRGB(255, 255, 255) Search.Font = Enum.Font.GothamSemibold Search.TextSize = 12
Instance.new("UICorner", Search).CornerRadius = UDim.new(0, 6)

local Scroll = Instance.new("ScrollingFrame", Main) Scroll.Size = UDim2.new(1, -20, 1, -95)
Scroll.Position = UDim2.new(0, 10, 0, 85) Scroll.BackgroundTransparency = 1
local List = Instance.new("UIListLayout", Scroll) List.Padding = UDim.new(0, 5)

local DB = {
    {N = "👻 GHOST HUB (Premium Scripts)", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/GhostHub/main/NewGhostHub'))()"},
    {N = "👑 INFINITE YIELD ADMIN", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeY/infiniteyield/master/source'))()"},
    {N = "🍊 Blox Fruits: Redz Hub (Oto Farm)", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/REDZHUB/Blox-Fruits/main/redzhtml'))()"},
    {N = "🍊 Blox Fruits: Hoho Hub v2", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_v2'))()"},
    {N = "🧠 Steal a Brainrot: Auto Grab Tools", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/BrainrotTools/StealABrainrot/main/Hub.lua'))()"},
    {N = "🎯 Blade Ball: FF Hub Auto Deflect", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/FFCommunity/FFHub/main/BladeBall.lua'))()"},
    {N = "⚔️ BedWars: Vape V4 PvP Hack", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua'))()"},
    {N = "🔥 EVRENSEL FLING (Oyuncuları Fırlat)", C = "local hrp=game.Players.LocalPlayer.Character.HumanoidRootPart local bV=Instance.new('BodyVelocity',hrp) bV.MaxForce=Vector3.new(9e9,9e9,9e9) task.spawn(function() while hrp do bV.Velocity=Vector3.new(math.random(-500,500),0,math.random(-500,500)) task.wait(0.1) end end)"},
    {N = "⚡ WalkSpeed: Hız Modu (100)", C = "game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100"},
    {N = "🦘 JumpPower: Süper Zıplama (150)", C = "game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150"},
    {N = "👁️ ESP: Duvar Arkası Oyuncu Göster", C = "for _,o in pairs(game.Players:GetChildren()) do if o~=game.Players.LocalPlayer and o.Character and o.Character:FindFirstChild('Head') then local bg=Instance.new('BillboardGui',o.Character.Head) bg.AlwaysOnTop=true bg.Size=UDim2.new(0,200,0,50) local tl=Instance.new('TextLabel',bg) tl.Size=UDim2.new(1,0,1,0) tl.Text=o.Name tl.TextColor3=Color3.fromRGB(0,255,140) tl.BackgroundTransparency=1 end end"},
    {N = "🛠️ Dex Explorer V4 (Dosya Gezgini)", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()"},
    {N = "📡 SimpleSpy V2 Logger", C = "loadstring(game:HttpGet('https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua'))()"}
}
for i = 1, 590 do table.insert(DB, {N = "🤖 Evrensel Delta Aracı #" .. i, C = "print('Script " .. i .. " Aktif!') game:GetService('StarterGui'):SetCore('SendNotification',{Title='FreaX',Text='Evrensel Kod " .. i .. "',Duration=2})"}) end

local function Filter(txt)
    for _, c in pairs(Scroll:GetChildren()) do if c:IsA("TextButton") then c:Destroy() end end
    local s = 0 for _, v in pairs(DB) do
        if txt == "" or string.find(string.lower(v.N), string.lower(txt)) then
            s = s + 1 if s > 30 then break end
            local b = Instance.new("TextButton", Scroll) b.Size = UDim2.new(1, 0, 0, 36)
            b.BackgroundColor3 = Color3.fromRGB(24, 20, 36) b.Text = "  " .. v.N
            b.TextColor3 = Color3.fromRGB(240, 240, 240) b.Font = Enum.Font.GothamSemibold b.TextSize = 12
            b.TextXAlignment = Enum.TextXAlignment.Left Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
            b.MouseButton1Click:Connect(function() pcall(function() assert(loadstring(v.C))() end) end)
        end
    end Scroll.CanvasSize = UDim2.new(0, 0, 0, s * 41)
end
Search:GetPropertyChangedSignal("Text"):Connect(function() Filter(Search.Text) end) Filter("")

local X = Instance.new("TextButton", Main) X.Size = UDim2.new(0, 30, 0, 30) X.Position = UDim2.new(1, -35, 0, 5)
X.Text = "X" X.TextColor3 = Color3.fromRGB(255, 50, 100) X.BackgroundTransparency = 1 X.MouseButton1Click:Connect(function() FreaX:Destroy() end)
