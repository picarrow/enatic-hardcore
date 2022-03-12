scoreboard players add @a competing 0
gamemode spectator @e[type=player,gamemode=!creative,scores={competing=0}]

scoreboard players reset @a[scores={competing=0}] on_death
execute at @a[scores={on_death=1}] run summon minecraft:lightning_bolt 0.0 511 0.0
execute at @a[scores={on_death=1}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
scoreboard players set @a[scores={on_death=1}] competing 0

scoreboard players enable @a[scores={competing=1}] forfeit
scoreboard players set @a[scores={forfeit=1}] competing 0
tellraw @a[scores={forfeit=..-1}] [{"text":"Forfeit", "color":"gray"},{"text":" must be either 0 or 1.", "color":"red"}]
tellraw @a[scores={forfeit=2..}] [{"text":"Forfeit", "color":"gray"},{"text":" must be either 0 or 1.", "color":"red"}]
scoreboard players set @a[scores={forfeit=..-1}] forfeit 0
scoreboard players set @a[scores={forfeit=2..}] forfeit 0

execute store result score $var border_size run worldborder get
execute if score $var border_size matches ..256 run effect give @a[scores={competing=1}] minecraft:glowing 60 0 true
execute if score $var border_size matches ..256 run kill @a[scores={competing=1},nbt={Dimension:"minecraft:the_nether"}]
execute if score $var border_size matches ..256 run kill @a[scores={competing=1},nbt={Dimension:"minecraft:the_end"}]
