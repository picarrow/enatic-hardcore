tellraw @a {"text":"Installing Enatic Hardcore...","color":"yellow"}
scoreboard objectives add state dummy
function ehc:lobby/init
tellraw @a {"text":"Enatic Hardcore installed.", "color":"yellow"}
tellraw @a [{"text":"Type \"", "color":"yellow"},{"text":"/trigger team_id set [team ID]", "color":"gray"},{"text":"\" to join a team.", "color":"yellow"}]
