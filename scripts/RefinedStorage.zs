#modloaded refinedstorage
#modloaded immersiveengineering
#modloaded immersivecables

import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.MetalPress;

val packingMold3x3 = <immersiveengineering:mold:6>;
val unpackingMold = <immersiveengineering:mold:7>;

recipes.removeByMod("refinedstorage");

furnace.remove(<refinedstorage:silicon>);
furnace.remove(<refinedstorage:processor:3>);
furnace.remove(<refinedstorage:processor:4>);
furnace.remove(<refinedstorage:processor:5>);

JEI.removeAndHide(<refinedstorage:silicon>);
JEI.removeAndHide(<refinedstorage:disk_drive>);
JEI.removeAndHide(<refinedstorage:cable>);
JEI.removeAndHide(<refinedstorage:storage>);
JEI.removeAndHide(<refinedstorage:storage:1>);
JEI.removeAndHide(<refinedstorage:storage:2>);
JEI.removeAndHide(<refinedstorage:storage:3>);
JEI.removeAndHide(<refinedstorage:storage:4>);
JEI.removeAndHide(<refinedstorage:fluid_storage>);
JEI.removeAndHide(<refinedstorage:fluid_storage:1>);
JEI.removeAndHide(<refinedstorage:fluid_storage:2>);
JEI.removeAndHide(<refinedstorage:fluid_storage:3>);
JEI.removeAndHide(<refinedstorage:fluid_storage:4>);
JEI.removeAndHide(<refinedstorage:fluid_interface>);
JEI.removeAndHide(<refinedstorage:interface>);
JEI.removeAndHide(<refinedstorage:relay>);
JEI.removeAndHide(<refinedstorage:detector>);
JEI.removeAndHide(<refinedstorage:writer>);
JEI.removeAndHide(<refinedstorage:reader>);
JEI.removeAndHide(<refinedstorage:destructor>);
JEI.removeAndHide(<refinedstorage:constructor>);
JEI.removeAndHide(<refinedstorage:disk_manipulator>);
JEI.removeAndHide(<refinedstorage:network_transmitter>);
JEI.removeAndHide(<refinedstorage:network_receiver>);
JEI.removeAndHide(<refinedstorage:storage_disk>);
JEI.removeAndHide(<refinedstorage:storage_disk:1>);
JEI.removeAndHide(<refinedstorage:storage_disk:2>);
JEI.removeAndHide(<refinedstorage:storage_disk:3>);
JEI.removeAndHide(<refinedstorage:storage_disk:4>);
JEI.removeAndHide(<refinedstorage:fluid_storage_disk>);
JEI.removeAndHide(<refinedstorage:fluid_storage_disk:1>);
JEI.removeAndHide(<refinedstorage:fluid_storage_disk:2>);
JEI.removeAndHide(<refinedstorage:fluid_storage_disk:3>);
JEI.removeAndHide(<refinedstorage:fluid_storage_disk:4>);
JEI.removeAndHide(<refinedstorage:grid:2>);
JEI.removeAndHide(<refinedstorage:pattern>);
JEI.removeAndHide(<refinedstorage:storage_part>);
JEI.removeAndHide(<refinedstorage:storage_part:1>);
JEI.removeAndHide(<refinedstorage:storage_part:2>);
JEI.removeAndHide(<refinedstorage:storage_part:3>);
JEI.removeAndHide(<refinedstorage:crafter_manager>);
JEI.removeAndHide(<refinedstorage:crafting_monitor>);
JEI.removeAndHide(<refinedstorage:fluid_storage_part>);
JEI.removeAndHide(<refinedstorage:fluid_storage_part:1>);
JEI.removeAndHide(<refinedstorage:fluid_storage_part:2>);
JEI.removeAndHide(<refinedstorage:fluid_storage_part:3>);
JEI.removeAndHide(<refinedstorage:wireless_grid>);
JEI.removeAndHide(<refinedstorage:wireless_grid:1>);
JEI.removeAndHide(<refinedstorage:wireless_fluid_grid>);
JEI.removeAndHide(<refinedstorage:wireless_fluid_grid:1>);
JEI.removeAndHide(<refinedstorage:wireless_crafting_monitor>);
JEI.removeAndHide(<refinedstorage:wireless_crafting_monitor:1>);
JEI.removeAndHide(<refinedstorage:crafter>);
JEI.removeAndHide(<refinedstorage:upgrade:1>);
JEI.removeAndHide(<refinedstorage:upgrade:3>);
JEI.removeAndHide(<refinedstorage:upgrade:5>);
JEI.removeAndHide(<refinedstorage:upgrade:6>);
JEI.removeAndHide(<refinedstorage:upgrade:7>);
JEI.removeAndHide(<refinedstorage:upgrade:8>);
JEI.removeAndHide(<refinedstorage:upgrade:9>);
JEI.removeAndHide(<refinedstorage:network_card>);
JEI.removeAndHide(<refinedstorage:wireless_transmitter>);
JEI.removeAndHide(<refinedstorage:storage_housing>);
JEI.removeAndHide(<refinedstorage:portable_grid>);
JEI.removeAndHide(<refinedstorage:portable_grid:1>);
JEI.removeAndHide(<refinedstorage:security_manager>);
JEI.removeAndHide(<refinedstorage:security_card>);
JEI.removeAndHide(<refinedstorage:wrench>);
JEI.removeAndHide(<refinedstorage:processor_binding>);
JEI.removeAndHide(<refinedstorage:processor>);
JEI.removeAndHide(<refinedstorage:processor:1>);
JEI.removeAndHide(<refinedstorage:processor:2>);
JEI.removeAndHide(<refinedstorage:processor:3>);
JEI.removeAndHide(<refinedstorage:processor:4>);
JEI.removeAndHide(<refinedstorage:processor:5>);
JEI.removeAndHide(<refinedstorage:core>);
JEI.removeAndHide(<refinedstorage:core:1>);
JEI.removeAndHide(<refinedstorage:cutting_tool>);
JEI.removeAndHide(<refinedstorage:cover>);
JEI.removeAndHide(<refinedstorage:hollow_cover>);

