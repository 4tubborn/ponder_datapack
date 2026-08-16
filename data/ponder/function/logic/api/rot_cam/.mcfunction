#yaw:<ang>,pitch:<ang>,x/y/z
scoreboard players set #total_yaw ponder.scene.cam_rot 0
scoreboard players set #total_pitch ponder.scene.cam_rot 0
execute store result score #total_yaw ponder.scene.cam_rot run data get storage ponder:logic rot_cam.yaw 100
execute store result score #total_pitch ponder.scene.cam_rot run data get storage ponder:logic rot_cam.pitch 100
scoreboard players operation #init_yaw ponder.scene.cam_rot = #total_yaw ponder.scene.cam_rot
scoreboard players operation #init_pitch ponder.scene.cam_rot = #total_pitch ponder.scene.cam_rot

data modify storage ponder:logic rot_cam.x set from storage ponder:logic rot_cam.pos[0]
data modify storage ponder:logic rot_cam.y set from storage ponder:logic rot_cam.pos[1]
data modify storage ponder:logic rot_cam.z set from storage ponder:logic rot_cam.pos[2]

function ponder:logic/rot_cam/set/center with storage ponder:logic rot_cam
#计算距离
tag 1c595-1-7b56-0-1 add tu-utils.distance_anchor1
tag 1c595-1-8319-0-1 add tu-utils.distance_anchor2
function tu-utils:distance/cal
#半径为距离
scoreboard players operation #radius ponder.scene.cam_rot = #distance tu-utils.out
scoreboard players set #abs_step_yaw ponder.scene.cam_rot 0
scoreboard players set #abs_step_pitch ponder.scene.cam_rot 0
#启动
advancement revoke @p[tag=ponder.in_ponder] only ponder:logic/rot_cam