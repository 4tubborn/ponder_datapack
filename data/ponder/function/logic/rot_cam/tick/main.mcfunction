#yaw,pitch:1e2,radius:1e3,k:1e3
execute if predicate ponder:rot_cam/end run return run function ponder:logic/rot_cam/tick/end
#cal abs
scoreboard players operation #abs_yaw ponder.scene.cam_rot = #total_yaw ponder.scene.cam_rot
scoreboard players operation #abs_pitch ponder.scene.cam_rot = #total_pitch ponder.scene.cam_rot
scoreboard players set #sign_yaw ponder.scene.cam_rot 1
scoreboard players set #sign_pitch ponder.scene.cam_rot 1
execute if score #abs_yaw ponder.scene.cam_rot matches ..-1 run function ponder:logic/rot_cam/tick/abs/yaw
execute if score #abs_pitch ponder.scene.cam_rot matches ..-1 run function ponder:logic/rot_cam/tick/abs/pitch
#dom axis
function ponder:logic/rot_cam/tick/dom_axis
#step
function ponder:logic/rot_cam/tick/step/select
#add sign
scoreboard players operation #step_yaw ponder.scene.cam_rot = #abs_step_yaw ponder.scene.cam_rot
scoreboard players operation #step_yaw ponder.scene.cam_rot *= #sign_yaw ponder.scene.cam_rot
scoreboard players operation #step_pitch ponder.scene.cam_rot = #abs_step_pitch ponder.scene.cam_rot
scoreboard players operation #step_pitch ponder.scene.cam_rot *= #sign_pitch ponder.scene.cam_rot
#offset(r*k*step)
#scoreboard players operation #t ponder.tmp = #radius ponder.scene.cam_rot
#scoreboard players operation #t ponder.tmp *= #k_ratio ponder.const
#scoreboard players operation #t ponder.tmp /= #1000 tu-utils.num
#1e4
#scoreboard players operation #offset_x ponder.scene.cam_rot = #t ponder.tmp
#scoreboard players operation #offset_x ponder.scene.cam_rot *= #step_yaw ponder.scene.cam_rot
#scoreboard players operation #offset_y ponder.scene.cam_rot = #t ponder.tmp
#scoreboard players operation #offset_y ponder.scene.cam_rot *= #step_pitch ponder.scene.cam_rot

#execute store result storage ponder:macro rot_cam.offset_x double 0.00001 run scoreboard players get #offset_x ponder.scene.cam_rot
#execute store result storage ponder:macro rot_cam.offset_y double 0.00001 run scoreboard players get #offset_y ponder.scene.cam_rot
execute store result storage ponder:macro rot_cam.step_yaw double 0.01 run scoreboard players get #step_yaw ponder.scene.cam_rot
execute store result storage ponder:macro rot_cam.step_pitch double 0.01 run scoreboard players get #step_pitch ponder.scene.cam_rot
execute store result storage ponder:macro rot_cam.radius double 0.001 run scoreboard players get #radius ponder.scene.cam_rot

#tellraw @a ["stor: ",{storage:"ponder:macro",nbt:"rot_cam"}]

#function ponder:logic/rot_cam/tick/tp with storage ponder:macro rot_cam
execute as 1c595-1-7b56-0-1 at @s run function ponder:logic/rot_cam/tick/tp with storage ponder:macro rot_cam

scoreboard players operation #total_yaw ponder.scene.cam_rot -= #step_yaw ponder.scene.cam_rot
scoreboard players operation #total_pitch ponder.scene.cam_rot -= #step_pitch ponder.scene.cam_rot

#tellraw @a ["remain yaw: ",{score:{name:"#total_yaw",objective:"ponder.scene.cam_rot"}},", remain pitch: ",{score:{name:"#total_pitch",objective:"ponder.scene.cam_rot"}}]

advancement revoke @s only ponder:logic/rot_cam