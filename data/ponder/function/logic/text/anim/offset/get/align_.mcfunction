#数值提供器有bug，offset:-0.5时判断min:0仍通过
execute store result score #a ponder.tmp run data get storage ponder:logic text.offset 10000
execute if score #a ponder.tmp matches ..0 \
run return run data modify storage ponder:logic text.alignment set value "left"
data modify storage ponder:logic text.alignment set value "right"