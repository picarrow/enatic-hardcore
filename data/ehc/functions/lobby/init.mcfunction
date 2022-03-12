function ehc:lobby/init_skybox
function ehc:lobby/init_rules

function ehc:lobby/init_teams
function ehc:lobby/init_selections
scoreboard objectives add team_id trigger
scoreboard objectives setdisplay list team_id

scoreboard objectives add points totalKillCount {"text":"Points", "color":"red"}
scoreboard objectives setdisplay belowName points

scoreboard players set $var state 1
