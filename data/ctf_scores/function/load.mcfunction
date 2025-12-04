scoreboard objectives add score dummy
scoreboard players add t1 score 0
scoreboard players add t2 score 0
scoreboard players add #max score 0
execute if score #max score matches 0 run scoreboard players set #max score 1