#scoreboard operation
execute unless score warn datapack.reload.warn matches 0.. run scoreboard players operation warn datapack.reload.warn = warntime datapack.reload.warn

#title
execute unless score warn datapack.reload.warn matches ..0 run title @a title [{"text": "[Datapack Reload]","color": "red","bold": false}]

execute as @a positioned as @s run playsound ui.button.click master @s ~ ~ ~ .5 0 .5

execute if score warn datapack.reload.warn matches 1.. run title @a subtitle [{"text": "In ","color": "red"},{"score":{"name":"warn","objective":"datapack.reload.warn"},"color": "red"},{"text": " second","color": "red"}]
execute if score warn datapack.reload.warn matches ..0 run title @a subtitle [{"text": "Reloading....","color": "red","bold": false}]
execute if score warn datapack.reload.warn matches ..0 run datapack disable "vanilla"
execute if score warn datapack.reload.warn matches ..0 run datapack enable "vanilla"
execute if score warn datapack.reload.warn matches ..0 as @a positioned as @s run playsound entity.player.levelup master @a ~ ~ ~ .5 0 .5
execute if score warn datapack.reload.warn matches ..0 run title @a title [{"text":"[Datapack Reloaded]","color": "green"}]
execute if score warn datapack.reload.warn matches ..0 run title @a subtitle [{"text":"Successfully!","color": "green"}]

execute if score warn datapack.reload.warn = warntime datapack.reload.warn as @a positioned as @s run playsound item.goat_horn.sound.0 master @s ~ ~ ~ 1 2 1

execute if score warn datapack.reload.warn matches 1.. run schedule function reload:reload 1s replace
scoreboard players remove warn datapack.reload.warn 1