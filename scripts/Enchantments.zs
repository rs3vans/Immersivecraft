import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;

val enchantments = [
    {enchantment: 0, item: "plateDarkSteel", levels: 4, treasure: false},
    {enchantment: 1, item: "itemMagmaCream", levels: 4, treasure: false},
    {enchantment: 2, item: "itemBulletCasing", levels: 4, treasure: false},
    {enchantment: 3, item: "tnt", levels: 4, treasure: false},
    {enchantment: 4, item: "itemXpCharged", levels: 1, treasure: true},
    {enchantment: 5, item: "feather", levels: 4, treasure: false},
    {enchantment: 6, item: "piston", levels: 2, treasure: false},
    {enchantment: 7, item: "dustEnergeticAlloy", levels: 5, treasure: false},
    {enchantment: 8, item: "dustVibrantAlloy", levels: 3, treasure: false},
    {enchantment: 9, item: "blockWitherProof", levels: 3, treasure: false},
    {enchantment: 10, item: "gemQuartz", levels: 5, treasure: false},
    {enchantment: 11, item: "ingotIron", levels: 3, treasure: false},
    {enchantment: 12, item: "ingotWither", levels: 5, treasure: false},
    {enchantment: 13, item: "itemSkull", levels: 3, treasure: false},
    {enchantment: 14, item: "dustBlaze", levels: 2, treasure: false},
    {enchantment: 15, item: "blockCactus", levels: 3, treasure: false},
    {enchantment: 16, item: "string", levels: 5, treasure: false},
    {enchantment: 17, item: "gearIronInfinity", levels: 1, treasure: true},
    {enchantment: 18, item: "arrow", levels: 2, treasure: false},
    {enchantment: 19, item: "itemLavaBucket", levels: 1, treasure: false},
    {enchantment: 20, item: "itemWaterBucket", levels: 1, treasure: false},
    {enchantment: 21, item: "blockIce", levels: 2, treasure: false},
    {enchantment: 22, item: "itemSponge", levels: 1, treasure: true},
    {enchantment: 23, item: "eyeSpider", levels: 5, treasure: false},
    {enchantment: 24, item: "fishPuffer", levels: 3, treasure: false},
    {enchantment: 25, item: "itemLilypad", levels: 3, treasure: false},
    {enchantment: 26, item: "fishClown", levels: 3, treasure: false},
    {enchantment: 27, item: "toolFishingRod", levels: 3, treasure: false},
    {enchantment: 28, item: "arrowWithering", levels: 1, treasure: false},
    {enchantment: 29, item: "enderpearl", levels: 4, treasure: false},
    {enchantment: 30, item: "blockCoal", levels: 1, treasure: true},
    {enchantment: 31, item: "dustWither", levels: 1, treasure: false},
    {enchantment: 32, item: "dustSoul", levels: 1, treasure: true},
    {enchantment: 33, item: "bottleXp", levels: 3, treasure: false},
    {enchantment: 34, item: "oreIron", levels: 5, treasure: false}
] as IData[];

val enchantmentDefs = [
    <enchantment:minecraft:protection>,
    <enchantment:minecraft:fire_protection>,
    <enchantment:minecraft:projectile_protection>,
    <enchantment:minecraft:blast_protection>,
    <enchantment:minecraft:mending>,
    <enchantment:minecraft:feather_falling>,
    <enchantment:minecraft:knockback>,
    <enchantment:minecraft:efficiency>,
    <enchantment:minecraft:fortune>,
    <enchantment:minecraft:unbreaking>,
    <enchantment:minecraft:sharpness>,
    <enchantment:minecraft:sweeping>,
    <enchantment:minecraft:smite>,
    <enchantment:minecraft:looting>,
    <enchantment:minecraft:fire_aspect>,
    <enchantment:minecraft:thorns>,
    <enchantment:minecraft:power>,
    <enchantment:minecraft:infinity>,
    <enchantment:minecraft:punch>,
    <enchantment:minecraft:flame>,
    <enchantment:minecraft:aqua_affinity>,
    <enchantment:minecraft:frost_walker>,
    <enchantment:minecraft:silk_touch>,
    <enchantment:minecraft:bane_of_arthropods>,
    <enchantment:minecraft:respiration>,
    <enchantment:minecraft:depth_strider>,
    <enchantment:minecraft:lure>,
    <enchantment:minecraft:luck_of_the_sea>,
    <enchantment:enderio:witherarrow>,
    <enchantment:enderio:repellent>,
    <enchantment:endercore:autosmelt>,
    <enchantment:enderio:witherweapon>,
    <enchantment:enderio:soulbound>,
    <enchantment:endercore:xpboost>,
    <enchantment:oeintegration:oreexcavation>
] as IEnchantmentDefinition[];

val enchantedBook = <minecraft:enchanted_book>;
val bookAndQuill = <minecraft:writable_book>;
val lapis = <ore:gemLapis>;
val diamond = <ore:gemDiamond>;
val emerald = <ore:gemEmerald>;
val netherStar = <ore:starNether>;

for e in enchantments {
    val enchantment = enchantmentDefs[e.enchantment];
    val item = oreDict.get(e.item);
    for i in 0 to e.levels {
        val level = i + 1;
        val name = "immc/ebook_" ~ enchantment.name ~ "_" ~ level;
        val tag = {StoredEnchantments: [
            {id: enchantment.id as short, lvl: level as short}
        ]} as IData;

        var effectiveLevel = level;
        if (e.treasure.asBool()) {
            effectiveLevel = 5;
        }

        var corner = lapis;
        var side = lapis;
        var middle = lapis;
        if (effectiveLevel > 4) {
            middle = netherStar;
        }
        if (effectiveLevel > 3) {
            corner = emerald;
        } else if (effectiveLevel > 2) {
            corner = diamond;
        } else if (effectiveLevel > 1) {
            side = diamond;
        }
        
        recipes.addShaped(name, enchantedBook.withTag(tag),
                [[corner, middle, corner],
                 [side, bookAndQuill, side],
                 [corner, item, corner]]);
    }
}
