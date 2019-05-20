/*

import mods.jei.JEI;

// ~~~ Jetpacks ~~~

recipes.removeByMod("ironjetpacks");

JEI.removeAndHide(<ironjetpacks:basic_coil>);
JEI.removeAndHide(<ironjetpacks:advanced_coil>);
JEI.removeAndHide(<ironjetpacks:elite_coil>);
JEI.removeAndHide(<ironjetpacks:ultimate_coil>);


val strap = <ironjetpacks:strap>;

val leather = <ore:leather>;
val ironIngot = <ore:ingotIron>;
val enderPearl = <ore:enderpearl>;
val enderEye = <minecraft:ender_eye>;
val netherStar = <minecraft:nether_star>;
val redstoneEngBlk = <immersiveengineering:metal_decoration0:3>;
val ironComponent = <immersiveengineering:material:8>;
val steelComponent = <immersiveengineering:material:9>;
val vacuumTube = <immersiveengineering:material:26>;
val circuitBoard = <immersiveengineering:material:27>;
val lvCapacitor = <immersiveengineering:metal_device0>;
val mvCapacitor = <immersiveengineering:metal_device0:1>;
val hvCapacitor = <immersiveengineering:metal_device0:2>;
val copperCoil = <immersiveengineering:metal_decoration0>;
val electrumCoil = <immersiveengineering:metal_decoration0:1>;
val hvCoil = <immersiveengineering:metal_decoration0:2>;
val metalBarrel = <immersiveengineering:metal_device0:4>;
val fluidPump = <immersiveengineering:metal_device0:5>;
val fluidPipe = <immersiveengineering:metal_device1:6>;

recipes.addShaped("immersivejetpacks/strap", strap,
    [[null,    null,      null],
     [leather, ironIngot, leather],
     [null,    null,      null]]);


val jetpackTier1 = <ore:jetpackTier1>;
val jetpackTier2 = <ore:jetpackTier2>;
val jetpackTier3 = <ore:jetpackTier3>;

val copperJetpack = <ironjetpacks:copper_jetpack>;
val copperPlate = <ore:plateCopper>;
val copperFence = <immersiveposts:fence_copper>;
val copperCapacitor = <ironjetpacks:copper_capacitor>;
val copperThruster = <ironjetpacks:copper_thruster>;
val copperCell = <ironjetpacks:copper_cell>;

recipes.addShaped("immersivejetpacks/copper_jetpack", copperJetpack,
    [[copperPlate,    copperFence,     copperPlate],
     [copperCell,     strap,           copperCell],
     [copperThruster, copperCapacitor, copperThruster]]);
recipes.addShaped("immersivejetpacks/copper_cell", copperCell,
    [[copperPlate, vacuumTube,   copperPlate],
     [copperPlate, metalBarrel,  copperPlate],
     [copperPlate, circuitBoard, copperPlate]]);
recipes.addShaped("immersivejetpacks/copper_capacitor", copperCapacitor,
    [[copperPlate, lvCapacitor, copperPlate],
     [lvCapacitor, copperCoil,  lvCapacitor],
     [copperPlate, lvCapacitor, copperPlate]]);
recipes.addShaped("immersivejetpacks/copper_thruster", copperThruster,
    [[null,        fluidPump,  null],
     [copperPlate, enderPearl, copperPlate],
     [fluidPipe,   fluidPipe,  fluidPipe]]);


val ironJetpack = <ironjetpacks:iron_jetpack>;
val ironPlate = <ore:plateIron>;
val ironCapacitor = <ironjetpacks:iron_capacitor>;
val ironThruster = <ironjetpacks:iron_thruster>;
val ironCell = <ironjetpacks:iron_cell>;

recipes.addShaped("immersivejetpacks/iron_jetpack", ironJetpack,
    [[ironPlate,    ironComponent, ironPlate],
     [ironCell,     jetpackTier1,  ironCell],
     [ironThruster, ironCapacitor, ironThruster]]);
recipes.addShaped("immersivejetpacks/iron_cell", ironCell,
    [[ironPlate, vacuumTube,   ironPlate],
     [ironPlate, metalBarrel,  ironPlate],
     [ironPlate, circuitBoard, ironPlate]]);
recipes.addShaped("immersivejetpacks/iron_capacitor", ironCapacitor,
    [[ironPlate,   mvCapacitor,  ironPlate],
     [mvCapacitor, electrumCoil, mvCapacitor],
     [ironPlate,   mvCapacitor,  ironPlate]]);
recipes.addShaped("immersivejetpacks/iron_thruster", ironThruster,
    [[null,      fluidPump, null],
     [ironPlate, enderEye,  ironPlate],
     [fluidPipe, fluidPipe, fluidPipe]]);


val steelJetpack = <ironjetpacks:steel_jetpack>;
val steelPlate = <ore:plateSteel>;
val steelCapacitor = <ironjetpacks:steel_capacitor>;
val steelThruster = <ironjetpacks:steel_thruster>;
val steelCell = <ironjetpacks:steel_cell>;

recipes.addShaped("immersivejetpacks/steel_jetpack", steelJetpack,
    [[steelPlate,    steelComponent, steelPlate],
     [steelCell,     jetpackTier2,   steelCell],
     [steelThruster, steelCapacitor, steelThruster]]);
recipes.addShaped("immersivejetpacks/steel_cell", steelCell,
    [[steelPlate, vacuumTube,   steelPlate],
     [steelPlate, metalBarrel,  steelPlate],
     [steelPlate, circuitBoard, steelPlate]]);
recipes.addShaped("immersivejetpacks/steel_capacitor", steelCapacitor,
    [[steelPlate,  hvCapacitor, steelPlate],
     [hvCapacitor, hvCoil,      hvCapacitor],
     [steelPlate,  hvCapacitor, steelPlate]]);
recipes.addShaped("immersivejetpacks/steel_thruster", steelThruster,
    [[null,       fluidPump,  null],
     [steelPlate, netherStar, steelPlate],
     [fluidPipe,  fluidPipe,  fluidPipe]]);

*/