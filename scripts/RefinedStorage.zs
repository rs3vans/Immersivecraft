#modloaded refinedstorage
#modloaded immersiveengineering
#modloaded immersivecables
#priority 2

import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Blueprint;

recipes.removeByMod("immersivecables");
recipes.removeByMod("refinedstorage");
recipes.removeByMod("refinedstorageaddons");

<ore:itemSilicon>.remove(<refinedstorage:silicon>);

furnace.remove(<refinedstorage:silicon>);
furnace.remove(<refinedstorage:processor:3>);
furnace.remove(<refinedstorage:processor:4>);
furnace.remove(<refinedstorage:processor:5>);

JEI.removeAndHide(<refinedstorage:quartz_enriched_iron>);
JEI.removeAndHide(<refinedstorage:quartz_enriched_iron_block>);
JEI.removeAndHide(<refinedstorage:silicon>);
JEI.removeAndHide(<refinedstorage:controller:1>);
JEI.removeAndHide(<refinedstorage:storage:4>);
JEI.removeAndHide(<refinedstorage:fluid_storage:4>);
JEI.removeAndHide(<refinedstorage:storage_disk:4>);
JEI.removeAndHide(<refinedstorage:fluid_storage_disk:4>);
JEI.removeAndHide(<refinedstorage:wireless_grid:1>);
JEI.removeAndHide(<refinedstorageaddons:wireless_crafting_grid:1>);
JEI.removeAndHide(<refinedstorage:wireless_fluid_grid:1>);
JEI.removeAndHide(<refinedstorage:wireless_crafting_monitor:1>);
JEI.removeAndHide(<refinedstorage:portable_grid:1>);
JEI.removeAndHide(<refinedstorage:wrench>);
JEI.removeAndHide(<refinedstorage:core>);
JEI.removeAndHide(<refinedstorage:core:1>);
JEI.removeAndHide(<refinedstorage:cutting_tool>);
JEI.removeAndHide(<refinedstorage:processor_binding>);
JEI.removeAndHide(<refinedstorage:processor:0>);
JEI.removeAndHide(<refinedstorage:processor:1>);
JEI.removeAndHide(<refinedstorage:processor:2>);
JEI.removeAndHide(<refinedstorage:processor:3>);
JEI.removeAndHide(<refinedstorage:processor:4>);
JEI.removeAndHide(<refinedstorage:processor:5>);

JEI.removeAndHide(<refinedstorage:cover>.withTag({Item: {id: "minecraft:stonebrick", Count: 1 as byte, Damage: 0 as short}}));
JEI.removeAndHide(<refinedstorage:hollow_cover>.withTag({Item: {id: "minecraft:stonebrick", Count: 1 as byte, Damage: 0 as short}}));

// Remove AE2 versions of things
JEI.removeAndHide(<immersivecables:coil_block>);
JEI.removeAndHide(<immersivecables:coil_block:1>);
JEI.removeAndHide(<immersivecables:coil_block:2>);
JEI.removeAndHide(<immersivecables:wire_coil>);
JEI.removeAndHide(<immersivecables:wire_coil:1>);
JEI.removeAndHide(<immersivecables:wire_coil:2>);

val refinedCoil = <immersivecables:wire_coil:3>;
val refinedCoilBlock = <immersivecables:coil_block:3>;
val refinedTransformer = <immersivecables:transformer_refined>;
val refinedRelay = <immersivecables:relay_refined>;

