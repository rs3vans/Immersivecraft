#modloaded vc
#modloaded immersiveengineering

import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;

recipes.removeByMod("vc");

val guidebook = <vc:item_guidebook_main>;
JEI.removeAndHide(guidebook);
val logicChip = <vc:item_logic_chip>;
JEI.removeAndHide(logicChip);
val coreUpgradeThing = <vc:upgrades/item_upgrade_airship_core>;
JEI.removeAndHide(coreUpgradeThing);
val frameUpgradeThing = <vc:upgrades/item_upgrade_airship_frame>;
JEI.removeAndHide(frameUpgradeThing);
val engineUpgradeThing = <vc:upgrades/item_upgrade_airship_engine>;
JEI.removeAndHide(engineUpgradeThing);
val balloonUpgradeThing = <vc:upgrades/item_upgrade_airship_balloon>;
JEI.removeAndHide(balloonUpgradeThing);

// Fuel (Viesoline)
val viesoline = <vc:item_viesoline_pellets>;
val coal = <ore:clumpCoal>;
val redstone = <ore:dustRedstone>;
AlloySmelter.addRecipe(viesoline * 2, coal, redstone, 100);
ArcFurnace.addRecipe(viesoline * 3, coal, null, 60, 512, [ redstone ]);

// Logic chip (emulated)
val circuitBoard = <immersiveengineering:material:27>;

// Balloon
val balloon = <vc:item_airship_balloon>;
val hempCoil = <immersiveengineering:wirecoil:3>;
val hempFabric = <ore:fabricHemp>;
val jumpCushion = <immersiveengineering:cloth_device>;
recipes.addShaped(balloon,
        [[hempCoil,   hempFabric,  hempCoil],
         [hempFabric, jumpCushion, hempFabric],
         [hempCoil,   hempFabric,  hempCoil]]);

// Frame
val frame = <vc:item_airship_frame>;
val minecart = <minecraft:minecart>;
val steelPlate = <immersiveengineering:metal:38>;
recipes.addShaped(frame,
        [[steelPlate,   circuitBoard, steelPlate],
         [circuitBoard, minecart,     circuitBoard],
         [steelPlate,   circuitBoard, steelPlate]]);

// Engine
val engine = <vc:item_airship_engine>;
val hvCapacitor = <immersiveengineering:metal_device0:2>;
val hvCoilBlock = <immersiveengineering:metal_decoration0:2>;
recipes.addShaped(engine,
        [[steelPlate,   hvCoilBlock, steelPlate],
         [circuitBoard, hvCapacitor, circuitBoard],
         [steelPlate,   hvCoilBlock, steelPlate]]);

// Core
val core = <vc:item_airship_ignition>;
val extHeater = <immersiveengineering:metal_device1:1>;
val generator = <immersiveengineering:metal_decoration0:6>;
recipes.addShaped(core,
        [[steelPlate, hvCoilBlock,  steelPlate],
         [generator,  extHeater,    generator],
         [steelPlate, circuitBoard, steelPlate]]);

// Airship!
val airship = <vc:airships/item_airship>;
recipes.addShaped(airship,
        [[hempCoil, balloon, hempCoil],
         [hempCoil, frame,   hempCoil],
         [engine,   core,    engine]]);

// Upgrades
val glassPane = <ore:paneGlassColorless>;
val electrumWire = <immersiveengineering:material:21>;
val diamond = <ore:gemDiamond>;
val emerald = <ore:gemEmerald>;
val enderPearl = <contenttweaker:refined_ender_pearl>;
val enderEye = <minecraft:ender_eye>;
val netherStar = <minecraft:nether_star>;

