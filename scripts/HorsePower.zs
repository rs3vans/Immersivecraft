#modloaded horsepower

import mods.jei.JEI;

val doNotRemove = [
    "hand_grindstone"
] as string[];

val items = loadedMods["horsepower"].items;
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

recipes.remove(<horsepower:hand_grindstone>);
recipes.addShaped("immc/hand_grindstone", <horsepower:hand_grindstone>,
        [ [ null,        <ore:stone>, <ore:stickWood> ],
          [ <ore:stone>, <ore:stone>, <ore:stone> ],
          [ <ore:stone>, <ore:stone>, <ore:stone> ] ]);
