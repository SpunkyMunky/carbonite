if not Nx.ModQuests then
	Nx.ModQuests = {}
end

local ModQuests={
}

function Nx.ModQuests:Load10 ()
	for key,val in pairs(ModQuests) do
		Nx.Quests[key] = val
	end
	Nx.ModQuests:Clear10()
end

function Nx.ModQuests:Clear10 ()
	ModQuests = {}
end