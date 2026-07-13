execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_sword,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_pickaxe,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_axe,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_shovel,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_hoe,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_copper_command_block_sword,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_copper_command_block_pickaxe,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_copper_command_block_axe,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_copper_command_block_shovel,location=slot.weapon.mainhand}] run tag @s add lightning_wielder
execute as @a at @s if entity @s[hasitem={item=witherstormmod:lightning_copper_command_block_hoe,location=slot.weapon.mainhand}] run tag @s add lightning_wielder

execute as @a[tag=lightning_wielder] at @s run execute as @e[type=!item,type=!xp_orb,type=!arrow,type=!lightning_bolt,type=!wither,type=!ender_dragon,type=!witherstormmod:wither_storm,type=!witherstormmod:command_block,type=!witherstormmod:command_blockbowels,type=!witherstormmod:command_blocktentacle,type=!witherstormmod:tentacle,type=!bowels:withered_symbiont,type=!misc:wither_storm_head_asleep,type=!witherstormmod:wither_storm_head,type=!witherstormmod:withered_symbiont,r=3,tag=!lightning_wielder] at @s run damage @s 1

tag @a remove lightning_wielder