val cable = <refinedstorage:cable>;
val machineCasing = <refinedstorage:machine_casing>;
val controller = <refinedstorage:controller>;
val grid = <refinedstorage:grid>;
val craftingGrid = <refinedstorage:grid:1>;
val patternGrid = <refinedstorage:grid:2>;
val fluidGrid = <refinedstorage:grid:3>;
val portableGrid = <refinedstorage:portable_grid>;
val storageMonitor = <refinedstorage:storage_monitor>;
val craftingMonitor = <refinedstorage:crafting_monitor>;
val wirelessGrid = <refinedstorage:wireless_grid>;
val wirelessCraftingGrid = <refinedstorageaddons:wireless_crafting_grid>;
val wirelessFluidGrid = <refinedstorage:wireless_fluid_grid>;
val wirelessCraftingMonitor = <refinedstorage:wireless_crafting_monitor>;
val wirelessTransmitter = <refinedstorage:wireless_transmitter>;
val diskDrive = <refinedstorage:disk_drive>;
val diskManipulator = <refinedstorage:disk_manipulator>;
val securityManager = <refinedstorage:security_manager>;
val crafter = <refinedstorage:crafter>;
val crafterManager = <refinedstorage:crafter_manager>;
val networkTransmitter = <refinedstorage:network_transmitter>;
val networkReceiver = <refinedstorage:network_receiver>;
val importer = <refinedstorage:importer>;
val exporter = <refinedstorage:exporter>;
val externalStorage = <refinedstorage:external_storage>;
val constructor = <refinedstorage:constructor>;
val destructor = <refinedstorage:destructor>;
val reader = <refinedstorage:reader>;
val writer = <refinedstorage:writer>;
val interface = <refinedstorage:interface>;
val fluidInterface = <refinedstorage:fluid_interface>;
val relay = <refinedstorage:relay>;
val detector = <refinedstorage:detector>;
val upgrade = <refinedstorage:upgrade>;
val speedUpgrade = <refinedstorage:upgrade:2>;
val stackUpgrade = <refinedstorage:upgrade:4>;
val craftingUpgrade = <refinedstorage:upgrade:3>;
val rangeUpgrade = <refinedstorage:upgrade:1>;
val silkTouchUpgrade = <refinedstorage:upgrade:6>;
val fortuneIUpgrade = <refinedstorage:upgrade:7>;
val fortuneIIUpgrade = <refinedstorage:upgrade:8>;
val fortuneIIIUpgrade = <refinedstorage:upgrade:9>;
val filter = <refinedstorage:filter>;
val pattern = <refinedstorage:pattern>;
val networkCard = <refinedstorage:network_card>;
val securityCard = <refinedstorage:security_card>;
val storageHousing = <refinedstorage:storage_housing>;
val storage1k = <refinedstorage:storage:0>;
val storage4k = <refinedstorage:storage:1>;
val storage16k = <refinedstorage:storage:2>;
val storage64k = <refinedstorage:storage:3>;
val fluidStorage1k = <refinedstorage:fluid_storage:0>;
val fluidStorage4k = <refinedstorage:fluid_storage:1>;
val fluidStorage16k = <refinedstorage:fluid_storage:2>;
val fluidStorage64k = <refinedstorage:fluid_storage:3>;
val storageDisk1k = <refinedstorage:storage_disk:0>;
val storageDisk4k = <refinedstorage:storage_disk:1>;
val storageDisk16k = <refinedstorage:storage_disk:2>;
val storageDisk64k = <refinedstorage:storage_disk:3>;
val fluidStorageDisk1k = <refinedstorage:fluid_storage_disk:0>;
val fluidStorageDisk4k = <refinedstorage:fluid_storage_disk:1>;
val fluidStorageDisk16k = <refinedstorage:fluid_storage_disk:2>;
val fluidStorageDisk64k = <refinedstorage:fluid_storage_disk:3>;
val storagePart1k = <refinedstorage:storage_part:0>;
val storagePart4k = <refinedstorage:storage_part:1>;
val storagePart16k = <refinedstorage:storage_part:2>;
val storagePart64k = <refinedstorage:storage_part:3>;
val fluidStoragePart1k = <refinedstorage:fluid_storage_part:0>;
val fluidStoragePart4k = <refinedstorage:fluid_storage_part:1>;
val fluidStoragePart16k = <refinedstorage:fluid_storage_part:2>;
val fluidStoragePart64k = <refinedstorage:fluid_storage_part:3>;

