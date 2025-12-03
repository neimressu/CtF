tellraw @a [{"selector":"@s"},{"text":" Захватил флаг!"}]
tag @s remove picked_flag2
execute as @e[type=minecraft:item_display,tag=flag2] at @e[tag=ctf,tag=flag2,type=marker] run tp @s ~ ~.5 ~ 180 0

function #ctf:team1_captured_flag