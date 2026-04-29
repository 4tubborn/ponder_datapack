execute if score #rot_x_counter ponder.timer matches 0 run return run function ponder:logic/rot_cam/x/end

#say 转

advancement revoke @s only ponder:logic/rot_cam_x
execute as @n[type=text_display,tag=ponder.rot_cam.x.anchor,distance=0..] at @s run function ponder:logic/rot_cam/x/loop_
scoreboard players remove #rot_x_counter ponder.timer 1