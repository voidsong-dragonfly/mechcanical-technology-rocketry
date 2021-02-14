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
                     <earthworks:tool_level>
                     ] as IItemStack[];
for item in toolsToRemove{
    removeAndHide(item);
    }

//Mud crafting compat
recipes.addShapeless(<earthworks:item_mud> * 4, [<pvj:mud>]);
recipes.addShapeless(<earthworks:item_mud> * 4, [<earthworks:block_mud>]);

//Redo saw and compass recipe
recipes.remove(<earthworks:tool_saw>);
recipes.remove(<earthworks:tool_compass>);
recipes.addShaped(<earthworks:tool_saw>,
 [[<ore:stickTreatedWood>, <ore:leatherStrip>, <ore:stickTreatedWood>],
 [<ore:stickTreatedWood>, <ore:plateSteel>, <ore:stickTreatedWood>],
 [<ore:stickTreatedWood>, <ore:dustDiamond>,<ore:stickTreatedWood>]]);
recipes.addShaped(<earthworks:tool_compass>,
 [[null, null, <ore:stickSteel>],
 [null, <ore:stickSteel>, null],
 [<ore:stickTreatedWood>, <ore:leatherStrip>, null]]);
 
//Make Dry Fitted Stone much harder to craft, it has a huge blast resistance (it's witherproof for Earth's sake)
recipes.remove(<earthworks:block_dry_stone>);
recipes.addShaped(<earthworks:block_dry_stone> * 4,
 [[<earthworks:tool_saw>.anyDamage().transformDamage(), <minecraft:stone>, <immersiveengineering:tool:0>],
 [<minecraft:stone>, null, <minecraft:stone>],
 [<earthworks:tool_square>.reuse(), <minecraft:stone>, <earthworks:tool_compass>.anyDamage().transformDamage()]]);
