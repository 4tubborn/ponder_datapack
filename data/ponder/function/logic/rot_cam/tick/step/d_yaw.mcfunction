scoreboard players operation #remaining_dom ponder.scene.cam_rot = #total_yaw ponder.scene.cam_rot
scoreboard players operation #total_dom ponder.scene.cam_rot = #init_yaw ponder.scene.cam_rot
scoreboard players operation #abs_step_dom ponder.scene.cam_rot = #abs_step_yaw ponder.scene.cam_rot
function ponder:logic/rot_cam/tick/fade/cal
scoreboard players operation #abs_step_yaw ponder.scene.cam_rot = #abs_step_dom ponder.scene.cam_rot

scoreboard players operation #abs_step_pitch ponder.scene.cam_rot = #abs_pitch ponder.scene.cam_rot
scoreboard players operation #abs_step_pitch ponder.scene.cam_rot *= #abs_step_yaw ponder.scene.cam_rot
scoreboard players operation #abs_step_pitch ponder.scene.cam_rot /= #abs_yaw ponder.scene.cam_rot