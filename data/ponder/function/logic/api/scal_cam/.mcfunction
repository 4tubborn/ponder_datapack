#radius:<float>,target radius;add:<bool>
rotate 1c595-1-7b56-0-1 facing entity @s
function ponder:logic/scal_cam/delta_radius
scoreboard players operation #total_radius ponder.scene.cam_scal = #remaining_radius ponder.scene.cam_scal
#启动
advancement revoke @p[tag=ponder.in_ponder] only ponder:logic/scal_cam

say scale