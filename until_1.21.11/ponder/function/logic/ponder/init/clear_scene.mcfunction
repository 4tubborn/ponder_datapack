execute store result storage ponder:tmp max_block_modifications int 1 run gamerule commandModificationBlockLimit
gamerule commandModificationBlockLimit 1048576

fill -5 -5 -5 20 20 20 air
function ponder:logic/ponder/init/restore_gamerule with storage ponder:tmp