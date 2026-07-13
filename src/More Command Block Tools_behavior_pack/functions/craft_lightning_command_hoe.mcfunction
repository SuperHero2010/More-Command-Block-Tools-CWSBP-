execute at @e[type=item,name="§dCopper Command Block Hoe",r=2] run summon lightning_bolt
kill @e[type=item,name="§dCopper Command Block Hoe",r=2]
kill @e[type=item,name="Lightning Rod",r=2]
give @p witherstormmod:lightning_copper_command_block_hoe 1
particle minecraft:electric_spark ~~~
playsound ambient.weather.thunder @a[r=10]