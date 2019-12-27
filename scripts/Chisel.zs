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