AddCSLuaFile()

ENT.Base = "base_anim"
ENT.Type = "anim"
ENT.PrintName = "Vehicle Spawner"
ENT.Category = "Orange's Things"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.Model = "models/hunter/blocks/cube025x05x025.mdl"

if SERVER then
    function ENT:Initialize()
        self:SetModel(self.Model)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetUseType(SIMPLE_USE)
    end

    function ENT:Use(Player)
        if not Player:IsAdmin() then return Player:ChatPrint("You do not have permission to use this spawner.") end

        Player:SendLua([[OpenVehicleSpawner()]])
    end
else
    function OpenVehicleSpawner()
        if IsValid(VehicleSpawnerFrame) then VehicleSpawnerFrame:Remove() end
        VehicleSpawnerFrame = vgui.Create("DFrame")
        VehicleSpawnerFrame:SetSize(600, 600)
        VehicleSpawnerFrame:Center()
        VehicleSpawnerFrame:MakePopup()
        VehicleSpawnerFrame:SetTitle("Vehicle Spawn Menu")

        local Button = vgui.Create("DButton", VehicleSpawnerFrame)
        Button:SetText("Spawn Tie-Fighter")
        Button:SetPos(20, 50)
        Button:SetSize(250, 50)
    Button.DoClick = function()
        LocalPlayer():ConCommand("gm_spawnsent kingpommes_lfs_tie_fighter "..tostring(spawnPos))
    end
        Button.DoClick = function()
            LocalPlayer():ConCommand("gm_spawnsent kingpommes_lfs_tie_fighter")
        end
    Button.DoClick = function()
 
   Button.DoClick = function()
        LocalPlayer():ConCommand("gm_spawnsent kingpommes_lfs_tie_fighter "..tostring(spawnPos))
    end
        local Button = vgui.Create("DButton", VehicleSpawnerFrame)
        Button:SetText("Spawn Lambda Class")
        Button:SetPos(20, 105)
        Button:SetSize(250, 50)

        Button.DoClick = function()
            LocalPlayer():ConCommand("gm_spawnsent lunasflightschool_lambda")
        end
    end
end
end
