-------------------------------------------------------------------------------
-- core boot
-- @date 2015/02/18
-- @author masahiro mine
-------------------------------------------------------------------------------

local BaseScene = require("core.main.base.scene.BaseScene")
local StandardScene = class("StandardScene", BaseScene.new(GameSysConst.SCENE_TYPE.STANDARD))

function StandardScene:onEnter()
  cclog("FFFFFFFFFFFFFFFFFF")
end


return StandardScene

