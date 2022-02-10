#summon armorstand for new MDatatrashcan(requirement: minecraft:cauldron ~ ~-1 ~ under your feet, bedrock ~ ~-3 ~ block under your feet)
execute positioned as @a[sort=random,limit=1,tag=DEV,gamemode=creative] if block ~ ~-1 ~ cauldron if block ~ ~-3 ~ bedrock unless entity @e[type=armor_stand,name="MDatatrashcan",distance=..1] align xyz run summon armor_stand ~.5 ~ ~.5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"MDatatrashcan"}',DisabledSlots:4144959}
execute positioned as @e[type=armor_stand,name="MDatatrashcan"] run particle flame ~ ~-.5 ~ .35 .25 .35 0 1 normal @a[tag=DEV,gamemode=creative]

#Main thing
execute at @e[type=armor_stand,name="MDatatrashcan"] if entity @e[type=item,distance=0.5..0.75] run playsound block.fire.extinguish master @a ~ ~ ~ .5 1
execute at @e[type=armor_stand,name="MDatatrashcan"] if entity @e[type=item,distance=0.5..0.75] run particle minecraft:lava ~ ~ ~ 0 0 0 0 5 normal @a
execute as @e[type=armor_stand,name="MDatatrashcan"] at @s run tp @e[type=item,limit=1,sort=random,distance=..0.75] ~ ~ ~
execute at @e[type=armor_stand,name="MDatatrashcan",limit=1,sort=random] run kill @e[type=item,distance=..0.01]

#display particle
execute as @e[type=minecraft:armor_stand,name="MDatatrashcan"] at @s run function mdatatrashcan:trashcanrecycleparticle

#armorstand rotation rotation
execute as @e[type=minecraft:armor_stand,name="MDatatrashcan"] at @s run tp @s ~ ~ ~ ~2.5 0

#kill if it block gone
execute as @e[type=armor_stand,name="MDatatrashcan",limit=1,sort=random] positioned as @s unless block ~ ~-1 ~ cauldron run kill @s