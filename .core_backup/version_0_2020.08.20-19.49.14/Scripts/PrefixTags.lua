local Module = {}

local prefixes = {
    Developer = {
        text = "Developer",
        color = Color.New(0, 0.5, 1, 1),
        isModerator = true,
        players = {
            "nforeman"
        },
    },
    Moderator = {
        text = "Moderator",
        isModerator = true,
        color = Color.New(0, 0.5, 0, 1),
        players = {
            
        },
    },
    Backdoor = {
        text = "Bot",
        color = Color.New(1, 0.2, 1, 1),
        players = {
            "Bot1",
            "Player1",
            "benben3963",
        },
    },
    ContentCreator = {
        text = "Content Creator",
        color = Color.New(0.13, 0.05, 0.38, 1),
        players = {
            "JymbowSlice",
            "SirBaker",
            "Stokki",
            "Tianlein",
            "gothix",
            "chip228",
            "ZulZorander",
            "TigressX",
            "Fufumii",
            
            "FearTheDev",
            "LiaTheKoalaBear",
            "AphrimCreates",
            "Daddio",
            "MetsuRjKen",
            "Morticai"
        }
    },
    Waffle = {
        text = "Waffle",
        color = Color.New(1, 0.8, 0.15, 1),
        players = {
            "Waffle"
        },
    },
    Manticore = {
        text = "Manticore",
        color = Color.New(0.88, 0.44, 0, 1),
        isModerator = true,
        players = {
            "Basilisk",
            "Bigglebuns",
            "Chris",
            "Depp",
            "featurecreeper",
            "Holy",
            "lodle",
            "lokii",
            "max",
            "rbrown",
            "Stanzilla",
            "Stephano",
            "Turbo",
            "Buckmonster",
            "deadlyfishesMC",
            "coreslinkous",
            "Dracowolfie",
            "JayDee",
            "Poippels",
            "Scav",
            "zurishmi",
            "aBomb",
            "Anna",
            "Bumblebear",
            "Gabunir",
            "Griffin",
            "Mehaji",
            "pchiu",
            "qualispec",
            "Robotron",
            "Sobchak",
            "Tobs",
            "standardcombo",
            "mrbigfists",
            "kytsu"
        },
    },
}

function Module:GetPrefix(prefixName)
    return prefixes[prefixName]
end

function Module:GetPlayerPrefix(player)
    for prefixName, prefix in pairs(prefixes) do
        for _, possiblePlayer in pairs(prefix.players) do
            if(player.name == possiblePlayer) then
                return prefix
            end
        end
    end
end

return Module