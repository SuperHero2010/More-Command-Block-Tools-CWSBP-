execute at @e[type=item,name="§dCopper Command Block Shovel",r=2] run summon lightning_bolt
kill @e[type=item,name="§dCopper Command Block Shovel",r=2]
kill @e[type=item,name="Lightning Rod",r=2]
give @p witherstormmod:lightning_copper_command_block_shovel 1
particle minecraft:electric_spark ~~~
playsound ambient.weather.thunder @a[r=10]