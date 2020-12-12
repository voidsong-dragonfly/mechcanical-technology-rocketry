//Import
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import mods.jei.JEI.addDescription;
import mods.jei.JEI.removeAndHide;

//Remove Debark logs we don't currently have the logs for available
var debarkerBlocksToRemove = [<debark:debarked_log_biomesoplenty_log_4>,
                              <debark:debarked_log_biomesoplenty_log_0>,
                              <debark:debarked_log_biomesoplenty_log_0:1>,
                              <debark:debarked_log_biomesoplenty_log_0:2>,
                              <debark:debarked_log_biomesoplenty_log_1>,
                              <debark:debarked_log_biomesoplenty_log_1:1>,
                              <debark:debarked_log_biomesoplenty_log_3:3>,
                              <debark:debarked_log_biomesoplenty_log_2>,
                              <debark:debarked_log_traverse_fir_log>,
                       ] as IItemStack[];
for item in debarkerBlocksToRemove {
    removeAndHide(item);
    }

//@#$@@#$ you crafttweaker here too.
//Crafting Table stripping for bark
var logDuals = {"oak": [<debark:debarked_log_minecraft_log>, <minecraft:log>],
                "spruce": [<debark:debarked_log_minecraft_log:1>, <minecraft:log:1>],
                "birch": [<debark:debarked_log_minecraft_log:2>, <minecraft:log:2>],
                "jungle": [<debark:debarked_log_minecraft_log:3>, <minecraft:log:3>],
                "acacia": [<debark:debarked_log_minecraft_log2>, <minecraft:log2>],
                "darkOak": [<debark:debarked_log_minecraft_log2:1>, <minecraft:log2:1>],
                "fir": [<debark:debarked_log_biomesoplenty_log_0:3>, <biomesoplenty:log_1:6>],
                "mangrove": [<debark:debarked_log_biomesoplenty_log_1:2>, <biomesoplenty:log_0:7>],
                "palm": [<debark:debarked_log_biomesoplenty_log_1:3>, <biomesoplenty:log_1:7>],
                "cypress": [<debark:debarked_log_biomesoplenty_log_2:1>, <biomesoplenty:log_2:5>],
                "pine": [<debark:debarked_log_biomesoplenty_log_2:2>, <biomesoplenty:log_2:6>],
                "hellbark": [<debark:debarked_log_biomesoplenty_log_2:3>, <biomesoplenty:log_2:7>],
                "jacaranda": [<debark:debarked_log_biomesoplenty_log_3>, <biomesoplenty:log_3:4>],
                "mahogany": [<debark:debarked_log_biomesoplenty_log_3:1>, <biomesoplenty:log_3:5>],
                "ebony": [<debark:debarked_log_biomesoplenty_log_3:2>, <biomesoplenty:log_3:6>],
                "dead": [<debark:debarked_log_biomesoplenty_log_4:1>, <biomesoplenty:log_4:5>],
                "aspen": [<debark:debarked_log_pvj_log_aspen>, <pvj:log_aspen>],
                "baobab": [<debark:debarked_log_pvj_log_baobab>, <pvj:log_baobab>],
                "cherryBlossom": [<debark:debarked_log_pvj_log_cherry_blossom>, <pvj:log_cherry_blossom>],
                "cottonwood": [<debark:debarked_log_pvj_log_cottonwood>, <pvj:log_cottonwood>],
                "firPVJ": [<debark:debarked_log_pvj_log_fir>, <pvj:log_fir>],
                "jacarandaPVJ": [<debark:debarked_log_pvj_log_jacaranda>, <pvj:log_jacaranda>],
                "juniper": [<debark:debarked_log_pvj_log_juniper>, <pvj:log_juniper>],
                "mangrovePVJ": [<debark:debarked_log_pvj_log_mangrove>, <pvj:log_mangrove>],
                "maple": [<debark:debarked_log_pvj_log_maple>, <pvj:log_maple>],
                "palmPVJ": [<debark:debarked_log_pvj_log_palm>, <pvj:log_palm>],
                "pinePVJ": [<debark:debarked_log_pvj_log_pine>, <pvj:log_pine>],
                "redwood": [<debark:debarked_log_pvj_log_redwood>, <pvj:log_redwood>],
                "willow": [<debark:debarked_log_pvj_log_willow>, <pvj:log_willow>],
                "olive": [<debark:debarked_log_rustic_log>, <rustic:log>],
                "ironwood": [<debark:debarked_log_rustic_log:1>, <rustic:log:1>],
                } as IItemStack[][string];
//Actually register the recipes
for log, itemArray in logDuals {
    recipes.addShapeless(<leatherworks:bark_oak> * 2, [<tetra:sword_modular>.anyDamage().transformDamage().marked("shortblade"), itemArray[1].giveBack(itemArray[0])] as IIngredient[],
    function(output, inputs, craftingInfo) {
        var isShortblade = false;
        for item in inputs.shortblade.itemArray {
            if (item.tag has {"sword/blade": "sword/short_blade"} as IData && isShortblade == false) {
                isShortblade = true;
            }
        }
        var outputItem = itemArray[1];
        if (isShortblade) {
            outputItem = output;
        }
        return outputItem;
    } as IRecipeFunction);
}
