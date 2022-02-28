local NooDepTryyVcl = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
local Hello = require(game.ReplicatedStorage.Util.CameraShaker)

function Click()
Hello:Stop()
    if NooDepTryyVcl.activeController and NooDepTryyVcl.activeController.anims and NooDepTryyVcl.activeController.anims.basic then
		NooDepTryyVcl.activeController.hitboxMagnitude = 50
		NooDepTryyVcl.activeController.increment = 3
       	NooDepTryyVcl.activeController.blades = {game.Players.LocalPlayer.Character.HumanoidRootPart}
        	NooDepTryyVcl.activeController:attack()
    end
end
game:GetService("RunService").Stepped:connect(
    function()
        Click()
    end
)