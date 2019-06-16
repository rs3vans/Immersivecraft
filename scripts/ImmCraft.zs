#modloaded immcraft

import mods.jei.JEI;

val doNotRemove = [
    "sticks",
    "rock"
] as string[];

val items = loadedMods["immcraft"].items;
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

JEI.removeAndHide(<immcraft:bundle>);
JEI.removeAndHide(<immcraft:workbench>);
JEI.removeAndHide(<immcraft:workbench_sec>);
JEI.removeAndHide(<immcraft:in_world_placer>);
JEI.removeAndHide(<immcraft:in_world_vertical_placer>);
JEI.removeAndHide(<immcraft:bookstand>);
