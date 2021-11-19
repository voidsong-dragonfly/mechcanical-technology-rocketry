//Import
import mods.futuremc.Campfire;



//Food campfire cooking, project:vibrant journeys
Campfire.addRecipe(<pvj:raw_duck>, <pvj:cooked_duck>, 600);
Campfire.addRecipe(<pvj:raw_squid>, <pvj:cooked_squid>, 600);
Campfire.addRecipe(<pvj:clam>, <pvj:steamed_clam_meat>, 600);

//Food campfire cooking, simple corn
Campfire.addRecipe(<simplecorn:corncob>, <simplecorn:roastedcorn>, 600);
Campfire.addRecipe(<simplecorn:kernels>, <simplecorn:poppedcorn> * 2, 150);

//Food campfire cooking, aquatic abyss
Campfire.addRecipe(<abyssaldepths:butterflyfish>, <abyssaldepths:cooked_butterflyfish>, 600);
Campfire.addRecipe(<abyssaldepths:spotfin_butterflyfish>, <abyssaldepths:cooked_butterflyfish>, 600);
Campfire.addRecipe(<abyssaldepths:raccoon_butterflyfish>, <abyssaldepths:cooked_butterflyfish>, 600);
Campfire.addRecipe(<abyssaldepths:masked_butterflyfish>, <abyssaldepths:cooked_butterflyfish>, 600);

//Cattails to baked potatoes
Campfire.addRecipe(<pvj:cattail>, <minecraft:baked_potato>, 600);
Campfire.addRecipe(<biomesoplenty:plant_1:4>, <minecraft:baked_potato>, 600);
//Furnace version(s) of that
furnace.addRecipe(<minecraft:baked_potato>, <pvj:cattail>);
furnace.addRecipe(<minecraft:baked_potato>, <biomesoplenty:plant_1:4>);

//Bucket firing
Campfire.addRecipe(<ceramics:unfired_clay>, <ceramics:clay_bucket>, 600);
Campfire.addRecipe(<ceramics:unfired_clay:8>, <ceramics:unfired_clay:9>, 600);

//Food campfire cooking, skewers
/*
Campfire.addRecipe(<skewers:skewer_veggie_cooked>, <skewers:skewer_veggie_raw>, 300);
Campfire.addRecipe(<skewers:skewer_beef_cooked>, <skewers:skewer_beef_raw>, 300);
Campfire.addRecipe(<skewers:skewer_porkchop_cooked>, <skewers:skewer_porkchop_raw>, 300);
Campfire.addRecipe(<skewers:skewer_cod_cooked>, <skewers:skewer_cod_raw>, 300);
Campfire.addRecipe(<skewers:skewer_salmon_cooked>, <skewers:skewer_salmon_raw>, 300);
Campfire.addRecipe(<skewers:skewer_chicken_cooked>, <skewers:skewer_chicken_raw>, 300);
Campfire.addRecipe(<skewers:skewer_rabbit_cooked>, <skewers:skewer_rabbit_raw>, 300);
Campfire.addRecipe(<skewers:skewer_mutton_cooked>, <skewers:skewer_mutton_raw>, 300);*/
//Why do some of these not work ????
