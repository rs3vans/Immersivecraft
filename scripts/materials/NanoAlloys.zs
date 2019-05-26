#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

val redstoneColor = Color.fromHex("8e0c0c");
val redstoneMat = MaterialSystem.getMaterialBuilder()
        .setName("Redstone Nanomaterial")
        .setColor(redstoneColor)
        .setHasEffect(true)
        .build();
redstoneMat.registerParts([ "dense_plate", "plate" ] as string[]);
