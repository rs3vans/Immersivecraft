import crafttweaker.data.IData;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BottlingMachine;

recipes.addShapeless("immc/splash_potion", <minecraft:splash_potion>,
        [<minecraft:potion>.marked("potion"), <ore:gunpowder>],
        function (out, ins, cInfo) {
            if (!ins.potion.hasTag) {
                return null;
            }
            val potion = ins.potion.tag.Potion;
            return out.withTag({Potion: potion});
        },
        null);

recipes.addShapeless("immc/lingering_potion", <minecraft:lingering_potion>,
        [<minecraft:splash_potion>.marked("potion"), <ore:bottleDragonsBreath>],
        function (out, ins, cInfo) {
            if (!ins.potion.hasTag) {
                return null;
            }
            val potion = ins.potion.tag.Potion;
            return out.withTag({Potion: potion});
        },
        null);

val potions = [
    {result: "enderio:floating", input: "minecraft:awkward", item: "fruitPoppedChorus"},
    {result: "enderio:strong_floating", input: "enderio:floating", item: "dustGlowstone"},
    {result: "enderio:long_floating", input: "enderio:floating", item: "dustRedstone"},
    {result: "enderio:confusion", input: "minecraft:awkward", item: "itemCocoaBeans"},
    {result: "enderio:long_confusion", input: "enderio:confusion", item: "dustRedstone"},
    {result: "enderio:withering", input: "minecraft:awkward", item: "dustWither"},
    {result: "enderio:long_withering", input: "enderio:withering", item: "dustRedstone"},
    {result: "vanillafoodpantry:food_poisoning", input: "minecraft:awkward", item: "rottenflesh"}
] as IData[];

for p in potions {
    val result = p.result.asString();
    val resultTag = {"Potion": result as string} as IData;
    val input = p.input.asString();
    val inputTag = {"Potion": input as string} as IData;
    val itemOreName = p.item.asString();
    val item = oreDict.get(itemOreName);

    Mixer.addRecipe(
        <liquid:potion>.withTag(resultTag) * 1000,
        <liquid:potion>.withTag(inputTag) * 1000,
        [item],
        2000);
    BottlingMachine.addRecipe(
        <minecraft:potion>.withTag(resultTag),
        <ore:itemEmptyBottle>,
        <liquid:potion>.withTag(resultTag) * 1000);
}