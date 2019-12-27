#modloaded storagedrawers

import mods.jei.JEI;

JEI.removeAndHide(<storagedrawers:upgrade_creative:0>);
JEI.removeAndHide(<storagedrawers:upgrade_creative:1>);

val stick = <ore:stickTreatedWood>;
val circuitBoard = <immersiveengineering:material:27>;

val upgradeTemplate = <storagedrawers:upgrade_template>;
val glassPane = <ore:paneGlass>;

recipes.removeByRecipeName("storagedrawers:compacting_drawer");
recipes.addShaped("immc/compacting_drawer", <storagedrawers:compdrawers>,
        [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
         [<ore:piston>, <storagedrawers:basicdrawers:2>, <ore:piston>],
         [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.removeByRecipeName("storagedrawers:controller");
recipes.addShaped("immc/controller", <storagedrawers:controller>,
        [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
         [<ore:gearIronInfinity>, <storagedrawers:basicdrawers:2>, <ore:gearIronInfinity>],
         [<ore:blockHeavyEng>, <ore:circuitBoard>, <ore:blockHeavyEng>]]);

recipes.removeByRecipeName("storagedrawers:controller_slave");
recipes.addShaped("immc/controller_slave", <storagedrawers:controllerslave>,
        [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
         [<ore:gearIronInfinity>, <storagedrawers:basicdrawers:2>, <ore:gearIronInfinity>],
         [<ore:blockLightEng>, <ore:circuitBoard>, <ore:blockLightEng>]]);

recipes.removeByRecipeName("storagedrawers:key_drawer");
recipes.addShaped("immc/drawer_key", <storagedrawers:drawer_key>,
        [[null, <ore:nuggetGold>, <ore:stickGold>],
         [null, <ore:stickGold>, null],
         [<ore:ingotGold>, null, null]]);

recipes.removeByRecipeName("storagedrawers:upgrade_template");
recipes.addShaped("immc/storagedrawers_upgrade_template", upgradeTemplate,
        [[stick, stick, stick],
          [glassPane, circuitBoard, glassPane],
          [stick, stick, stick]]);

val flint = <ore:itemRawFlint>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_obsidian");
recipes.addShaped("immc/storagedrawers_upgrade_storage_flint", <storagedrawers:upgrade_storage:0>,
        [[stick, stick, stick],
          [flint, upgradeTemplate, flint],
          [stick, stick, stick]]);

val steelPlate = <ore:plateSteel>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_iron");
recipes.addShaped("immc/storagedrawers_upgrade_storage_steel", <storagedrawers:upgrade_storage:1>,
        [[stick, stick, stick],
          [steelPlate, upgradeTemplate, steelPlate],
          [stick, stick, stick]]);

val energeticPlate = <ore:gearEnergized>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_gold");
recipes.addShaped("immc/storagedrawers_upgrade_storage_energetic", <storagedrawers:upgrade_storage:2>,
        [[stick, stick, stick],
          [energeticPlate, upgradeTemplate, energeticPlate],
          [stick, stick, stick]]);

val crystallinePlate = <enderio:item_capacitor_crystalline>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_diamond");
recipes.addShaped("immc/storagedrawers_upgrade_storage_crystalline", <storagedrawers:upgrade_storage:3>,
        [[stick, stick, stick],
          [crystallinePlate, upgradeTemplate, crystallinePlate],
          [stick, stick, stick]]);

val vibrantPlate = <ore:gearVibrant>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_emerald");
recipes.addShaped("immc/storagedrawers_upgrade_storage_vibrant", <storagedrawers:upgrade_storage:4>,
        [[stick, stick, stick],
          [vibrantPlate, upgradeTemplate, vibrantPlate],
          [stick, stick, stick]]);

val stone = <ore:cobblestone>;
recipes.removeByRecipeName("storagedrawers:upgrade_one_stack");
recipes.addShaped("immc/storagedrawers_upgrade_one_stack", <storagedrawers:upgrade_one_stack>,
        [[stick, stick, stick],
          [stone, upgradeTemplate, stone],
          [stick, stick, stick]]);