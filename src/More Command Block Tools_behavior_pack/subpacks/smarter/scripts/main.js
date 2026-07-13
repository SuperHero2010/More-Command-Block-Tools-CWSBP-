import { world } from "@minecraft/server";

world.afterEvents.entityHitEntity.subscribe((event) => {
    const player = event.damagingEntity;
    const target = event.hitEntity;

    if (!player || player.typeId !== "minecraft:player") return;
    if (!target || target.typeId === "minecraft:player") return;

    const bossEntities = [
        "minecraft:wither",
        "minecraft:ender_dragon",
        "witherstormmod:wither_storm",
        "witherstormmod:command_block",
        "witherstormmod:command_blockbowels",
        "witherstormmod:command_blocktentacle",
        "witherstormmod:tentacle",
        "bowels:withered_symbiont",
        "misc:wither_storm_head_asleep",
        "witherstormmod:wither_storm_head_death",
        "witherstormmod:wither_storm_head",
        "witherstormmod:wither_storm_play_dead",
        "witherstormmod:wither_storm_severed_dead",
        "witherstormmod:withered_symbiont"
    ];

    if (bossEntities.includes(target.typeId)) return;

    const equipment = player.getComponent("minecraft:equippable");
    if (!equipment) return;

    const mainhand = equipment.getEquipment("Mainhand");
    if (!mainhand) return;

    const itemId = mainhand.typeId;
    const lightningWeapons = [
        "witherstormmod:lightning_sword",
        "witherstormmod:lightning_pickaxe",
        "witherstormmod:lightning_axe",
        "witherstormmod:lightning_shovel",
        "witherstormmod:lightning_hoe",
        "witherstormmod:lightning_copper_command_block_sword",
        "witherstormmod:lightning_copper_command_block_pickaxe",
        "witherstormmod:lightning_copper_command_block_axe", 
        "witherstormmod:lightning_copper_command_block_shovel",
        "witherstormmod:lightning_copper_command_block_hoe"
    ];

    if (!lightningWeapons.includes(itemId)) return;

    const safePosition = {
        x: target.location.x,
        y: target.location.y + 1,
        z: target.location.z
    };

    target.dimension.spawnEntity("minecraft:lightning_bolt", safePosition);

    target.applyDamage(5, { 
        cause: "entityAttack", 
        damagingEntity: player 
    });

    player.playSound("ambient.weather.thunder");
});

const cooldownMap = new Map(); 
world.beforeEvents.itemUseOn.subscribe((event) => { 
    try { 
        const player = event.source; 
        const block = event.block; 
        const item = event.itemStack; 

        let copper = false; 
        let copperCommand = false; 

        if (item?.typeId?.includes("copper_")) { 
            copper = true; 
        } else if (item?.typeId?.includes("copper_command_block_")) { 
            copperCommand = true; 
        } 

        if (block?.typeId !== "minecraft:lightning_rod") return; 

        event.cancel = true; 

        const now = Date.now(); 
        const lastCraft = cooldownMap.get(player.id); 
        if (lastCraft && (now - lastCraft) < 1000) return; 
        cooldownMap.set(player.id, now); 

        let lightningTool = "";

        if (copper) {
            const toolType = item.typeId.replace("minecraft:copper_", ""); 
            lightningTool = `witherstormmod:lightning_${toolType}`; 
        } else if (copperCommand) {
            const commandToolType = item.typeId.replace("witherstormmod:lightning_copper_command_block_", ""); 
            lightningTool = `witherstormmod:lightning_copper_command_block_${commandToolType}`; 
        } else {
            return;
        }

        const playerName = player.name; 

        player.dimension.runCommandAsync(`clear "${playerName}" ${item.typeId} -1 1`) 
            .then(() => { 
                return player.dimension.runCommandAsync(`give "${playerName}" ${lightningTool} 1`); 
            }) 
            .then(() => { 
                player.dimension.spawnParticle("minecraft:electric_spark", block.location); 
                player.playSound("ambient.weather.thunder"); 
            }) 
            .catch(() => {}); 

    } catch (e) {
        console.error("Crafting error:", e);
    }
});