#p=remaing/total
scoreboard players set #p ponder.tmp 100
scoreboard players operation #p ponder.tmp *= #remaining_dom ponder.scene.cam_rot
scoreboard players operation #p ponder.tmp /= #total_dom ponder.scene.cam_rot
#v = 4p(1-p) * V_max
#t1=1-p
scoreboard players set #t1 ponder.tmp 100
scoreboard players operation #t1 ponder.tmp -= #p ponder.tmp

scoreboard players set #abs_step_dom ponder.scene.cam_rot 4
scoreboard players operation #abs_step_dom ponder.scene.cam_rot *= #cam.max_speed ponder.const
scoreboard players operation #abs_step_dom ponder.scene.cam_rot *= #p ponder.tmp
scoreboard players operation #abs_step_dom ponder.scene.cam_rot *= #t1 ponder.tmp
scoreboard players operation #abs_step_dom ponder.scene.cam_rot /= #10000 tu-utils.num

execute if score #abs_step_dom ponder.scene.cam_rot matches ..0 if score #p ponder.tmp matches 0.. run scoreboard players set #abs_step_dom ponder.scene.cam_rot 1
#tellraw @a ["vel: ",{score:{name:"#abs_step_dom",objective:"ponder.scene.cam_rot"}}]
#非最终停止时保底a=0.01
#execute if score #accel ponder.scene.cam_rot matches ..0 if score #p ponder.tmp matches 5.. run scoreboard players set #accel ponder.scene.cam_rot 1
#v_new=v_old+a
#scoreboard players operation #abs_step_dom ponder.scene.cam_rot += #accel ponder.scene.cam_rot
#execute if score #abs_step_dom ponder.scene.cam_rot matches ..-1 run scoreboard players set #abs_step_dom ponder.scene.cam_rot 0