worldborder warning distance 0
worldborder warning time 180
worldborder set 256 1800
scoreboard objectives add border_size dummy
execute store result score $var border_size run worldborder get

execute at @a run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 0.75 1
tellraw @a {"text":"The World Border is now shrinking!", "color":"yellow"}
tellraw @a {"text":"You will no longer respawn, and traveling to and from The Nether is no longer safe.", "color":"yellow"}

scoreboard players set $var state 3
