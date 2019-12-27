#modloaded vc
#modloaded immersiveengineering

import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Blueprint;

recipes.removeByMod("vc");

JEI.removeAndHide(<vc:airship_workbench>);
JEI.removeAndHide(<vc:symbols/item_display_symbol>);
JEI.removeAndHide(<vc:item_guidebook_main>);
JEI.removeAndHide(<vc:item_logic_chip>);
JEI.removeAndHide(<vc:upgrades/item_upgrade_airship_core>);
JEI.removeAndHide(<vc:upgrades/item_upgrade_airship_frame>);
JEI.removeAndHide(<vc:upgrades/item_upgrade_airship_engine>);
JEI.removeAndHide(<vc:upgrades/item_upgrade_airship_balloon>);

// Fuel (Viesoline)
val viesoline = <vc:item_viesoline_pellets>;
val coal = <ore:fuelCoal>;
val redstone = <ore:dustRedstone>;
AlloySmelter.addRecipe(viesoline * 2, coal, redstone, 100);
ArcFurnace.addRecipe(viesoline * 3, coal, null, 60, 512, [redstone]);

val circuitBoard = <ore:itemCircuitBoard>;
val melodicCapacitor = <ore:capacitorMelodic>;

// Balloon
val balloon = <vc:item_airship_balloon>;
val hempCoil = <immersiveengineering:wirecoil:3>;
val hempFabric = <ore:fabricHemp>;
val jumpCushion = <immersiveengineering:cloth_device>;
recipes.addShaped(balloon,
        [[hempCoil, hempFabric, hempCoil],
         [hempFabric, jumpCushion, hempFabric],
         [hempCoil, hempFabric, hempCoil]]);

// Frame
val frame = <vc:item_airship_frame>;
val minecart = <minecraft:minecart>;
val steelPlate = <ore:plateSteel>;
val steelGear = <ore:gearIronInfinity>;
recipes.addShaped(frame,
        [[steelPlate, melodicCapacitor, steelPlate],
         [steelGear, minecart, steelGear],
         [steelPlate, circuitBoard, steelPlate]]);

// Engine
val engine = <vc:item_airship_engine>;
val hvCapacitor = <immersiveengineering:metal_device0:2>;
val hvCoilBlock = <immersiveengineering:metal_decoration0:2>;
recipes.addShaped(engine,
        [[steelPlate, melodicCapacitor, steelPlate],
         [hvCoilBlock, hvCapacitor, hvCoilBlock],
         [steelPlate, circuitBoard, steelPlate]]);

// Core
val core = <vc:item_airship_ignition>;
val elytra = <minecraft:elytra>;
val generator = <immersiveengineering:metal_decoration0:6>;
recipes.addShaped(core,
        [[steelPlate, melodicCapacitor, steelPlate],
         [generator, elytra, generator],
         [steelPlate, circuitBoard, steelPlate]]);

// Airship!
val airship = <vc:airships/item_airship>;
recipes.addShaped(airship,
        [[hempCoil, balloon, hempCoil],
         [hempCoil, frame, hempCoil],
         [engine, core, engine]]);

// Upgrades
val energeticDust = <ore:dustEnergeticAlloy>;
val glassPane = <ore:paneGlassColorless>;
val crystallineAlloyPlate = <ore:plateCrystallineAlloy>;
val soulariumPlate = <ore:plateSoularium>;
val vibrantAlloyPlate = <ore:plateVibrantAlloy>;
val enderCapacitor = <ore:capacitorEnder>;
val stellarCapacitor = <ore:capacitorStellar>;

// Core Upgrades
val coreUpgrade1 = <vc:upgrades/item_upgrade_airship_core:1>;
val coreUpgrade2 = <vc:upgrades/item_upgrade_airship_core:2>;
val coreUpgrade3 = <vc:upgrades/item_upgrade_airship_core:3>;
val coreUpgrade4 = <vc:upgrades/item_upgrade_airship_core:4>;
val coreUpgrade5 = <vc:upgrades/item_upgrade_airship_core:5>;

Blueprint.addRecipe("Airship Core Upgrades", coreUpgrade1,
        [elytra, melodicCapacitor, energeticDust * 2, crystallineAlloyPlate * 2]);
Blueprint.addRecipe("Airship Core Upgrades", coreUpgrade2,
        [elytra, melodicCapacitor, energeticDust * 2, soulariumPlate * 2]);
Blueprint.addRecipe("Airship Core Upgrades", coreUpgrade3,
        [elytra, melodicCapacitor, energeticDust * 2, vibrantAlloyPlate * 2]);
Blueprint.addRecipe("Airship Core Upgrades", coreUpgrade4,
        [elytra, melodicCapacitor, energeticDust * 2, enderCapacitor * 2]);
Blueprint.addRecipe("Airship Core Upgrades", coreUpgrade5,
        [elytra, melodicCapacitor, energeticDust * 2, stellarCapacitor * 2]);

val coreBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Airship Core Upgrades"});
recipes.addShaped("immc/blueprint_vc_core", coreBlueprint,
        [[generator, elytra, generator],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Frame Upgrades
val frameUpgrade1 = <vc:upgrades/item_upgrade_airship_frame:1>;
val frameUpgrade2 = <vc:upgrades/item_upgrade_airship_frame:2>;
val frameUpgrade3 = <vc:upgrades/item_upgrade_airship_frame:3>;
val frameUpgrade4 = <vc:upgrades/item_upgrade_airship_frame:4>;
val frameUpgrade5 = <vc:upgrades/item_upgrade_airship_frame:5>;

Blueprint.addRecipe("Airship Frame Upgrades", frameUpgrade1,
        [minecart, melodicCapacitor, energeticDust * 2, crystallineAlloyPlate * 2]);
Blueprint.addRecipe("Airship Frame Upgrades", frameUpgrade2,
        [minecart, melodicCapacitor, energeticDust * 2, soulariumPlate * 2]);
Blueprint.addRecipe("Airship Frame Upgrades", frameUpgrade3,
        [minecart, melodicCapacitor, energeticDust * 2, vibrantAlloyPlate * 2]);
Blueprint.addRecipe("Airship Frame Upgrades", frameUpgrade4,
        [minecart, melodicCapacitor, energeticDust * 2, enderCapacitor * 2]);
Blueprint.addRecipe("Airship Frame Upgrades", frameUpgrade5,
        [minecart, melodicCapacitor, energeticDust * 2, stellarCapacitor * 2]);

val frameBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Airship Frame Upgrades"});
recipes.addShaped("immc/blueprint_vc_frame", frameBlueprint,
        [[steelGear, minecart, steelGear],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Engine Upgrades
val engineUpgrade1 = <vc:upgrades/item_upgrade_airship_engine:1>;
val engineUpgrade2 = <vc:upgrades/item_upgrade_airship_engine:2>;
val engineUpgrade3 = <vc:upgrades/item_upgrade_airship_engine:3>;
val engineUpgrade4 = <vc:upgrades/item_upgrade_airship_engine:4>;
val engineUpgrade5 = <vc:upgrades/item_upgrade_airship_engine:5>;

Blueprint.addRecipe("Airship Engine Upgrades", engineUpgrade1,
        [hvCapacitor, melodicCapacitor, energeticDust * 2, crystallineAlloyPlate * 2]);
Blueprint.addRecipe("Airship Engine Upgrades", engineUpgrade2,
        [hvCapacitor, melodicCapacitor, energeticDust * 2, soulariumPlate * 2]);
Blueprint.addRecipe("Airship Engine Upgrades", engineUpgrade3,
        [hvCapacitor, melodicCapacitor, energeticDust * 2, vibrantAlloyPlate * 2]);
Blueprint.addRecipe("Airship Engine Upgrades", engineUpgrade4,
        [hvCapacitor, melodicCapacitor, energeticDust * 2, enderCapacitor * 2]);
Blueprint.addRecipe("Airship Engine Upgrades", engineUpgrade5,
        [hvCapacitor, melodicCapacitor, energeticDust * 2, stellarCapacitor * 2]);

val engineBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Airship Engine Upgrades"});
recipes.addShaped("immc/blueprint_vc_engine", engineBlueprint,
        [[hvCoilBlock, hvCapacitor, hvCoilBlock],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);

// Balloon Upgrades
val balloonUpgrade1 = <vc:upgrades/item_upgrade_airship_balloon:1>;
val balloonUpgrade2 = <vc:upgrades/item_upgrade_airship_balloon:2>;
val balloonUpgrade3 = <vc:upgrades/item_upgrade_airship_balloon:3>;
val balloonUpgrade4 = <vc:upgrades/item_upgrade_airship_balloon:4>;
val balloonUpgrade5 = <vc:upgrades/item_upgrade_airship_balloon:5>;

Blueprint.addRecipe("Airship Balloon Upgrades", balloonUpgrade1,
        [jumpCushion, melodicCapacitor, energeticDust * 2, crystallineAlloyPlate * 2]);
Blueprint.addRecipe("Airship Balloon Upgrades", balloonUpgrade2,
        [jumpCushion, melodicCapacitor, energeticDust * 2, soulariumPlate * 2]);
Blueprint.addRecipe("Airship Balloon Upgrades", balloonUpgrade3,
        [jumpCushion, melodicCapacitor, energeticDust * 2, vibrantAlloyPlate * 2]);
Blueprint.addRecipe("Airship Balloon Upgrades", balloonUpgrade4,
        [jumpCushion, melodicCapacitor, energeticDust * 2, enderCapacitor * 2]);
Blueprint.addRecipe("Airship Balloon Upgrades", balloonUpgrade5,
        [jumpCushion, melodicCapacitor, energeticDust * 2, stellarCapacitor * 2]);

val baloonBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Airship Balloon Upgrades"});
recipes.addShaped("immc/blueprint_vc_baloon", baloonBlueprint,
        [[hempFabric, jumpCushion, hempFabric],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);
