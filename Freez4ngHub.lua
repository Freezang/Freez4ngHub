local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Création de la fenêtre principale
local Window = Rayfield:CreateWindow({
   Name = "Freez4ng Hub | Updated : 28/11/24 - 16h51",
   LoadingTitle = "Chargement de Freez4ng Hub...",
   LoadingSubtitle = "- By Freez4ng -",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false
})

-- Création de l'onglet principal
local Menu = Window:CreateTab("🏠 Main")
local MainTab = Window:CreateTab("⭐ Troll")
local ToolsTab = Window:CreateTab("🪓 Tools")
-- Variables pour le suivi
local isFollowing = false
local followTask
local activationKey = Enum.KeyCode.F
local tripKey = Enum.KeyCode.G

-- Supprime toutes les animations en cours
local function clearAnimations(humanoid)
    for _, animTrack in ipairs(humanoid:GetPlayingAnimationTracks()) do
        animTrack:Stop()
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

local function Trip()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    local humanoid = character:FindFirstChild("Humanoid")

    if rootPart and humanoid then
        -- Désactiver temporairement les mouvements pour simuler une chute
        humanoid.PlatformStand = true

        -- Désactiver le saut
        humanoid.Jump = false -- Empêche de sauter immédiatement
        local originalJumpPower = humanoid.JumpPower
        humanoid.JumpPower = 0

        -- Ajouter une propulsion plus forte vers l'avant
        local propulsionForce = 50 -- Puissance augmentée
        local lookVector = rootPart.CFrame.LookVector
        rootPart.Velocity = lookVector * propulsionForce -- Pousse vers l'avant uniquement

        -- Attendre un court instant avant de réactiver les mouvements
        task.wait(0.5)
        humanoid.PlatformStand = false
        humanoid.JumpPower = originalJumpPower
        humanoid.Jump = true -- Autoriser à sauter de nouveau
    end
end


-- Détection de la touche pour activer la fonction
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == tripKey then
        Trip()
    end
end)
MainTab:CreateLabel("↓ Trip by freez4ng ↓ - Votre personnage tombera en avant en faisant un salto juste après.")

-- Ajout du bouton dans l'interface
MainTab:CreateInput({
    Name = "Change Trip Key (Par défaut : G)",
    PlaceholderText = "Enter Key (e.g., G, H)",
    RemoveTextAfterFocusLost = true,
    Callback = function(input)
        local newKey = Enum.KeyCode[input:upper()] -- Convertit l'entrée utilisateur en Enum.KeyCode
        if newKey then
            tripKey = newKey
            Rayfield:Notify({
                Title = "Trip Key Changed",
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

-- Fonction pour créer l'outil de téléportation
local function createTeleportTool()
    local tool = Instance.new("Tool")
    tool.Name = "TeleportTool"
    tool.RequiresHandle = false -- Pas de modèle requis
    tool.CanBeDropped = false

    -- Action lorsqu'on clique avec l'outil
    tool.Activated:Connect(function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:FindFirstChild("HumanoidRootPart")

        if rootPart then
            -- Détection de la position de clic
            mouse.Button1Down:Connect(function()
                local targetPosition = mouse.Hit.p
                -- Téléportation du joueur à l'endroit cliqué
                rootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0)) -- Ajoute une élévation de 5 pour éviter de tomber dans le sol
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
