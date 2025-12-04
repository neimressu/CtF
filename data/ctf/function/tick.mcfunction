function ctf:real_tick with storage ctf:data

execute as @e[tag=ctf,type=marker] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=ctf,type=marker] at @s run particle end_rod ^ ^ ^1 .1 .1 .1 0 1 force @a[distance=..32]

execute as @p[tag=picked_flag1,nbt={Health:0f}] run function ctf:flag2/return_flag
execute as @p[tag=picked_flag2,nbt={Health:0f}] run function ctf:flag1/return_flag

execute as @a[tag=picked_flag1] run effect give @s glowing 1 0 true
execute as @e[tag=ctf,tag=flag1,type=item_display] if entity @p[tag=picked_flag1] run effect give @s glowing 1 0 true
execute as @a[tag=picked_flag2] run effect give @s glowing 1 0 true