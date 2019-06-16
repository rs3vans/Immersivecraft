#modloaded primal_tech

import mods.jei.JEI;

val doNotRemove = [
    "stone_mallet",
    "stone_anvil"
] as string[];

val items = loadedMods["primal_tech"].items;
for i in items {
    var remove = true;
    for x in doNotRemove {
        if (i.name has x) {
            remove = false;
            break;
        }
    }
    if (remove) {
        JEI.removeAndHide(i);
    }
}
