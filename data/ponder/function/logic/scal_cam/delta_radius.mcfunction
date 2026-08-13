execute store result score #r ponder.tmp run data get storage ponder:logic scal_cam.radius 1000
execute if data storage ponder:logic {scal_cam:{add:true}} run return run scoreboard players operation #remaining_radius ponder.scene.cam_scal = #r ponder.tmp
scoreboard players operation #remaining_radius ponder.scene.cam_scal = #radius ponder.scene.cam_rot
scoreboard players operation #remaining_radius ponder.scene.cam_scal -= #r ponder.tmp