val storageCrate = <immersiveengineering:wooden_device0:5>;
val circuitBoard = <immersiveengineering:material:27>;
val fluidPipe = <immersiveengineering:metal_device1:6>;
val redstoneTorch = <minecraft:redstone_torch>;
val repeater = <minecraft:repeater>;
val comparator = <minecraft:comparator>;
val droppingConveyor = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"});
val extractingConveyor = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"});
val advLubricator = <immersiveengineering:toolupgrade:1>;
val silkTouchBook = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]});
val fortuneIBook = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]});
val fortuneIIBook = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]});
val fortuneIIIBook = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]});

val woodStickOre = <ore:stickWood>;
val treatedWoodStickOre = <ore:stickTreatedWood>;
val aluminumWireOre = <ore:wireAluminum>;
val auminumIngotOre = <ore:ingotAluminum>;
val aluminumPlateOre = <ore:plateAluminum>;
val steelGearOre = <ore:gearIronInfinity>;
val darkSteelGearOre = <ore:gearDark>;
val energeticGearOre = <ore:gearEnergized>;
val vibrantGearOre = <ore:gearVibrant>;
val crystallineIngotOre = <ore:ingotCrystallineAlloy>;
val crystallinePlateOre = <ore:plateCrystallineAlloy>;
val crystallineCapacitorOre = <ore:capacitorCrystalline>;
val melodicCapacitorOre = <ore:capacitorMelodic>;
val enderCapacitorOre = <ore:capacitorEnder>;
val stellarNuggetOre = <ore:nuggetStellarAlloy>;
val stellarCapacitorOre = <ore:capacitorStellar>;
val paperOre = <ore:paper>;
val glassPaneOre = <ore:paneGlassColorless>;
val siliconOre = <ore:itemSilicon>;
val craftingTableOre = <ore:craftingTableWood>;
val drawerStorageUpgradeVOre = <ore:upgradeDrawerStorageV>;
val endermanSkull = <ore:itemSkullEnderman>;

// Refined coil
recipes.addShaped("immc/refined_coil", refinedCoil,
        [[null, crystallineIngotOre, null],
         [aluminumWireOre, woodStickOre, aluminumWireOre],
         [null, crystallineIngotOre, null]]);
recipes.addShaped("immc/refined_coil_treated", refinedCoil,
        [[null, crystallineIngotOre, null],
         [aluminumWireOre, treatedWoodStickOre, aluminumWireOre],
         [null, crystallineIngotOre, null]]);

// Refined coil block
recipes.addShaped("immc/rf_coil_block", refinedCoilBlock,
        [[refinedCoil, refinedCoil, refinedCoil],
         [refinedCoil, auminumIngotOre, refinedCoil],
         [refinedCoil, refinedCoil, refinedCoil]]);

// Refined relay
recipes.addShaped("immc/rf_refined_relay", refinedRelay,
        [[null, crystallineIngotOre, null],
         [aluminumPlateOre, crystallineIngotOre, aluminumPlateOre]]);

// Refined transformer
recipes.addShaped("immc/rf_refined_transformer", refinedTransformer,
        [[null, refinedRelay, null],
         [crystallinePlateOre, refinedCoilBlock, crystallinePlateOre],
         [aluminumPlateOre, circuitBoard, aluminumPlateOre]]);

// Cable
recipes.addShaped("immc/rf_cable", cable * 2,
        [[glassPaneOre, aluminumPlateOre, glassPaneOre],
         [refinedCoil, refinedCoil, refinedCoil],
         [glassPaneOre, aluminumPlateOre, glassPaneOre]]);

// Machine casing
recipes.addShaped("immc/rf_machine_casing", machineCasing,
        [[crystallinePlateOre, aluminumPlateOre, crystallinePlateOre],
         [aluminumPlateOre, refinedCoilBlock, aluminumPlateOre],
         [crystallinePlateOre, aluminumPlateOre, crystallinePlateOre]]);

