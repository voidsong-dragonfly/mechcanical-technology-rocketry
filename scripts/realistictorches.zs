//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.futuremc.Campfire;

//Remove Realistic Torches recipes that unbalance the mod &/or have no place in JEI
var torchesToRemove = [<minecraft:torch>,
                       <realistictorches:glowstone_crystal>,
                       <realistictorches:moving_light_source>,
                       <realistictorches:glowstone_paste>,
                       <quark:arrow_torch>
                       ] as IItemStack[];
for item in torchesToRemove{
    removeAndHide(item);
    }

//Coke and Creosote torch recipes
<ore:torch>.add(<realistictorches:torch_lit>);
recipes.addShapeless(<realistictorches:torch_unlit> * 8, [<ore:fuelCoke>, <ore:stickWood>, <ore:stickWood>]);
recipes.addShapeless(<realistictorches:torch_unlit> * 12, [<ore:wool>, <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), <ore:stickWood>, <ore:stickWood>, <ore:stickWood>]);
Campfire.addRecipe(<minecraft:stick>, <realistictorches:torch_lit>, 30);
Campfire.addRecipe(<realistictorches:torch_unlit>, <realistictorches:torch_lit>, 30);
recipes.remove(<futuremc:campfire>);
recipes.addShaped(<futuremc:campfire>,
 [[null, <ore:stickWood>, null],
 [<ore:stickWood>, <ore:logWood>, <ore:stickWood>],
 [<ore:logWood>, <ore:cobblestone>, <ore:logWood>]]);
//Matchbox requires sulfur, use a campfire
recipes.remove(<realistictorches:matchbox>);
recipes.addShaped(<realistictorches:matchbox>,
 [[<ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
//Lamps need ethanol, glowstone is later
recipes.remove(<rustic:iron_lantern>);
recipes.remove(<rustic:silver_lantern>);
recipes.remove(<rustic:golden_lantern>);
recipes.remove(<immersiveengineering:metal_decoration2:4>);
recipes.addShaped(<rustic:iron_lantern>,
 [[<ore:nuggetIron>, <ore:plateIron>, <ore:nuggetIron>],
 [<ore:nuggetIron>, <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}), <ore:nuggetIron>],
 [null, <ore:nuggetIron>, null]]);
recipes.addShaped(<rustic:silver_lantern>,
 [[<ore:nuggetSilver>, <ore:plateSilver>, <ore:nuggetSilver>],
 [<ore:nuggetSilver>, <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}), <ore:nuggetSilver>],
 [null, <ore:nuggetSilver>, null]]);
recipes.addShaped(<rustic:golden_lantern>,
 [[<ore:nuggetGold>, <ore:plateGold>, <ore:nuggetGold>],
 [<ore:nuggetGold>, <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}), <ore:nuggetGold>],
 [null, <ore:nuggetGold>, null]]);
recipes.replaceAllOccurences(<minecraft:torch>, <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}), <rustic:lantern_wood>);
recipes.addShaped(<immersiveengineering:metal_decoration2:4>,
 [[<ore:nuggetIron>, <ore:plateIron>, <ore:nuggetIron>],
 [<ore:paneGlass>, <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}), <ore:paneGlass>],
 [<ore:nuggetIron>, <ore:plateIron>, <ore:nuggetIron>]]);
recipes.replaceAllOccurences(<ore:glowstone>, <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}), <quark:paper_lantern>);
