local ADDON = ...
local PATH = "Interface\\AddOns\\MyVoice\\"
local LSM = LibStub("LibSharedMedia-3.0")

local _, class, _, race, sex, _, _ = GetPlayerInfoByGUID(UnitGUID("player"))

local k_soundBank = {
    ["BloodElf"] = {
        [2] = {
            ["Quest Complete"] = 539228, -- Cheer 1
            ["Objective Complete"] = 539422, -- Cheer 2
            ["Objective Progress"] = 539224, -- Yes 1
        },
    },
    ["Goblin"] = {
        [2] = {
            ["Quest Complete"] = 542010, -- Cheer 2
            ["Objective Complete"] = 541964, -- Nod 3
            ["Objective Progress"] = 541927, -- Yes 1
        }
    }
}

if k_soundBank[race] then
    if k_soundBank[race][sex] then
        for name, path in pairs(k_soundBank[race][sex]) do
            LSM:Register("sound", format("|cFF00FF00Me|r: %s", name), path)
        end
    end
end
