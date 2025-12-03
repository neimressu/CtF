tellraw @a [{"selector":"@s"},{"text":" Захватил флаг!"}]
tag @s remove picked_flag1
execute as @e[type=minecraft:item_display,tag=flag1] at @e[tag=ctf,tag=flag1,type=marker] run tp @s ~ ~.5 ~ 180 0

function #ctf:team2_captured_flag