// Core Upgrades
val coreUpgrade1 = <vc:upgrades/item_upgrade_airship_core:1>;
val coreUpgrade2 = <vc:upgrades/item_upgrade_airship_core:2>;
val coreUpgrade3 = <vc:upgrades/item_upgrade_airship_core:3>;
val coreUpgrade4 = <vc:upgrades/item_upgrade_airship_core:4>;
val coreUpgrade5 = <vc:upgrades/item_upgrade_airship_core:5>;
recipes.addShaped(coreUpgrade1,
        [[electrumWire, glassPane,    electrumWire],
         [diamond,      extHeater,    diamond],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(coreUpgrade2,
        [[electrumWire, glassPane,    electrumWire],
         [emerald,      extHeater,    emerald],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(coreUpgrade3,
        [[electrumWire, glassPane,    electrumWire],
         [enderPearl,   extHeater,    enderPearl],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(coreUpgrade4,
        [[electrumWire, glassPane,    electrumWire],
         [enderEye,     extHeater,    enderEye],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(coreUpgrade5,
        [[electrumWire, glassPane,    electrumWire],
         [netherStar,   extHeater,    netherStar],
         [redstone,     circuitBoard, redstone]]);

// Frame Upgrades
val frameUpgrade1 = <vc:upgrades/item_upgrade_airship_frame:1>;
val frameUpgrade2 = <vc:upgrades/item_upgrade_airship_frame:2>;
val frameUpgrade3 = <vc:upgrades/item_upgrade_airship_frame:3>;
val frameUpgrade4 = <vc:upgrades/item_upgrade_airship_frame:4>;
val frameUpgrade5 = <vc:upgrades/item_upgrade_airship_frame:5>;
recipes.addShaped(frameUpgrade1,
        [[electrumWire, glassPane,    electrumWire],
         [diamond,      minecart,     diamond],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(frameUpgrade2,
        [[electrumWire, glassPane,    electrumWire],
         [emerald,      minecart,     emerald],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(frameUpgrade3,
        [[electrumWire, glassPane,    electrumWire],
         [enderPearl,   minecart,     enderPearl],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(frameUpgrade4,
        [[electrumWire, glassPane,    electrumWire],
         [enderEye,     minecart,     enderEye],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(frameUpgrade5,
        [[electrumWire, glassPane,    electrumWire],
         [netherStar,   minecart,     netherStar],
         [redstone,     circuitBoard, redstone]]);

// Engine Upgrades
val engineUpgrade1 = <vc:upgrades/item_upgrade_airship_engine:1>;
val engineUpgrade2 = <vc:upgrades/item_upgrade_airship_engine:2>;
val engineUpgrade3 = <vc:upgrades/item_upgrade_airship_engine:3>;
val engineUpgrade4 = <vc:upgrades/item_upgrade_airship_engine:4>;
val engineUpgrade5 = <vc:upgrades/item_upgrade_airship_engine:5>;
recipes.addShaped(engineUpgrade1,
        [[electrumWire, glassPane,    electrumWire],
         [diamond,      hvCapacitor,  diamond],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(engineUpgrade2,
        [[electrumWire, glassPane,    electrumWire],
         [emerald,      hvCapacitor,  emerald],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(engineUpgrade3,
        [[electrumWire, glassPane,    electrumWire],
         [enderPearl,   hvCapacitor,  enderPearl],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(engineUpgrade4,
        [[electrumWire, glassPane,    electrumWire],
         [enderEye,     hvCapacitor,  enderEye],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(engineUpgrade5,
        [[electrumWire, glassPane,    electrumWire],
         [netherStar,   hvCapacitor,  netherStar],
         [redstone,     circuitBoard, redstone]]);

// Balloon Upgrades
val balloonUpgrade1 = <vc:upgrades/item_upgrade_airship_balloon:1>;
val balloonUpgrade2 = <vc:upgrades/item_upgrade_airship_balloon:2>;
val balloonUpgrade3 = <vc:upgrades/item_upgrade_airship_balloon:3>;
val balloonUpgrade4 = <vc:upgrades/item_upgrade_airship_balloon:4>;
val balloonUpgrade5 = <vc:upgrades/item_upgrade_airship_balloon:5>;
recipes.addShaped(balloonUpgrade1,
        [[electrumWire, glassPane,    electrumWire],
         [diamond,      jumpCushion,  diamond],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(balloonUpgrade2,
        [[electrumWire, glassPane,    electrumWire],
         [emerald,      jumpCushion,  emerald],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(balloonUpgrade3,
        [[electrumWire, glassPane,    electrumWire],
         [enderPearl,   jumpCushion,  enderPearl],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(balloonUpgrade4,
        [[electrumWire, glassPane,    electrumWire],
         [enderEye,     jumpCushion,  enderEye],
         [redstone,     circuitBoard, redstone]]);
recipes.addShaped(balloonUpgrade5,
        [[electrumWire, glassPane,    electrumWire],
         [netherStar,   jumpCushion,  netherStar],
         [redstone,     circuitBoard, redstone]]);
