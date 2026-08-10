scoreboard players set #abs_step_yaw ponder.scene.cam_rot 200
scoreboard players operation #abs_step_pitch ponder.scene.cam_rot = #abs_pitch ponder.scene.cam_rot
scoreboard players operation #abs_step_pitch ponder.scene.cam_rot *= #abs_step_yaw ponder.scene.cam_rot
scoreboard players operation #abs_step_pitch ponder.scene.cam_rot /= #abs_yaw ponder.scene.cam_rot

scoreboard players operation #abs_total_dom ponder.scene.cam_rot = #abs_yaw ponder.scene.cam_rot