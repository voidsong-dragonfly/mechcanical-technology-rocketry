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
recipes.addShapeless(<realistictorches:torch_unlit> * 12, [<ore:wool>, <liquid:creosote> * 1000, <ore:stickWood>, <ore:stickWood>, <ore:stickWood>]);
//Campfire recipes
Campfire.addRecipe(<minecraft:stick>, <realistictorches:torch_lit>, 30);
Campfire.addRecipe(<realistictorches:torch_unlit>, <realistictorches:torch_lit>, 30);
recipes.remove(<futuremc:campfire>);
recipes.addShaped(<futuremc:campfire>,
 [[null, <ore:stickWood>, null],
 [<ore:stickWood>, <ore:logWood>, <ore:stickWood>],
 [<ore:rocks>, <ore:logWood>, <ore:rocks>]]);
//Matchbox requires sulfur, use a campfire
recipes.remove(<realistictorches:matchbox>);
recipes.addShaped(<realistictorches:matchbox>,
 [[<ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
//Lamps need ethanol, glowstone is later
var anyLamp = <liquid:ethanol> * 1000 | <charm:smooth_glowstone> | <biomesoplenty:crystal:0> | <liquid:gasoline> * 1000 | <liquid:kerosene> * 1000;
recipes.remove(<rustic:iron_lantern>);
recipes.remove(<rustic:silver_lantern>);
recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:lantern_wood>);
recipes.remove(<quark:paper_lantern>);
recipes.remove(<immersiveengineering:metal_decoration2:4>);
recipes.addShaped(<rustic:iron_lantern> * 4,
 [[<ore:nuggetIron>, <ore:plateIron>, <ore:nuggetIron>],
 [<ore:nuggetIron>, anyLamp, <ore:nuggetIron>],
 [null, <ore:nuggetIron>, null]]);
recipes.addShaped(<rustic:silver_lantern> * 4,
 [[<ore:nuggetSilver>, <ore:plateSilver>, <ore:nuggetSilver>],
 [<ore:nuggetSilver>, anyLamp, <ore:nuggetSilver>],
 [null, <ore:nuggetSilver>, null]]);
recipes.addShaped(<rustic:golden_lantern> * 4,
 [[<ore:nuggetGold>, <ore:plateGold>, <ore:nuggetGold>],
 [<ore:nuggetGold>, anyLamp, <ore:nuggetGold>],
 [null, <ore:nuggetGold>, null]]);
recipes.addShaped(<rustic:lantern_wood> * 4,
 [[<ore:stickWoodAny>, <ore:plankWood>, <ore:stickWoodAny>],
 [<ore:paneGlass>, anyLamp, <ore:paneGlass>],
 [<ore:stickWoodAny>, <ore:plankWood>, <ore:stickWoodAny>]]);
recipes.addShaped(<immersiveengineering:metal_decoration2:4> * 4,
 [[<ore:nuggetIron>, <ore:plateIron>, <ore:nuggetIron>],
 [<ore:paneGlass>, anyLamp, <ore:paneGlass>],
 [<ore:nuggetIron>, <ore:plateIron>, <ore:nuggetIron>]]);
recipes.addShaped(<quark:paper_lantern> * 4,
 [[<ore:paper>, <ore:stickWoodAny>, <ore:paper>],
 [<ore:paper>, anyLamp, <ore:paper>],
 [<ore:paper>, <ore:stickWoodAny>, <ore:paper>]]);
//Replace torch uses
recipes.replaceAllOccurences(<minecraft:torch>, <realistictorches:torch_lit>);
