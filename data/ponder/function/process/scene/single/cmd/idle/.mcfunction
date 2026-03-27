scoreboard players set @s ponder.timer -1
#延时duration刻，重置后由next进度执行下一条命令（tick检测是否为0）
$schedule function ponder:process/scene/single/cmd/idle/reset $(duration)
#execute store result score #idle ponder.timer run data get storage ponder:scene cur_cmd.duration