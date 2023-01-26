    function ENT:Use(Player)
        if not Player:IsAdmin() then return Player:ChatPrint("You do not have permission to use this spawner.") end

        local spawnPos = Player:GetPos() + Player:EyeAngles():Forward() * -100
        Player:SendLua([[OpenVehicleSpawner(Vector("]]..tostring(spawnPos)..[[") )]])
    end
