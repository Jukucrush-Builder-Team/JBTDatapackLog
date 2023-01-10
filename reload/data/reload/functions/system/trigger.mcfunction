execute if entity @a[scores={datapack.reload.settings=16969}] run scoreboard players add warntime datapack.reload.warn 1
execute if entity @a[scores={datapack.reload.settings=26969}] run scoreboard players remove warntime datapack.reload.warn 1
execute as @a[scores={datapack.reload.settings=1..}] at @s run function reload:settings
scoreboard players reset @a[scores={datapack.reload.settings=1..}] datapack.reload.settings