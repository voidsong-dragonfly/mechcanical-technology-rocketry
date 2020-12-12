//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove Earthworks tools that might cause confusion with other tools, and remove thatch to deduplicate Mystical World
var toolsToRemove = [<earthworks:tool_diamond_hammer>,
                     <earthworks:tool_gold_hammer>,
                     <earthworks:tool_iron_hammer>,
                     <earthworks:tool_stone_hammer>,
                     <earthworks:tool_wood_hammer>,
                     <earthworks:tool_saw>,
                     <earthworks:tool_froe>,
                     <earthworks:tool_adz>,
                     <earthworks:tool_hand_axe>,
                     <earthworks:tool_hand_planer>,
                     <earthworks:tool_level>, 
                     <earthworks:tool_compass>
                     ] as IItemStack[];
for item in toolsToRemove{
    removeAndHide(item);
    }

//Mud crafting compat
recipes.addShapeless(<earthworks:item_mud> * 4, [<pvj:mud>]);
recipes.addShapeless(<earthworks:item_mud> * 4, [<earthworks:block_mud>]);
 
 /*
//Make Dry Fitted Stone much harder to craft, it has a huge blast resistance
recipes.remove(<earthworks:block_dry_stone>);
recipes.addShaped(<earthworks:block_dry_stone> * 3,
 [[<ore:craftingToolHardHammer>, <ore:stone>, <ore:craftingToolSaw>],
 [<ore:stone>, null, <ore:stone>],
 [<ore:craftingToolFile>, <ore:stone>, <ore:craftingToolCrowbar>]]);
*/
