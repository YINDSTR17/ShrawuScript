getgenv().autoTree = true

local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

while wait() do
	if getgenv().autoTree == true then
		for i, v in pairs(game:GetService("Workspace").TreeIslands:GetDescendants()) do
			if v.Name == "Base" and v.Parent.Name == "MegaTree" then
				plr.CFrame = v.CFrame
				for i, v2 in pairs(v.Parent.Parent:GetDescendants()) do
					if v2.Name == "TextLabel" and v2.Parent.Name == "BillboardGui" then
						repeat wait()
							game:GetService("ReplicatedStorage").Communication.Remotes.HitMegaTree:FireServer(v.Parent.Parent.Name)
						until v2.Text == "Respawn In 04:57" or v2.Text == "Respawn In 04:58" or v2.Text == "Respawn In 04:59"
					end
				end
			end
		end
	end
end
