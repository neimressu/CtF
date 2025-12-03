$execute at @e[tag=ctf,tag=flag1,type=marker] if entity @e[type=minecraft:item_display,tag=flag1,distance=...7,limit=1] run tag @a[distance=..1,gamemode=!creative,gamemode=!spectator,team=$(team2)] add picked_flag1
execute at @e[tag=ctf,tag=flag1,type=marker] as @a[tag=picked_flag2,distance=..1,gamemode=!creative,gamemode=!spectator] run function ctf:flag1/captured
execute as @e[type=minecraft:item_display,tag=flag1] at @s if entity @p[tag=picked_flag1,distance=..16] run function ctf:flag1/math

$execute at @e[tag=ctf,tag=flag2,type=marker] if entity @e[type=minecraft:item_display,tag=flag2,distance=...7,limit=1] run tag @a[distance=..1,gamemode=!creative,gamemode=!spectator,team=$(team1)] add picked_flag2
execute at @e[tag=ctf,tag=flag2,type=marker] as @a[tag=picked_flag1,distance=..1,gamemode=!creative,gamemode=!spectator] run function ctf:flag2/captured
execute as @e[type=minecraft:item_display,tag=flag2] at @s if entity @p[tag=picked_flag2,distance=..16] run function ctf:flag2/math