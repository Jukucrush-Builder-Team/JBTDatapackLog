tellraw @a[tag=DEV] [{"text": "==Datapack Reload==","color": "gold","bold": true},{"text": "\nBy ","color": "white","bold": true},{"text":"MinenolM","color": "green","bold": true,"hoverEvent": {"action": "show_text","value": [{"text":"[Click Here] Youtube Channel","color": "red"}]},"clickEvent": {"action": "open_url","value": "https://www.youtube.com/channel/UCIhwBnBDz9UYuorl7JJyq4A"}},{"text": "\n- Loaded Successfully...","color": "green","bold": false},{"text": "\n==================="}]

scoreboard objectives add datapack.reload.warn dummy
scoreboard objectives add datapack.reload.settings trigger
execute unless score warntime datapack.reload.warn matches 1.. run scoreboard players set warntime datapack.reload.warn 5