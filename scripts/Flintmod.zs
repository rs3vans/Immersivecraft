#modloaded flintmod

import mods.jei.JEI;

recipes.removeByMod("flintmod");

JEI.removeAndHide(<flintmod:knife_flint>);

recipes.addShapeless("immc/sharpened_flint", <flintmod:tool_part_flint>,
    [ <ore:itemRawFlint>, <ore:itemRawFlint> ]);

recipes.addShaped("immc/flint_spade", <flintmod:spade_flint>,
    [ [ <ore:itemRawFlint>, <flintmod:tool_part_flint> ],
      [ <ore:stickWood>, <ore:itemRawFlint> ] ]);

recipes.addShaped("immc/flint_axe", <flintmod:axe_flint>,
    [ [ <flintmod:tool_part_flint>, <ore:itemRawFlint> ],
      [ <flintmod:tool_part_flint>, <ore:stickWood> ] ]);

recipes.addShaped("immc/flint_pickaxe", <flintmod:pickaxe_flint>,
    [ [ <flintmod:tool_part_flint>, <ore:itemRawFlint> ],
      [ <ore:stickWood>,            <flintmod:tool_part_flint> ] ]);

recipes.addShaped("immc/flint_hoe", <flintmod:hoe_flint>,
    [ [ <flintmod:tool_part_flint>, <ore:itemRawFlint> ],
      [ null,                       <ore:stickWood> ] ]);