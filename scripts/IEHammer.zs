#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static ieHammer as IItemStack = <immersiveengineering:tool:0>;

static ieHammerTransformer as IIngredient = ieHammer.transformNew(function (hammer) {
    var damage = 0;
    if (hammer.tag has "Damage") {
        damage = hammer.tag.Damage.asInt();
    }
    if (damage == 99) {
        return null;
    }
    return hammer.withTag({Damage: damage + 1});
});