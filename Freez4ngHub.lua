local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local ownerName = "freez4ng"
local ownerId = 7571761782

-- Table pour enregistrer les joueurs ayant exécuté le script
local scriptUsers = {}

local function sendNotification(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 5, -- Durée par défaut de 5 secondes
    })
end

-- Enregistrer l'utilisateur du script
local localPlayer = Players.LocalPlayer
if localPlayer then
    table.insert(scriptUsers, localPlayer.UserId)
end

-- Surveiller quand un joueur rejoint
Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        -- Le propriétaire a rejoint, notifier tous les utilisateurs du script
        for _, userId in ipairs(scriptUsers) do
            local userPlayer = Players:GetPlayerByUserId(userId)
            if userPlayer and userPlayer == localPlayer then
                sendNotification("Alerte", "Le owner du script a rejoint !", 5)
            end
        end
    end
end)

local function createLoadingScreen(message, subtitleMessage, duration, progressSpeed)
    local screenGui = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local progressBarContainer = Instance.new("Frame")
    local progressBar = Instance.new("Frame")
    local subtitle = Instance.new("TextLabel")
    
    -- Propriétés du ScreenGui
    screenGui.Name = "LoadingScreen"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    screenGui.IgnoreGuiInset = true

    -- Cadre principal
    frame.Name = "MainFrame"
    frame.Parent = screenGui
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1

    -- Titre
    title.Name = "Title"
    title.Parent = frame
    title.Text = message
    title.Font = Enum.Font.GothamBold
    title.TextSize = 32
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(0.6, 0, 0.1, 0)
    title.Position = UDim2.new(0.5, 0, 0.4, 0)
    title.AnchorPoint = Vector2.new(0.5, 0.5)
    title.TextScaled = true

    -- Barre de progression
    progressBarContainer.Name = "ProgressBarContainer"
    progressBarContainer.Parent = frame
    progressBarContainer.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    progressBarContainer.Size = UDim2.new(0.6, 0, 0.05, 0)
    progressBarContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
    progressBarContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    progressBarContainer.BackgroundTransparency = 1

    local containerUICorner = Instance.new("UICorner")
    containerUICorner.CornerRadius = UDim.new(0, 12)
    containerUICorner.Parent = progressBarContainer

    progressBar.Name = "ProgressBar"
    progressBar.Parent = progressBarContainer
    progressBar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    progressBar.Size = UDim2.new(0, 0, 1, 0)

    local progressUICorner = Instance.new("UICorner")
    progressUICorner.CornerRadius = UDim.new(0, 12)
    progressUICorner.Parent = progressBar

    -- Sous-titre
    subtitle.Name = "Subtitle"
    subtitle.Parent = frame
    subtitle.Text = subtitleMessage
    subtitle.Font = Enum.Font.Gotham
    subtitle.TextSize = 18
    subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
    subtitle.BackgroundTransparency = 1
    subtitle.Size = UDim2.new(0.6, 0, 0.05, 0)
    subtitle.Position = UDim2.new(0.5, 0, 0.57, 0)
    subtitle.AnchorPoint = Vector2.new(0.5, 0.5)
    subtitle.TextScaled = true

    -- Animation d'entrée
    game:GetService("TweenService"):Create(frame, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()
    game:GetService("TweenService"):Create(progressBarContainer, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()

    -- Remplissage progressif
    for i = 1, 100 do
        progressBar.Size = UDim2.new(i / 100, 0, 1, 0)
        task.wait(progressSpeed)
    end

    -- Animation de sortie
    game:GetService("TweenService"):Create(frame, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
    game:GetService("TweenService"):Create(progressBarContainer, TweenInfo.new(1), {BackgroundTransparency = 1}):Play()
    task.wait(1)

    -- Suppression
    screenGui:Destroy()
end

print("#######################")
print("#    Freez4ng Hub     #")
print("#   [ - Loaded ! - ]  #")
print("#             {V1.1.2}#")
print("#######################")


-- Premier écran de chargement universel
createLoadingScreen(
    "Freez4ng Hub on top 🎇",
    "Patience est la clé de la réussite... 🚀",
    5,
    0.05
)

if game.PlaceId == 6884319169 then
    createLoadingScreen(
        "Mic Up detecté",
        "- Baseplate élargie. 🏝\n - Sol de la private room solidifié. 🔨",
        nil,
        0.1
    )

    -- Taille d'un segment de la baseplate (plus réaliste)
    local segmentSize = 1000 -- Chaque segment fait 1000x1000 studs
    local gridSize = 50 -- Nombre de segments dans chaque direction (50x50 = 2 500 segments)

    -- Centre de la grille basé sur la position du joueur
    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local baseCenterX = math.floor(playerPosition.X / segmentSize) * segmentSize
    local baseCenterZ = math.floor(playerPosition.Z / segmentSize) * segmentSize

    -- Création des segments
    for x = -gridSize, gridSize do
        for z = -gridSize, gridSize do
            local newSegment = Instance.new("Part")
            newSegment.Size = Vector3.new(segmentSize, 1, segmentSize) -- Taille du segment
            newSegment.Position = Vector3.new(
                baseCenterX + (x * segmentSize),
                -0.5,
                baseCenterZ + (z * segmentSize)
            )
            newSegment.Anchored = true
            newSegment.Material = Enum.Material.Grass
            newSegment.BrickColor = BrickColor.new("Bright green")
            newSegment.CanCollide = true
            newSegment.Name = "BaseSegment"
            newSegment.Parent = workspace
        end
    end

    -- CFrame cible à rechercher
    local targetCFrame = CFrame.new(
        4220.60938, 2.71573448, 61.1288643, 
        -1, 0, 0, 
        0, 1, 0, 
        0, 0, -1
    )

    -- Parcourir les modèles "Room" dans le `workspace`
    for _, room in ipairs(workspace:GetChildren()) do
        if room:IsA("Model") and room.Name == "Room" then
            -- Rechercher une `Part` avec la CFrame cible dans le modèle "Room"
            for _, part in ipairs(room:GetDescendants()) do
                if part:IsA("Part") and part.CFrame == targetCFrame then
                    part.CanCollide = true
                    -- print("CanCollide activé pour :", part:GetFullName())
                end
            end
        end
    end
end


-- Création de la fenêtre principale
local Window = Rayfield:CreateWindow({
   Name = "Freez4ng Hub | Updated : 08/12/24 - 21h41 {🇫🇷}",
   LoadingTitle = "Make better : Freez4ng Hub...",
   LoadingSubtitle = "- By Freez4ng -",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false
})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local submitTextEvent = ReplicatedStorage:FindFirstChild("SubmitTextEvent")


local baseSegmentsCollidable = true
-- Création de l'onglet principal
local Menu = Window:CreateTab("🏠 Main")
local MainTab = Window:CreateTab("⭐ KeyBinds")
local ToolsTab = Window:CreateTab("🪓 Tools")
local ActivateTab = Window:CreateTab("🗝 Activate")
local TpTab = Window:CreateTab("📍 Téléportation")
-- Variables pour le suivi
local isFollowing = false
local followTask
local activationKey = Enum.KeyCode.F
local tripKey = Enum.KeyCode.G

ActivateTab:CreateLabel("❓ - Cela sert à activer les parcours, au lieu d'avoir à monter en haut de la tour pour le faire manuellement, vous l'avez ici.")
TpTab:CreateLabel("❓ - Cela sert à se téléporter à différents endroits de la map de Mic Up, histoire de gagner du temps.")
ToolsTab:CreateLabel("❓ - Cela sert à se donner des 'outils' dans votre inventaire pour faire diverses choses.")


if not submitTextEvent or not submitTextEvent:IsA("RemoteEvent") then
    warn("SubmitTextEvent n'existe pas ou n'est pas un RemoteEvent")
    return
end

-- Variable pour contrôler l'état de l'envoi
local isSendingText = false

-- Supprime toutes les animations en cours
local function clearAnimations(humanoid)
    for _, animTrack in ipairs(humanoid:GetPlayingAnimationTracks()) do
        animTrack:Stop()
    end
end

local function toggleCFrameMovement()
    if not isCFrameToggling then
        isCFrameToggling = true
        while isCFrameToggling do
            local root = Character:FindFirstChild("HumanoidRootPart")
            if root then
                root.CFrame = root.CFrame * CFrame.new(0.5, 0, 0) -- Déplacement à droite
                task.wait(0.05) -- Très rapide
                root.CFrame = root.CFrame * CFrame.new(-1, 0, 0) -- Déplacement à gauche
                task.wait(0.05)
            end
        end
    else
        isCFrameToggling = false
    end
end

-- Détecter les appuis sur la touche configurée
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == currentKey then
        toggleCFrameMovement()
    end
end)

local function toggleTextSending(isEnabled)
    isSendingText = isEnabled
    if isSendingText then
        -- Démarrer une boucle tant que c'est activé
        task.spawn(function()
            while isSendingText do
                submitTextEvent:FireServer("Stop") -- Envoie le texte au RemoteEvent
                submitTextEvent:FireServer("Stop")
                submitTextEvent:FireServer("Stop")
                task.wait(0.01) -- Très faible délai pour éviter les surcharges
            end
        end)
    end
end

-- Fonction pour trouver le joueur le plus proche
local function getClosestPlayer()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local closestDistance = math.huge
    local closestPlayer = nil

    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (character.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = otherPlayer
            end
        end
    end
    return closestPlayer
end

local function toggleModel(model, state)
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = state and 0 or 1
            part.CanCollide = state
        end
    end
end

-- Parcourt tous les modèles dans Workspace.Obby
for _, model in ipairs(workspace.Obby:GetChildren()) do
    if model:IsA("Model") then
        -- Ajout d'un bouton à cocher pour chaque modèle
        ActivateTab:CreateToggle({
            Name = model.Name,
            CurrentValue = false,
            Flag = "Toggle_" .. model.Name,
            Callback = function(state)
                toggleModel(model, state)
            end
        })
    end
end

local function startFollowing()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChild("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoid or not rootPart then return end

    -- Désactiver les mouvements classiques et supprimer les animations
    humanoid.WalkSpeed = 0
    humanoid.JumpPower = 0
    clearAnimations(humanoid)

    -- Lancer le suivi
    followTask = game:GetService("RunService").Heartbeat:Connect(function()
        local target = getClosestPlayer()
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local targetRoot = target.Character.HumanoidRootPart
            local targetPosition = targetRoot.Position

            -- Distance proche mais contrôlée
            local followDistance = 1 -- Distance par défaut derrière le joueur
            local basePosition = targetPosition - targetRoot.CFrame.LookVector * followDistance

            -- Oscillation rapide avant-arrière (mais sans dépasser la cible)
            local oscillation = math.sin(tick() * 50) * 0.5 -- Va-et-vient rapide, amplitude limitée
            local followPosition = basePosition + targetRoot.CFrame.LookVector * math.max(oscillation, 0)

            -- Stabilisation pour éviter des conflits
            rootPart.CFrame = CFrame.new(followPosition, targetPosition)
        end
    end)
end


-- Arrêter le suivi et restaurer les paramètres
local function stopFollowing()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChild("Humanoid")

    if humanoid then
        -- Restaurer les mouvements du joueur
        humanoid.WalkSpeed = 16
        humanoid.JumpPower = 50
    end

    -- Déconnecter le suivi
    if followTask then
        followTask:Disconnect()
        followTask = nil
    end
end

-- Activation/désactivation avec la touche
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end -- Ignore si une interface utilisateur bloque l'entrée
    if input.KeyCode == activationKey then
        isFollowing = not isFollowing

        if isFollowing then
            Rayfield:Notify({
                Title = "Bang by freez4ng",
                Content = "Bang by freez4ng activé ! ",
                Duration = 5
            })
            startFollowing()
        else
            Rayfield:Notify({
                Title = "Bang by freez4ng",
                Content = "Bang by freez4ng désactivé.",
                Duration = 5
            })
            stopFollowing()
        end
    end
end)

-- Indication de la touche d'activation dans l'interface
Menu:CreateLabel("👋 - Bienvenue dans mon Hub. ( BETA / Mise à jour encore en cours.. )")
Menu:CreateLabel("🔨 - Ce script est universel, vous pouvez donc l'utiliser sur tous les jeux.")
MainTab:CreateLabel("↓ Bang by freez4ng ↓ - Fais des va et vient derrière le joueur le plus proche de vous.")

-- Ajout d'un élément pour changer la touche d'activation
MainTab:CreateInput({
    Name = "Change Bang Key (Par défaut : F)",
    PlaceholderText = "Enter Key (e.g., F, G)",
    RemoveTextAfterFocusLost = true,
    Callback = function(input)
        local newKey = Enum.KeyCode[input:upper()] -- Convertit en Enum.KeyCode
        if newKey then
            activationKey = newKey
            Rayfield:Notify({
                Title = "Key Changed",
                Content = "Nouvelle touche : " .. input:upper(),
                Duration = 5
            })
        else
            Rayfield:Notify({
                Title = "Invalid Key",
                Content = "Veuillez entrer une touche valide.",
                Duration = 5
            })
        end
    end
})

local function createTeleportTool()
    local tool = Instance.new("Tool")
    tool.Name = "Teleport Tool" -- Ajout de l'espace
    tool.RequiresHandle = false -- Pas de modèle requis
    tool.CanBeDropped = false

    -- Action lorsqu'on équipe l'outil
    tool.Equipped:Connect(function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:FindFirstChild("HumanoidRootPart")

        if rootPart then
            -- Connecte l'événement de clic
            mouse.Button1Down:Connect(function()
                local targetPosition = mouse.Hit.Position
                local currentOrientation = rootPart.CFrame - rootPart.Position

                -- Téléportation à l'endroit cliqué en conservant orientation et comportement
                rootPart.CFrame = currentOrientation + Vector3.new(targetPosition.X, targetPosition.Y + 5, targetPosition.Z)
            end)
        end
    end)

    return tool
end



-- Ajout du bouton pour donner l'outil
ToolsTab:CreateButton({
    Name = "Give Teleport Tool",
    Callback = function()
        local player = game.Players.LocalPlayer
        local backpack = player:WaitForChild("Backpack")

        -- Création et ajout de l'outil dans l'inventaire
        local teleportTool = createTeleportTool()
        teleportTool.Parent = backpack

        Rayfield:Notify({
            Title = "Tool Added",
            Content = "L'outil de téléportation a été ajouté à votre inventaire.",
            Duration = 5
        })
    end
})

-- Fonction pour créer l'outil de "Bang"
local function createBangTool()
    local tool = Instance.new("Tool")
    tool.Name = "BangTool"
    tool.RequiresHandle = false -- Pas de modèle requis
    tool.CanBeDropped = false

    -- Variables pour suivre le joueur ciblé
    local isBanging = false
    local currentTarget = nil

    -- Fonction pour arrêter de suivre
    local function stopBanging()
        if isBanging and currentTarget then
            stopFollowing() -- Arrête le suivi
            currentTarget = nil
            isBanging = false
            Rayfield:Notify({
                Title = "Bang Désactivé",
                Content = "Vous ne suivez plus personne.",
                Duration = 5
            })
        end
    end

    -- Action lorsqu'on clique avec l'outil
    tool.Activated:Connect(function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        local target = mouse.Target -- Partie cliquée dans le jeu

        -- Vérifie si on clique sur un joueur
        if target and target.Parent and target.Parent:FindFirstChild("Humanoid") then
            local targetPlayer = game.Players:GetPlayerFromCharacter(target.Parent)

            if targetPlayer and targetPlayer ~= player and targetPlayer ~= currentTarget then
                stopBanging() -- Arrête le suivi précédent s'il y en a un
                currentTarget = targetPlayer
                isBanging = true
                startFollowing() -- Lancer le suivi
                Rayfield:Notify({
                    Title = "Bang Activé",
                    Content = "Vous suivez " .. targetPlayer.Name,
                    Duration = 5
                })
            end
        else
            -- Si on clique ailleurs et qu'on suit quelqu'un, arrêter le Bang
            if isBanging then
                stopBanging()
            end
        end
    end)

    return tool
end

-- Ajout du bouton pour donner l'outil "Bang"
ToolsTab:CreateButton({
    Name = "Give Bang Tool",
    Callback = function()
        local player = game.Players.LocalPlayer
        local backpack = player:WaitForChild("Backpack")

        -- Création et ajout de l'outil dans l'inventaire
        local bangTool = createBangTool()
        bangTool.Parent = backpack

        Rayfield:Notify({
            Title = "Tool Added",
            Content = "L'outil de Bang a été ajouté à votre inventaire.",
            Duration = 5
        })
    end
})

-- Ajout des boutons de téléportation dans la catégorie "📍 Téléportation"
local destinations = {
    {Name = "- Salle privé (A côté/en dehors)", Position = Vector3.new(4221.45, 3, 20.8799)},
    {Name = "- Salle privé (A l'interieure)", Position = Vector3.new(4220.35, 5.92277, 68.4868)},
    {Name = "- Fée emplacement", Position = Vector3.new(-115.698, 33.7183, -46.7717)},
    {Name = "- Donuts", Position = Vector3.new(-78.5842, 3.18543, -79.334)},
    {Name = "- Milieu de la map", Position = Vector3.new(27.4293, 5, 17.851)},
    {Name = "- Grand Bâtiment", Position = Vector3.new(211.43, 23.4127, 67.9908)},
    {Name = "- Mur (NotePad)", Position = Vector3.new(59.9446, 3, 255.75)},
    {Name = "- Tour (Au top)", Position = Vector3.new(59.3136, 313.313, 227.178)},
}

local function applyTransparencyEffect(character)
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        local parts = character:GetDescendants()
        local originalTransparencies = {} -- Table pour stocker les transparences originales
        
        -- Sauvegarde des transparences originales
        for _, part in ipairs(parts) do
            if part:IsA("BasePart") then
                originalTransparencies[part] = part.Transparency
            end
        end

        for i = 1, 10 do -- Augmentation des alternances à 10
            for _, part in ipairs(parts) do
                if part:IsA("BasePart") and part.Transparency < 1 then
                    part.Transparency = (i % 2 == 0) and 0.5 or 0 -- Alternance entre 0 et 0.5
                end
            end
            task.wait(0.2) -- Temps entre les alternances augmenté pour un effet plus long
        end

        -- Retour aux transparences originales à la fin
        for part, originalTransparency in pairs(originalTransparencies) do
            if part:IsA("BasePart") then
                part.Transparency = originalTransparency -- Réinitialisation
            end
        end
    end
end


-- Création des boutons de téléportation
for _, destination in ipairs(destinations) do
    TpTab:CreateButton({
        Name = destination.Name,
        Callback = function()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                -- Téléporte le joueur
                rootPart.CFrame = CFrame.new(destination.Position + Vector3.new(0, 5, 0)) -- Ajout de 5 pour éviter le sol
                -- Applique l'effet de transparence
                applyTransparencyEffect(character)
            end
        end
    })
end

MainTab:CreateToggle({
    Name = "- Spammer 'Stop' (Mur Text)",
    Default = false, -- Par défaut décoché
    Callback = function(state)
        toggleTextSending(state) -- Active ou désactive selon l'état de la case
    end
})

Menu:CreateToggle({
    Name = "- BasePlate ( Visible / Invisible ) :",
    Default = true,
    Callback = function(value)
        baseSegmentsVisible = value
        -- Mise à jour de la visibilité des segments dans Workspace
        for _, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part.Name == "BaseSegment" then
                part.Transparency = baseSegmentsVisible and 0 or 1
            end
        end
    end
})

for _, part in pairs(workspace:GetChildren()) do
    if part:IsA("Part") and part.Name == "BaseSegment" then
        part.CanCollide = baseSegmentsCollidable
    end
end

-- Créer le Toggle
Menu:CreateToggle({
    Name = "- BasePlate Collisions ( On / Off ) :",
    Default = baseSegmentsCollidable, -- Définit l'état initial à coché
    Callback = function(value)
        baseSegmentsCollidable = value
        -- Mise à jour des collisions des segments dans Workspace
        for _, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part.Name == "BaseSegment" then
                part.CanCollide = baseSegmentsCollidable
            end
        end
    end
})
