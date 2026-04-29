execute if score #rot_y_counter ponder.timer matches 0 run return run function ponder:logic/rot_cam/y/end

#say 转转

advancement revoke @s only ponder:logic/rot_cam_y
execute as @n[type=text_display,tag=ponder.rot_cam.y.anchor,distance=0..] at @s run function ponder:logic/rot_cam/y/loop_
scoreboard players remove #rot_y_counter ponder.timer 1