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
                         <pvj:adobe_brick_slab>,
                         <pvj:fallenleaves_juniper_berried>,
                         <pvj:fallenleaves_bop_magic>,
                         <pvj:fallenleaves_bop_sacred_oak>,
                         <pvj:fallenleaves_bop_redwood>,
                         <pvj:fallenleaves_bop_ethereal>,
                         <pvj:fallenleaves_bop_yellow_autumn>,
                         <pvj:fallenleaves_bop_orange_autumn>,
                         <pvj:fallenleaves_bop_origin>,
                         <pvj:fallenleaves_bop_red_big_flower>,
                         <pvj:fallenleaves_bop_yellow_big_flower>,
                         <pvj:fallenleaves_bop_maple>,
                         <pvj:fallenleaves_bop_eucalyptus>,
                         <pvj:yellow_autumn_bop_twigs>,
                         <pvj:orange_autumn_bop_twigs>,
                         <pvj:magic_bop_twigs>,
                         <pvj:ethereal_bop_twigs>,
                         <pvj:origin_bop_twigs>,
                         <pvj:maple_bop_twigs>,
                         <pvj:sacred_oak_bop_twigs>,
                         <pvj:redwood_bop_twigs>,
                         <pvj:yellow_big_flower_bop_twigs>,
                         <pvj:red_big_flower_bop_twigs>,
                         <pvj:eucalyptus_bop_twigs>,
                         <pvj:fallenleaves_traverse_red_autumn>,
                         <pvj:fallenleaves_traverse_brown_autumn>,
                         <pvj:fallenleaves_traverse_orange_autumn>,
                         <pvj:fallenleaves_traverse_yellow_autumn>,
                         <pvj:fallenleaves_traverse_fir>,
                         <pvj:fir_traverse_twigs>,
                         <pvj:yellow_autumn_traverse_twigs>,
                         <pvj:orange_autumn_traverse_twigs>,
                         <pvj:brown_autumn_traverse_twigs>,
                         <pvj:red_autumn_traverse_twigs>
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
