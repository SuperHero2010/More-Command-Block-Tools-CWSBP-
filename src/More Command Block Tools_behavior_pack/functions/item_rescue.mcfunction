tag @e[type=item,name="Command Block Sword"] add protected_item
tag @e[type=item,name="Command Block Pickaxe"] add protected_item
tag @e[type=item,name="Command Block Axe"] add protected_item
tag @e[type=item,name="Command Block Shovel"] add protected_item
tag @e[type=item,name="Command Block Hoe"] add protected_item
tag @e[type=item,name="Wooden Command Block Sword"] add protected_item
tag @e[type=item,name="Wooden Command Block Pickaxe"] add protected_item
tag @e[type=item,name="Wooden Command Block Axe"] add protected_item
tag @e[type=item,name="Wooden Command Block Shovel"] add protected_item
tag @e[type=item,name="Wooden Command Block Hoe"] add protected_item
tag @e[type=item,name="Stone Command Block Sword"] add protected_item
tag @e[type=item,name="Stone Command Block Pickaxe"] add protected_item
tag @e[type=item,name="Stone Command Block Axe"] add protected_item
tag @e[type=item,name="Stone Command Block Shovel"] add protected_item
tag @e[type=item,name="Stone Command Block Hoe"] add protected_item
tag @e[type=item,name="Iron Command Block Sword"] add protected_item
tag @e[type=item,name="Iron Command Block Pickaxe"] add protected_item
tag @e[type=item,name="Iron Command Block Axe"] add protected_item
tag @e[type=item,name="Iron Command Block Shovel"] add protected_item
tag @e[type=item,name="Iron Command Block Hoe"] add protected_item
tag @e[type=item,name="Golden Command Block Sword"] add protected_item
tag @e[type=item,name="Golden Command Block Pickaxe"] add protected_item
tag @e[type=item,name="Golden Command Block Axe"] add protected_item
tag @e[type=item,name="Golden Command Block Shovel"] add protected_item
tag @e[type=item,name="Golden Command Block Hoe"] add protected_item
tag @e[type=item,name="§dCopper Command Block Sword"] add protected_item
tag @e[type=item,name="§dCopper Command Block Pickaxe"] add protected_item
tag @e[type=item,name="§dCopper Command Block Axe"] add protected_item
tag @e[type=item,name="§dCopper Command Block Shovel"] add protected_item
tag @e[type=item,name="§dCopper Command Block Hoe"] add protected_item
tag @e[type=item,name="§5Lightning Copper Command Block Sword"] add protected_item
tag @e[type=item,name="§5Lightning Copper Command Block Pickaxe"] add protected_item
tag @e[type=item,name="§5Lightning Copper Command Block Axe"] add protected_item
tag @e[type=item,name="§5Lightning Copper Command Block Shovel"] add protected_item
tag @e[type=item,name="§5Lightning Copper Command Block Hoe"] add protected_item
tag @e[type=item,name="§dNetherite Command Block Sword"] add protected_item
tag @e[type=item,name="§dNetherite Command Block Pickaxe"] add protected_item
tag @e[type=item,name="§dNetherite Command Block Axe"] add protected_item
tag @e[type=item,name="§dNetherite Command Block Shovel"] add protected_item
tag @e[type=item,name="§dNetherite Command Block Hoe"] add protected_item

execute as @e[tag=protected_item] at @s if block ~ ~-1 ~ fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~-1 ~ soul_fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~-1 ~ lava run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~-1 ~ flowing_lava run tp @s @p

execute as @e[tag=protected_item] at @s if block ~ ~1 ~ fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~1 ~ soul_fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~1 ~ lava run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~1 ~ flowing_lava run tp @s @p

execute as @e[tag=protected_item] at @s if block ~1 ~ ~ fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~1 ~ ~ soul_fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~1 ~ ~ lava run tp @s @p
execute as @e[tag=protected_item] at @s if block ~1 ~ ~ flowing_lava run tp @s @p

execute as @e[tag=protected_item] at @s if block ~-1 ~ ~ fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~-1 ~ ~ soul_fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~-1 ~ ~ lava run tp @s @p
execute as @e[tag=protected_item] at @s if block ~-1 ~ ~ flowing_lava run tp @s @p

execute as @e[tag=protected_item] at @s if block ~ ~ ~1 fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~1 soul_fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~1 lava run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~1 flowing_lava run tp @s @p

execute as @e[tag=protected_item] at @s if block ~ ~ ~-1 fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~-1 soul_fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~-1 lava run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~-1 flowing_lava run tp @s @p

execute as @e[tag=protected_item] at @s if block ~ ~ ~ fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~ lava run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~ ~ flowing_lava run tp @s @p

execute as @e[tag=protected_item] at @s if block ~1 ~1 ~ fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~-1 ~1 ~ fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~1 ~1 fire run tp @s @p
execute as @e[tag=protected_item] at @s if block ~ ~1 ~-1 fire run tp @s @p

tag @e remove protected_item