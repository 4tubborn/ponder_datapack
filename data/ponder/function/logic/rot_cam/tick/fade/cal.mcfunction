#剩余百分比
scoreboard players set #remaining_percent ponder.scene.cam_rot 100
scoreboard players operation #remaining_percent ponder.scene.cam_rot *= #abs_total_dom ponder.scene.cam_rot
scoreboard players operation #remaining_percent ponder.scene.cam_rot /= #init_dom ponder.scene.cam_rot

scoreboard players operation #accel ponder.scene.cam_rot = #cam.elastic_coefficient ponder.const


#ease in
scoreboard players operation #abs_ease_in ponder.scene.cam_rot = #abs_step_dom ponder.scene.cam_rot
scoreboard players operation #abs_ease_in ponder.scene.cam_rot /= #cam.ease_in_multiplier ponder.const

#Ease-Out
scoreboard players operation #abs_ease_out ponder.scene.cam_rot = #abs_step_dom ponder.scene.cam_rot
scoreboard players operation #abs_ease_out ponder.scene.cam_rot /= #cam.ease_out_multiplier ponder.const