// Controller
recipes.addShaped("immc/rf_controller", controller,
        [[crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre],
         [crystallineCapacitorOre, machineCasing, crystallineCapacitorOre],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Grid
recipes.addShaped("immc/rf_grid", grid,
        [[circuitBoard, constructor, glassPaneOre],
         [crystallineCapacitorOre, machineCasing, glassPaneOre],
         [circuitBoard, destructor, glassPaneOre]]);

// Crafting grid
recipes.addShapeless("immc/rf_crafting_grid", craftingGrid,
        [grid, enderCapacitorOre, craftingTableOre]);

// Fluid grid
recipes.addShapeless("immc/rf_fluid_grid", fluidGrid,
        [grid, enderCapacitorOre, fluidPipe]);

// Storage monitor
recipes.addShaped("immc/rf_storage_monitor", storageMonitor,
        [[circuitBoard, storageCrate, glassPaneOre],
         [crystallineCapacitorOre, machineCasing, glassPaneOre],
         [circuitBoard, storageCrate, glassPaneOre]]);

// Security manager
recipes.addShaped("immc/rf_security_manager", securityManager,
        [[crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre],
         [securityCard, machineCasing, securityCard],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Network transmitter
recipes.addShaped("immc/rf_network_transmitter", networkTransmitter,
        [[crystallinePlateOre, enderCapacitorOre, crystallinePlateOre],
         [networkCard, machineCasing, networkCard],
         [crystallineCapacitorOre, crystallineCapacitorOre, crystallineCapacitorOre]]);

// Network receiver
recipes.addShaped("immc/rf_network_receiver", networkReceiver,
        [[crystallineCapacitorOre, crystallineCapacitorOre, crystallineCapacitorOre],
         [networkCard, machineCasing, networkCard],
         [crystallinePlateOre, enderCapacitorOre, crystallinePlateOre]]);

// Interface
recipes.addShaped("immc/rf_interface", interface,
        [[crystallinePlateOre, craftingTableOre, crystallinePlateOre],
         [energeticGearOre, machineCasing, energeticGearOre],
         [crystallinePlateOre, fluidPipe, crystallinePlateOre]]);

// Fluid Interface
recipes.addShapeless("immc/rf_fluid_interface", fluidInterface,
        [interface, crystallineCapacitorOre, fluidPipe]);

// Relay
recipes.addShapeless("immc/rf_relay", relay,
        [machineCasing, crystallineCapacitorOre, redstoneTorch]);

// Detector
recipes.addShaped("immc/rf_detector", detector,
        [[crystallinePlateOre, redstoneTorch, crystallinePlateOre],
         [comparator, machineCasing, comparator],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Network card
recipes.addShaped("immc/rf_network_card", networkCard,
        [[glassPaneOre, crystallinePlateOre, glassPaneOre],
         [circuitBoard, enderCapacitorOre, circuitBoard],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Security card
recipes.addShaped("immc/rf_security_card", securityCard,
        [[glassPaneOre, crystallinePlateOre, glassPaneOre],
         [circuitBoard, crystallineCapacitorOre, circuitBoard],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Upgrades
recipes.addShaped("immc/rf_upgrade", upgrade,
        [[glassPaneOre, crystallinePlateOre, glassPaneOre],
         [siliconOre, crystallineCapacitorOre, siliconOre],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);
         
Blueprint.addRecipe("Refined Storage Upgrades", speedUpgrade,
        [upgrade, advLubricator]);
Blueprint.addRecipe("Refined Storage Upgrades", stackUpgrade,
        [upgrade, drawerStorageUpgradeVOre]);
Blueprint.addRecipe("Refined Storage Upgrades", rangeUpgrade,
        [upgrade, enderCapacitorOre]);

val upgradesBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Refined Storage Upgrades"});
recipes.addShaped("immc/blueprint_rf_upgrades", upgradesBlueprint,
        [[glassPaneOre, crystallineCapacitorOre, glassPaneOre],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Filter
recipes.addShaped("immc/rf_filter", filter,
        [[glassPaneOre, crystallinePlateOre, glassPaneOre],
         [siliconOre, paperOre, siliconOre],
         [crystallinePlateOre, crystallinePlateOre, crystallinePlateOre]]);

// Storage
recipes.addShaped("immc/storage_1k", storage1k,
        [[crystallinePlateOre, storagePart1k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);
recipes.addShaped("immc/storage_4k", storage4k,
        [[crystallinePlateOre, storagePart4k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);
recipes.addShaped("immc/storage_16k", storage16k,
        [[crystallinePlateOre, storagePart16k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);
recipes.addShaped("immc/storage_64k", storage64k,
        [[crystallinePlateOre, storagePart64k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);

recipes.addShaped("immc/fluid_storage_1k", fluidStorage1k,
        [[crystallinePlateOre, fluidStoragePart1k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);
recipes.addShaped("immc/fluid_storage_4k", fluidStorage4k,
        [[crystallinePlateOre, fluidStoragePart4k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);
recipes.addShaped("immc/fluid_storage_16k", fluidStorage16k,
        [[crystallinePlateOre, fluidStoragePart16k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);
recipes.addShaped("immc/fluid_storage_64k", fluidStorage64k,
        [[crystallinePlateOre, fluidStoragePart64k, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, energeticGearOre, crystallinePlateOre]]);

Blueprint.addRecipe("Refined Storage Parts", storagePart1k,
        [crystallineCapacitorOre, circuitBoard, steelGearOre, siliconOre * 3]);
Blueprint.addRecipe("Refined Storage Parts", storagePart4k,
        [melodicCapacitorOre, circuitBoard, darkSteelGearOre, storagePart1k * 3]);
Blueprint.addRecipe("Refined Storage Parts", storagePart16k,
        [enderCapacitorOre, circuitBoard, energeticGearOre, storagePart4k * 3]);
Blueprint.addRecipe("Refined Storage Parts", storagePart64k,
        [stellarCapacitorOre, circuitBoard, vibrantGearOre, storagePart16k * 3]);

Blueprint.addRecipe("Refined Storage Parts", fluidStoragePart1k,
        [crystallineCapacitorOre, circuitBoard, steelGearOre, fluidPipe * 3]);
Blueprint.addRecipe("Refined Storage Parts", fluidStoragePart4k,
        [melodicCapacitorOre, circuitBoard, darkSteelGearOre, fluidStoragePart1k * 3]);
Blueprint.addRecipe("Refined Storage Parts", fluidStoragePart16k,
        [enderCapacitorOre, circuitBoard, energeticGearOre, fluidStoragePart4k * 3]);
Blueprint.addRecipe("Refined Storage Parts", fluidStoragePart64k,
        [stellarCapacitorOre, circuitBoard, vibrantGearOre, fluidStoragePart16k * 3]);

val partsBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Refined Storage Parts"});
recipes.addShaped("immc/blueprint_rf_parts", partsBlueprint,
        [[crystallineCapacitorOre, circuitBoard, crystallineCapacitorOre],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);


// !!! Additional Functionality !!!

JEI.removeAndHide(patternGrid);
JEI.removeAndHide(portableGrid);
JEI.removeAndHide(craftingMonitor);
JEI.removeAndHide(wirelessGrid);
JEI.removeAndHide(wirelessCraftingGrid);
JEI.removeAndHide(wirelessFluidGrid);
JEI.removeAndHide(wirelessCraftingMonitor);
JEI.removeAndHide(wirelessTransmitter);
JEI.removeAndHide(diskDrive);
JEI.removeAndHide(diskManipulator);
JEI.removeAndHide(crafter);
JEI.removeAndHide(crafterManager);
JEI.removeAndHide(importer);
JEI.removeAndHide(exporter);
JEI.removeAndHide(externalStorage);
JEI.removeAndHide(constructor);
JEI.removeAndHide(destructor);
JEI.removeAndHide(reader);
JEI.removeAndHide(writer);
JEI.removeAndHide(pattern);
JEI.removeAndHide(silkTouchUpgrade);
JEI.removeAndHide(fortuneIUpgrade);
JEI.removeAndHide(fortuneIIUpgrade);
JEI.removeAndHide(fortuneIIIUpgrade);
JEI.removeAndHide(craftingUpgrade);
JEI.removeAndHide(storageHousing);
JEI.removeAndHide(storageDisk1k);
JEI.removeAndHide(storageDisk4k);
JEI.removeAndHide(storageDisk16k);
JEI.removeAndHide(storageDisk64k);
JEI.removeAndHide(fluidStorageDisk1k);
JEI.removeAndHide(fluidStorageDisk4k);
JEI.removeAndHide(fluidStorageDisk16k);
JEI.removeAndHide(fluidStorageDisk64k);

/*

// Pattern grid
recipes.addShapeless("immc/rf_pattern_grid", patternGrid,
        [grid, enderCapacitorOre, pattern]);

// Portable grid
recipes.addShaped("immc/rf_portable_grid", portableGrid,
        [[crystallinePlateOre, craftingGrid, crystallinePlateOre],
         [crystallinePlateOre, controller, crystallinePlateOre],
         [crystallinePlateOre, fluidGrid, crystallinePlateOre]]);

// Crafting monitor
recipes.addShaped("immc/rf_crafting_monitor", craftingMonitor,
        [[circuitBoard, pattern, glassPaneOre],
         [crystallineCapacitorOre, machineCasing, glassPaneOre],
         [circuitBoard, pattern, glassPaneOre]]);

// Network transmitter (alt)
recipes.addShaped("immc/rf_network_transmitter_alt", networkTransmitter,
        [[crystallinePlateOre, enderCapacitorOre, crystallinePlateOre],
         [constructor, machineCasing, destructor],
         [crystallineCapacitorOre, crystallineCapacitorOre, crystallineCapacitorOre]]);

// Network receiver (alt)
recipes.addShaped("immc/rf_network_receiver_alt", networkReceiver,
        [[crystallineCapacitorOre, crystallineCapacitorOre, crystallineCapacitorOre],
         [constructor, machineCasing, destructor],
         [crystallinePlateOre, enderCapacitorOre, crystallinePlateOre]]);

// Wireless grid
recipes.addShaped("immc/rf_wireless_grid", wirelessGrid,
        [[crystallinePlateOre, enderCapacitorOre, crystallinePlateOre],
         [crystallinePlateOre, grid, crystallinePlateOre],
         [crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre]]);

// Wireless crafting grid
recipes.addShaped("immc/rf_wireless_crafting_grid", wirelessCraftingGrid,
        [[crystallinePlateOre, enderCapacitorOre, crystallinePlateOre],
         [crystallinePlateOre, craftingGrid, crystallinePlateOre],
         [crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre]]);

// Wireless fluid grid
recipes.addShaped("immc/rf_wireless_fluid_grid", wirelessFluidGrid,
        [[crystallinePlateOre, enderCapacitorOre, crystallinePlateOre],
         [crystallinePlateOre, fluidGrid, crystallinePlateOre],
         [crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre]]);

// Wireless crafting monitor
recipes.addShaped("immc/rf_wireless_crafting_monitor", wirelessCraftingMonitor,
        [[crystallinePlateOre, enderCapacitorOre, crystallinePlateOre],
         [crystallinePlateOre, craftingMonitor, crystallinePlateOre],
         [crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre]]);

// Wireless transmitter
recipes.addShaped("immc/rf_wireless_transmitter", wirelessTransmitter,
        [[crystallinePlateOre, enderCapacitorOre, crystallinePlateOre],
         [crystallinePlateOre, cable, crystallinePlateOre],
         [crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre]]);

// Interface (alt)
recipes.addShaped("immc/rf_interface_alt", interface,
        [[crystallinePlateOre, importer, crystallinePlateOre],
         [energeticGearOre, machineCasing, energeticGearOre],
         [crystallinePlateOre, exporter, crystallinePlateOre]]);

// Disk drive
recipes.addShaped("immc/ref_disk_drive", diskDrive,
        [[crystallinePlateOre, storageCrate, crystallinePlateOre],
         [crystallinePlateOre, machineCasing, crystallinePlateOre],
         [crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre]]);

// Disk manipulator
recipes.addShaped("immc/rf_disk_manipulator", diskManipulator,
        [[crystallinePlateOre, storageHousing, crystallinePlateOre],
         [constructor, machineCasing, destructor],
         [crystallinePlateOre, storageHousing, crystallinePlateOre]]);

// Crafter
recipes.addShaped("immc/rf_crafter", crafter,
        [[crystallinePlateOre, constructor, crystallinePlateOre],
         [crystallineCapacitorOre, machineCasing, crystallineCapacitorOre],
         [crystallinePlateOre, destructor, crystallinePlateOre]]);

// Crafter manager
recipes.addShaped("immc/rf_crafter_manager", crafterManager,
        [[crystallinePlateOre, crafter, glassPaneOre],
         [crystallineCapacitorOre, machineCasing, glassPaneOre],
         [crystallinePlateOre, crafter, glassPaneOre]]);

// Importer
recipes.addShapeless("immc/rf_importer", importer,
        [cable, extractingConveyor, circuitBoard]);

// Exporter
recipes.addShapeless("immc/rf_exporter", exporter,
        [cable, droppingConveyor, circuitBoard]);

// External Storage
recipes.addShaped("immc/rf_external_storage", externalStorage,
        [[storageCrate, crystallinePlateOre, storageCrate],
         [constructor, cable, destructor],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Constructor
recipes.addShaped("immc/rf_constructor", constructor,
        [[crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre],
         [energeticGearOre, exporter, energeticGearOre],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Destructor
recipes.addShaped("immc/rf_destructor", destructor,
        [[crystallinePlateOre, crystallineCapacitorOre, crystallinePlateOre],
         [energeticGearOre, importer, energeticGearOre],
         [crystallinePlateOre, circuitBoard, crystallinePlateOre]]);

// Reader
recipes.addShapeless("immc/rf_reader", reader,
        [destructor, enderCapacitorOre]);

// Writer
recipes.addShapeless("immc/rf_writer", writer,
        [constructor, enderCapacitorOre]);

// Pattern
recipes.addShaped("immc/rf_pattern", pattern,
        [[glassPaneOre, energeticGearOre, glassPaneOre],
         [energeticGearOre, glassPaneOre, energeticGearOre],
         [crystallinePlateOre, crystallinePlateOre, crystallinePlateOre]]);

// Upgrades
Blueprint.addRecipe("Refined Storage Upgrades", craftingUpgrade,
        [upgrade, endermanSkull]);
Blueprint.addRecipe("Refined Storage Upgrades", silkTouchUpgrade,
        [upgrade, silkTouchBook]);
Blueprint.addRecipe("Refined Storage Upgrades", fortuneIUpgrade,
        [upgrade, fortuneIBook]);
Blueprint.addRecipe("Refined Storage Upgrades", fortuneIIUpgrade,
        [upgrade, fortuneIIBook]);
Blueprint.addRecipe("Refined Storage Upgrades", fortuneIIIUpgrade,
        [upgrade, fortuneIIIBook]);

// Storage
recipes.addShaped("immc/rf_storage_housing", storageHousing,
        [[glassPaneOre, stellarNuggetOre, glassPaneOre],
         [stellarNuggetOre, null, stellarNuggetOre],
         [crystallinePlateOre, crystallinePlateOre, crystallinePlateOre]]);

recipes.addShapeless("immc/rf_storage_disk_1k", storageDisk1k,
        [storageHousing, storagePart1k]);
recipes.addShapeless("immc/rf_storage_disk_4k", storageDisk4k,
        [storageHousing, storagePart4k]);
recipes.addShapeless("immc/rf_storage_disk_16k", storageDisk16k,
        [storageHousing, storagePart16k]);
recipes.addShapeless("immc/rf_storage_disk_64k", storageDisk64k,
        [storageHousing, storagePart64k]);
recipes.addShapeless("immc/rf_fluid_storage_disk_1k", fluidStorageDisk1k,
        [storageHousing, fluidStoragePart1k]);
recipes.addShapeless("immc/rf_fluid_storage_disk_4k", fluidStorageDisk4k,
        [storageHousing, fluidStoragePart4k]);
recipes.addShapeless("immc/rf_fluid_storage_disk_16k", fluidStorageDisk16k,
        [storageHousing, fluidStoragePart16k]);
recipes.addShapeless("immc/rf_fluid_storage_disk_64k", fluidStorageDisk64k,
        [storageHousing, fluidStoragePart64k]);

*/