// Remove AE2 versions of things
JEI.removeAndHide(<immersivecables:coil_block>);
JEI.removeAndHide(<immersivecables:coil_block:1>);
JEI.removeAndHide(<immersivecables:coil_block:2>);
JEI.removeAndHide(<immersivecables:wire_coil>);
JEI.removeAndHide(<immersivecables:wire_coil:1>);
JEI.removeAndHide(<immersivecables:wire_coil:2>);

val quartzCoil = <immersivecables:wire_coil:3>;
val quartzCoilBlock = <immersivecables:coil_block:3>;

// Quartz-enriched iron
val quartz = <ore:gemQuartz>;
val iron = <ore:dustIron>;
val quartzIron = <refinedstorage:quartz_enriched_iron>;
val quartzIronBlk = <refinedstorage:quartz_enriched_iron_block>;
AlloySmelter.addRecipe(quartzIron, iron, quartz, 200);
ArcFurnace.addRecipe(quartzIron * 2, iron * 2, null, 100, 512, [ quartz ]);
MetalPress.addRecipe(quartzIronBlk, quartzIron, packingMold3x3, 2048, 9);
MetalPress.addRecipe(quartzIron * 9, quartzIronBlk, unpackingMold, 2048);

// Machine casing
val machineCasing = <refinedstorage:machine_casing>;
val steelPlate = <ore:plateSteel>;
recipes.addShaped(machineCasing,
        [[steelPlate, quartzIron,      steelPlate],
         [quartzIron, quartzCoilBlock, quartzIron],
         [steelPlate, quartzIron,      steelPlate]]);

// Controller
val controller = <refinedstorage:controller>;
val circuitBoard = <immersiveengineering:material:27>;
val redstoneEngBlk = <immersiveengineering:metal_decoration0:3>;
val heavyEngBlk = <immersiveengineering:metal_decoration0:5>;
recipes.addShaped(controller,
        [[quartzIron,  redstoneEngBlk, quartzIron],
         [heavyEngBlk, machineCasing,  heavyEngBlk],
         [quartzIron,  circuitBoard,   quartzIron]]);

// Grid
val grid = <refinedstorage:grid>;
val glassPane = <ore:paneGlassColorless>;
val lightEngBlk = <immersiveengineering:metal_decoration0:4>;
recipes.addShaped(grid,
        [[lightEngBlk, redstoneEngBlk, glassPane],
         [quartzIron,  machineCasing,  glassPane],
         [lightEngBlk, circuitBoard,   glassPane]]);

// Storage monitor
val storageMonitor = <refinedstorage:storage_monitor>;
val barrel = <immersiveengineering:wooden_device0:0>;
recipes.addShaped(storageMonitor,
        [[barrel,     redstoneEngBlk, glassPane],
         [quartzIron, machineCasing,  glassPane],
         [barrel,     circuitBoard,   glassPane]]);

// External storage
val externalStorage = <refinedstorage:external_storage>;
recipes.addShaped(externalStorage,
        [[redstoneEngBlk, quartzIron,  lightEngBlk],
         [barrel,         quartzCoil,   barrel],
         [quartzIron,     circuitBoard, quartzIron]]);

// Crafting grid
val craftingGrid = <refinedstorage:grid:1>;
val enderPearl = <ore:enderpearl>;
val craftingTable = <ore:craftingTableWood>;
recipes.addShapeless(craftingGrid,
        [grid, circuitBoard, enderPearl, craftingTable]);

// Fluid grid
val fluidGrid = <refinedstorage:grid:3>;
val bucket = <minecraft:bucket>;
recipes.addShapeless(fluidGrid,
        [grid, circuitBoard, enderPearl, bucket]);

// Importer
val importer = <refinedstorage:importer>;
val enderEye = <minecraft:ender_eye>;
val hopper = <minecraft:hopper>;
recipes.addShapeless(importer,
        [externalStorage, circuitBoard, enderEye, hopper]);

// Importer
val exporter = <refinedstorage:exporter>;
val dropper = <minecraft:dropper>;
recipes.addShapeless(exporter,
        [externalStorage, circuitBoard, enderEye, dropper]);

// Upgrades
val upgrade = <refinedstorage:upgrade>;
val speedUpgrade = <refinedstorage:upgrade:2>;
val stackUpgrade = <refinedstorage:upgrade:4>;
val netherStar = <minecraft:nether_star>;
val lubricant = <forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000});
val napalm = <forge:bucketfilled>.withTag({FluidName: "napalm", Amount: 1000});
recipes.addShaped(upgrade,
        [[quartzIron, glassPane,   quartzIron],
         [quartzIron, netherStar,  quartzIron],
         [quartzIron, circuitBoard, quartzIron]]);
recipes.addShapeless(speedUpgrade,
        [upgrade, enderEye, lubricant.transformReplace(bucket)]);
recipes.addShapeless(stackUpgrade,
        [upgrade, enderEye, napalm.transformReplace(bucket)]);

// Filter
val filter = <refinedstorage:filter>;
val paper = <ore:paper>;
val itemRouter = <immersiveengineering:wooden_device0:3>;
recipes.addShaped(filter,
        [[null,       quartzIron, null],
         [quartzIron, itemRouter, quartzIron],
         [null,       quartzIron, null]]);
