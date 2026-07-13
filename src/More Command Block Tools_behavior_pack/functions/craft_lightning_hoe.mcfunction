execute at @e[type=item,name="Copper Hoe",r=2] run summon lightning_bolt
kill @e[type=item,name="Copper Hoe",r=2]
kill @e[type=item,name="Lightning Rod",r=2]
give @p witherstormmod:lightning_hoe 1
particle minecraft:electric_spark ~~~
playsound ambient.weather.thunder @a[r=10]