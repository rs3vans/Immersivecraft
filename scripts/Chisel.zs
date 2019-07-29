#modloaded chisel

import mods.jei.JEI;
import mods.chisel.Carving;

val removeCarvingGroups = [
    "steel_scaffold",
    "aluminum_scaffold"
] as string[];
for group in removeCarvingGroups {
    Carving.removeGroup(group);
}

recipes.removeByRecipeName("chisel:voidstone");
recipes.removeByRecipeName("chisel:voidstone2");

recipes.addShaped("immc/voidstone", <chisel:voidstone:6>,
        [ [ <ore:endereye>, <ore:endereye>, <ore:endereye> ],
          [ <ore:endereye>, <ore:obsidian>, <ore:endereye> ],
          [ <ore:endereye>, <ore:endereye>, <ore:endereye> ] ]);
