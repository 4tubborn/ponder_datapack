execute if predicate ponder:scal_cam/end run return run function ponder:logic/scal_cam/tick/end

function ponder:logic/scal_cam/tick/fade/cal
#更新radius
scoreboard players operation #radius ponder.scene.cam_rot += #step_radius ponder.scene.cam_scal
execute store result storage ponder:macro scal_cam.radius double 0.001 run scoreboard players get #radius ponder.scene.cam_rot
#锚点
execute as 1c595-1-7b56-0-1 at @s run function ponder:logic/scal_cam/tick/tp with storage ponder:macro scal_cam

scoreboard players operation #remaining_radius ponder.scene.cam_scal -= #step_radius ponder.scene.cam_scal
advancement revoke @s only ponder:logic/scal_cam

say tick