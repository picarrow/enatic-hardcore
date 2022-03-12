gamemode survival @e[type=player,gamemode=spectator]
execute at @a run tp @a[gamemode=!creative,y=0,dy=249] 0.0 250 0.0

effect give @a minecraft:regeneration 60 2 true
effect give @a minecraft:saturation 60 19 true
effect give @a minecraft:resistance 60 255 true

scoreboard players enable @a team_id
team join aqua @a[scores={team_id=12}]
team join dark_aqua @a[scores={team_id=11}]
team join blue @a[scores={team_id=10}]
team join dark_blue @a[scores={team_id=9}]
team join purple @a[scores={team_id=8}]
team join dark_purple @a[scores={team_id=7}]
team join red @a[scores={team_id=6}]
team join dark_red @a[scores={team_id=5}]
team join yellow @a[scores={team_id=4}]
team join dark_yellow @a[scores={team_id=3}]
team join green @a[scores={team_id=2}]
team join dark_green @a[scores={team_id=1}]
team leave @a[scores={team_id=0}]
team join dark_gray @a[scores={team_id=-1}]
tellraw @a[scores={team_id=..-2}] [{"text":"Team ID", "color":"gray"},{"text":" must be an integer from -1 to 12.", "color":"red"}]
tellraw @a[scores={team_id=13..}] [{"text":"Team ID", "color":"gray"},{"text":" must be an integer from -1 to 12.", "color":"red"}]
scoreboard players set @a[scores={team_id=..-2}] team_id 0
scoreboard players set @a[scores={team_id=13..}] team_id 0
