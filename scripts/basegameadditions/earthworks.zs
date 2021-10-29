//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove Earthworks tools that might cause confusion with other tools, and remove thatch to deduplicate Mystical World
var toolsToRemove = [<earthworks:tool_diamond_hammer>,
                     <earthworks:tool_gold_hammer>,
                     <earthworks:tool_iron_hammer>,
                     <earthworks:tool_stone_hammer>,
                     <earthworks:tool_wood_hammer>,
                     <earthworks:tool_froe>,
                     <earthworks:tool_adz>,
                     <earthworks:tool_hand_axe>,
                     <earthworks:tool_hand_planer>,
                     <earthworks:tool_level>,
                     <earthworks:tool_saw>
                     ] as IItemStack[];
for item in toolsToRemove{
    removeAndHide(item);
    }

//Mud crafting compat
recipes.addShapeless(<earthworks:item_mud> * 4, [<pvj:mud>]);
recipes.addShapeless(<earthworks:item_mud> * 4, [<earthworks:block_mud>]);

//Redo saw and compass recipe
recipes.remove(<earthworks:tool_compass>);
recipes.addShaped(<earthworks:tool_compass>,
 [[null, null, <ore:stickSteel>],
 [null, <ore:stickSteel>, null],
 [<ore:stickTreatedWood>, <ore:leatherStrip>, null]]);
 
//Make Dry Fitted Stone much harder to craft, it has a huge blast resistance (it's witherproof for Earth's sake)
recipes.remove(<earthworks:block_dry_stone>);
recipes.addShaped(<earthworks:block_dry_stone> * 4,
 [[<chiselsandbits:bitsaw_diamond>.anyDamage().transformDamage(), <minecraft:stone>, <immersiveengineering:tool:0>],
 [<minecraft:stone>, null, <minecraft:stone>],
 [<earthworks:tool_square>.reuse(), <minecraft:stone>, <earthworks:tool_compass>.anyDamage().transformDamage()]]);

//Quicklime compat
furnace.addRecipe(<earthworks:item_quicklime> * 3, <quark:slate>);
furnace.addRecipe(<earthworks:item_quicklime> * 3, <quark:limestone>);
furnace.addRecipe(<earthworks:item_quicklime> * 3, <quark:marble>);

//Adobe compat
furnace.addRecipe(<earthworks:item_adobe> * 4, <pvj:wet_adobe>);
recipes.remove(<earthworks:item_adobe>);

//Concrete
recipes.remove(<earthworks:block_concrete>);
recipes.addShaped(<earthworks:block_concrete> * 8,
 [[<ore:gravel>, <ore:itemClay>, <ore:gravel>],
 [<ore:sand>, <liquid:water> * 1000, <ore:sand>],
 [<ore:gravel>, <ore:itemClay>, <ore:gravel>]]);
recipes.addShaped(<earthworks:block_concrete> * 12,
 [[<ore:gravel>, <ore:itemClay>, <ore:gravel>],
 [<ore:itemSlag>, <liquid:water> * 1000, <ore:itemSlag>],
 [<ore:gravel>, <ore:itemClay>, <ore:gravel>]]);
