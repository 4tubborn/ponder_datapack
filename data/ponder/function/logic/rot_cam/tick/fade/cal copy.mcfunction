#p=remaing/total
scoreboard players set #p ponder.tmp 100
scoreboard players operation #p ponder.tmp *= #remaining_dom ponder.scene.cam_rot
scoreboard players operation #p ponder.tmp /= #total_dom ponder.scene.cam_rot
#a=a_max*(2p-1)
scoreboard players set #f ponder.tmp 2
scoreboard players operation #f ponder.tmp *= #p ponder.tmp
scoreboard players operation #f ponder.tmp -= #100 tu-utils.num

scoreboard players operation #accel ponder.scene.cam_rot = #cam.max_accel ponder.const
scoreboard players operation #accel ponder.scene.cam_rot *= #f ponder.tmp
scoreboard players operation #accel ponder.scene.cam_rot /= #100 tu-utils.num

#tellraw @a ["accel: ",{score:{name:"#accel",objective:"ponder.scene.cam_rot"}}]
#非最终停止时保底a=0.01
execute if score #accel ponder.scene.cam_rot matches ..0 if score #p ponder.tmp matches 5.. run scoreboard players set #accel ponder.scene.cam_rot 1
#v_new=v_old+a
scoreboard players operation #abs_step_dom ponder.scene.cam_rot += #accel ponder.scene.cam_rot
execute if score #abs_step_dom ponder.scene.cam_rot matches ..-1 run scoreboard players set #abs_step_dom ponder.scene.cam_rot 0