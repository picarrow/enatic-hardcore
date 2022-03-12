scoreboard players add @a competing 0
gamemode spectator @e[type=player,gamemode=!creative,scores={competing=0}]

scoreboard players reset @a[scores={competing=0}] on_death
execute at @a[scores={on_death=1}] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1.3 1
scoreboard players set @a[scores={on_death=1}] on_death 2
spreadplayers 0.0 0.0 16 1008 true @e[type=player,scores={on_death=2}]
execute at @e[type=player,scores={on_death=2}] run particle minecraft:portal ~ ~0.5 ~ 0.25 0.75 0.25 0 256 normal
execute at @e[type=player,scores={on_death=2}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75 0
tellraw @e[type=player,scores={on_death=2}] [{"text":"Type \"", "color":"yellow"},{"text":"/trigger forfeit set 1", "color":"gray"},{"text":"\" to spectate.", "color":"yellow"}]
scoreboard players reset @e[type=player] on_death

scoreboard players enable @a[scores={competing=1}] forfeit
scoreboard players set @a[scores={forfeit=1}] competing 0
tellraw @a[scores={forfeit=..-1}] [{"text":"Forfeit", "color":"gray"},{"text":" must be either 0 or 1.", "color":"red"}]
tellraw @a[scores={forfeit=2..}] [{"text":"Forfeit", "color":"gray"},{"text":" must be either 0 or 1.", "color":"red"}]
scoreboard players set @a[scores={forfeit=..-1}] forfeit 0
scoreboard players set @a[scores={forfeit=2..}] forfeit 0
