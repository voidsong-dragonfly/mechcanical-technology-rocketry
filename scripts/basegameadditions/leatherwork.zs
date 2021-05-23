//Import
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import mods.jei.JEI.addDescription;
import mods.jei.JEI.removeAndHide;


//Remove Leatherworks blocks & items we're not using
var leatherworksToRemove = [<leatherworks:bark_darkoak>,
                            <leatherworks:bark_acacia>,
                            <leatherworks:bark_jungle>,
                            <leatherworks:bark_birch>,
                            <leatherworks:bark_spruce>,
                            <leatherworks:oak_bark>,
                            <leatherworks:acacia_bark>,
                            <leatherworks:darkoak_bark>,
                            <leatherworks:jungle_bark>,
                            <leatherworks:birch_bark>,
                            <leatherworks:spruce_bark>,
                            <leatherworks:debarked_log_oak>,
                            <leatherworks:debarked_log_acacia>,
                            <leatherworks:debarked_log_darkoak>,
                            <leatherworks:debarked_log_jungle>,
                            <leatherworks:debarked_log_birch>,
                            <leatherworks:debarked_log_spruce>,
                            <leatherworks:drying_rack_darkoak>,
                            <leatherworks:drying_rack_acacia>,
                            <leatherworks:drying_rack_jungle>,
                            <leatherworks:drying_rack_birch>,
                            <leatherworks:drying_rack_spruce>,
                            <leatherworks:barrel_darkoak>,
                            <leatherworks:barrel_oak>,
                            <leatherworks:barrel_acacia>,
                            <leatherworks:barrel_jungle>,
                            <leatherworks:barrel_birch>,
                            <leatherworks:barrel_spruce>,
                            <leatherworks:rawhide_mooshroom>
                       ] as IItemStack[];
for item in leatherworksToRemove{
    removeAndHide(item);
    }

    
//Remove and Readd Leatherworks items so recipes show up in JEI
//Remove
recipes.remove(<leatherworks:crafting_leather_scraped>);
recipes.remove(<leatherworks:crafting_leather_soaked>);
recipes.remove(<leatherworks:leather_strip>);
recipes.remove(<minecraft:leather>);
recipes.remove(<leatherworks:tannin_ball>);

//Remove unneeded planks
recipes.removeByRegex("leatherworks:planks.*");

//Add hide -> scraped hide recipes
//@#$@@#$ you crafttweaker. this SHOULD be able to be done in a much better way
//Pre-recipe BS
val multiplier_3x = <leatherworks:rawhide_deer> | <leatherworks:rawhide_cow>;
val multiplier_2x = <leatherworks:rawhide_horse> | <leatherworks:rawhide_donkey> | <leatherworks:rawhide_mule> | <leatherworks:rawhide_polarbear>;
//Actual recipe BS this time
recipes.addShapeless(<leatherworks:crafting_leather_scraped>, [<tetra:sword_modular>.anyDamage().transformDamage().marked("shortblade"), <ore:rawhide>.marked("rawhide")] as IIngredient[],
    function(output, inputs, craftingInfo) {
        var isShortblade = false;
        for item in inputs.shortblade.itemArray {
            if (item.tag has {"sword/blade": "sword/short_blade"} as IData && isShortblade == false) {
                isShortblade = true;
            }
        }
        val hide = inputs.rawhide as IItemStack;
        var multiplier = 1;
        if (multiplier_3x has hide) {
            multiplier = 3;
        } else if (multiplier_2x has hide) {
            multiplier = 2;
        }
        var item = hide * 1;
        if (isShortblade) {
            item = output * multiplier;
        }
        return item;
    } as IRecipeFunction);

//Redo Leatherworks other recipes
recipes.addShapeless(<leatherworks:tannin_ball>, [<ore:barkWood>, <ore:barkWood>]);
recipes.addShapeless(<leatherworks:leather_strip> * 8, [<minecraft:shears>.anyDamage().transformDamage(), <ore:leatherSheet>]);
recipes.replaceAllOccurences(<minecraft:leather>, <ore:leatherSheet>);
recipes.replaceAllOccurences(<ore:leatherSheet>, <minecraft:leather>, <leatherworks:leather_sheet>);
recipes.replaceAllOccurences(<ore:slabWoodOak>, <ore:slabWood>, <leatherworks:drying_rack_oak>);

//Redo other recipes
recipes.remove(<lostquiver:quiver>);
recipes.addShaped(<lostquiver:quiver>,
 [[null, <ore:leatherStrip>, <ore:leatherSheet>],
 [<ore:leatherStrip>, <ore:stickIron>, <ore:leatherSheet>],
 [<ore:leatherSheet>, <ore:leatherSheet>, null]]);

//Documentation tooltips
<leatherworks:crafting_leather_soaked>.addTooltip("Must be dried upon a drying rack to turn into leather");
<leatherworks:crafting_leather_scraped>.addTooltip("Crafting this requires a Tetra shortblade along with the input");
