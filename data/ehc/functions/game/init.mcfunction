team leave $Aqua
team leave $Dark_Aqua
team leave $Blue
team leave $Dark_Blue
team leave $Purple
team leave $Dark_Purple
team leave $Red
team leave $Dark_Red
team leave $Yellow
team leave $Dark_Yellow
team leave $Green
team leave $Dark_Green
team empty dark_gray

scoreboard objectives remove selections
scoreboard objectives remove points

scoreboard objectives add competing dummy
scoreboard players set @a[scores={team_id=0..12}] competing 1
scoreboard objectives remove team_id

gamemode survival @a[scores={competing=1}]
effect clear @a[scores={competing=1}]
clear @a[scores={competing=1}]
experience set @a[scores={competing=1}] 0 points
experience set @a[scores={competing=1}] 0 levels

function ehc:game/init_rules
function ehc:game/init_border
time set 1000

scoreboard objectives add on_death deathCount

scoreboard objectives add hp health
scoreboard objectives modify hp rendertype hearts
scoreboard objectives setdisplay list hp

scoreboard objectives add kills playerKillCount {"text":"Kills", "color":"red"}
scoreboard objectives setdisplay belowName kills

effect give @a[scores={competing=1}] minecraft:resistance 60 255 true
spreadplayers 0.0 0.0 256 960 true @a[scores={competing=1}]
execute at @a[scores={competing=1}] run particle minecraft:portal ~ ~0.5 ~ 0.25 0.75 0.25 0 256 normal
execute at @a[scores={competing=1}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75 0

forceload add -1 -1 1 1
fill -16 249 -16 15 255 15 minecraft:air replace
forceload remove -1 -1 1 1

scoreboard objectives add forfeit trigger

scoreboard players set $var state 2
schedule function ehc:finale/init 5400s
