#modloaded engineersdecor
#modloaded immersiveengineering

import mods.jei.JEI;

// Machines
JEI.removeAndHide(<engineersdecor:small_lab_furnace>);
recipes.remove(<engineersdecor:small_electrical_furnace>);
recipes.remove(<engineersdecor:small_waste_incinerator>);
recipes.remove(<engineersdecor:passive_fluid_accumulator>);
recipes.remove(<engineersdecor:factory_dropper>);
recipes.remove(<engineersdecor:straight_pipe_valve>);

val aluminumPlate = <ore:plateAluminum>;
val furnace = <minecraft:furnace>;
val dropper = <minecraft:dropper>;
val lavaBucket = <minecraft:lava_bucket>;
val hopper = <minecraft:hopper>;
val lvConnector = <immersiveengineering:connector>;
val extHeater = <immersiveengineering:metal_device1:1>;
val fluidPipe = <immersiveengineering:metal_device1:6>;
val alumSheetmetalSlab = <ore:slabSheetmetalAluminum>;
val treatedWood = <ore:plankTreatedWood>;
val steelComp = <immersiveengineering:material:9>;
val curcuitBoard = <immersiveengineering:material:27>;

recipes.addShaped("immc/electric_furnace", <engineersdecor:small_electrical_furnace>,
        [ [ aluminumPlate, lvConnector, aluminumPlate ],
          [ hopper,        furnace,     hopper        ],
          [ aluminumPlate, extHeater,   aluminumPlate ] ]);

recipes.addShaped("immc/waste_incinerator", <engineersdecor:small_waste_incinerator>,
        [ [ hopper,        lvConnector, aluminumPlate ],
          [ aluminumPlate, lavaBucket,  aluminumPlate ],
          [ aluminumPlate, extHeater,   aluminumPlate ] ]);

recipes.addShaped("immc/fluid_accumulator", <engineersdecor:passive_fluid_accumulator>,
        [ [ alumSheetmetalSlab, fluidPipe, alumSheetmetalSlab ],
          [ fluidPipe,          steelComp, fluidPipe          ],
          [ alumSheetmetalSlab, fluidPipe, alumSheetmetalSlab ] ]);

recipes.addShaped("immc/factory_dropper", <engineersdecor:factory_dropper>,
        [ [ alumSheetmetalSlab, treatedWood,  alumSheetmetalSlab ],
          [ treatedWood,        dropper,      treatedWood        ],
          [ alumSheetmetalSlab, curcuitBoard, alumSheetmetalSlab ] ]);

recipes.addShaped("immc/straight_pipe_valve", <engineersdecor:straight_pipe_valve>,
        [ [ fluidPipe, steelComp, fluidPipe ] ]);