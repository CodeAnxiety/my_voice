local ADDON = ...
local PATH = "Interface\\AddOns\\MyVoice\\"
local LSM = LibStub("LibSharedMedia-3.0")

local _, class, _, race, sex, _, _ = GetPlayerInfoByGUID(UnitGUID("player"))

--[[
Class:
- DEATHKNIGHT
- DEMONHUNTER
- DRUID
- HUNTER
- MAGE
- MONK
- PALADIN
- PRIEST
- ROGUE
- SHAMAN
- WARLOCK
- WARRIOR

Race:
- BloodElf
- Broken
- DarkIronDwarf
- Draenei
- Dwarf
- FelOrc
- ForestTroll
- Gnome
- Goblin
- HighmountainTauren
- Human
- Human
- IceTroll
- KulTiran
- LightforgedDraenei
- MagharOrc
- Mechagnome
- Naga_
- Nightborne
- NightElf
- NorthrendSkeleton
- Orc
- Pandaren
- Scourge = Undead
- Skeleton
- Taunka
- Tauren
- ThinHuman
- Troll
- Tuskarr
- VoidElf
- Vrykul
- Vulpera
- Worgen
- ZandalariTroll


Sex:
- 2 = Male
- 3 = Female
]]

local k_soundBank = {
    ["BloodElf"] = {
        [2] = {
            ["Quest Complete"] = 539228, -- Cheer 1
            ["Objective Complete"] = 539422, -- Cheer 2
            ["Objective Progress"] = 539224, -- Yes 1
        },
        [3] = {
            ["Quest Complete"] = 539322, -- Cheer 1
            ["Objective Complete"] = 539263, -- Yes 2
            ["Objective Progress"] = 539309, -- Nod 2
        },
        ["DEMONHUNTER"] = {
            [2] = {
                ["Quest Complete"] = 1306474, -- Cheer 1
                ["Objective Complete"] = 1306535, -- Yes 2
                ["Objective Progress"] = 1306512, -- Nod 1
                },
            [3] = {
                ["Quest Complete"] = 1313578, -- Cheer 1
                ["Objective Complete"] = 1284654, -- Yes 2
                ["Objective Progress"] = 1313587, -- Nod 3
            },
        },
        ["WARLOCK"] = { -- Because I say so!
            [2] = {
                ["Quest Complete"] = 1306474, -- Cheer 1
                ["Objective Complete"] = 1306535, -- Yes 2
                ["Objective Progress"] = 1306512, -- Nod 1
                },
            [3] = {
                ["Quest Complete"] = 1313578, -- Cheer 1
                ["Objective Complete"] = 1284654, -- Yes 2
                ["Objective Progress"] = 1313587, -- Nod 3
            },
        }
    },
    ["Goblin"] = {
        [2] = {
            ["Quest Complete"] = 542010, -- Cheer 2
            ["Objective Complete"] = 541964, -- Nod 3
            ["Objective Progress"] = 541927, -- Yes 1
        },
        [3] = {
            ["Quest Complete"] = 541848, -- Cheer 2,
            ["Objective Complete"] = 541755, -- Yes 1
            ["Objective Progress"] = 541743, -- Nod 1
        },
    },
    ["HighmountainTauren"] = {
        [2] = {
            ["Quest Complete"] = 1926565, -- MmooooooOOooo
            ["Objective Complete"] = 1730914, -- It is so
            ["Objective Progress"] = 1730887, -- Indeed
        },
        [3] = {
            ["Quest Complete"] = 1730524, -- Woohoooo
            ["Objective Complete"] = 1730540, -- It is so
            ["Objective Progress"] = 1730513, -- Indeed
        }
    },
    ["MagharOrc"] = {
        [2] = {
            ["Quest Complete"] = 2025916, -- Yeah ha ha ha
            ["Objective Complete"] = 1951433, -- Ha ha ha ha
            ["Objective Progress"] = 1951290, -- Indeed
        },
        [3] = {
            ["Quest Complete"] = 1951233, -- Job well done
            ["Objective Complete"] = 1951426, -- Ha ha
            ["Objective Progress"] = 1951289, -- Indeed
        },
    },
    ["Nightborne"] = {
        [2] = {
            ["Quest Complete"] = 1732344, -- Yeah ha ha ha
            ["Objective Complete"] = 1732394, -- Hey hey
            ["Objective Progress"] = 1732383, -- Right
        },
        [3] = {
            ["Quest Complete"] = 1731865, -- Outstanding
            ["Objective Complete"] = 1732027, -- He he he
            ["Objective Progress"] = 1732008, -- Right
        },
    }
}

if k_soundBank[race] then
    if k_soundBank[race][sex] then
        for name, path in pairs(k_soundBank[race][sex]) do
            LSM:Register("sound", format("|cFF00FF00Me|r: %s", name), path)
        end
    end
    if k_soundBank[race][class] and k_soundBank[race][class][sex] then
        for name, path in pairs(k_soundBank[race][class][sex]) do
            LSM:Register("sound", format("|cFF00FF00Me|r: %s", name), path)
        end
    end
end
