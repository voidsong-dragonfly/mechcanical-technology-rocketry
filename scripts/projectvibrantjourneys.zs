//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove ProjectVibrantJourneys blocks either that should not be seen (door tiles) or that have better alternatives
var pvjBlocksToRemove = [<pvj:willow_door>,
                         <pvj:mangrove_door>,
                         <pvj:palm_door>,
                         <pvj:redwood_door>,
                         <pvj:fir_door>,
                         <pvj:pine_door>,
                         <pvj:aspen_door>,
                         <pvj:maple_door>,
                         <pvj:baobab_door>,
                         <pvj:cottonwood_door>,
                         <pvj:juniper_door>,
                         <pvj:cherry_blossom_door>,
                         <pvj:jacaranda_door>,
                         <pvj:ice_formation>,
                         <pvj:rock_formation>,
                         <pvj:pvj_cobweb>,
                         <pvj:basalt>,
                         <pvj:basalt_brick>,
                         <pvj:basalt_stairs>,
                         <pvj:basalt_brick_stairs>,
                         <pvj:basalt_slab>,
                         <pvj:basalt_brick_slab>,
                         <pvj:limestone>,
                         <pvj:limestone_stairs>,
                         <pvj:limestone_slab>,
                         <pvj:marble>,
                         <pvj:marble_brick>,
                         <pvj:marble_stairs>,
                         <pvj:marble_brick_stairs>,
                         <pvj:marble_slab>,
                         <pvj:marble_brick_slab>,
                         <pvj:wet_adobe>,
                         <pvj:adobe>,
                         <pvj:adobe_brick>,
                         <pvj:adobe_stairs>,
                         <pvj:adobe_brick_stairs>,
                         <pvj:adobe_slab>,
                         <pvj:adobe_brick_slab>
                       ] as IItemStack[];
for item in pvjBlocksToRemove{
    removeAndHide(item);
    }

//Rocks -> gravel not other things
recipes.removeByRecipeName("pvj:cobblestone_1");
recipes.removeByRecipeName("pvj:cobblestone_2");
recipes.removeByRecipeName("pvj:mossy_cobblestone");
recipes.removeByRecipeName("pvj:andesite");
recipes.removeByRecipeName("pvj:granite");
recipes.removeByRecipeName("pvj:diorite");
recipes.removeByRecipeName("pvj:sandstone");
recipes.removeByRecipeName("pvj:red_sandstone");
recipes.addShaped(<minecraft:gravel>, 
 [[<ore:rocks>, <ore:rocks>],
 [<ore:rocks>, <ore:rocks>]]);
