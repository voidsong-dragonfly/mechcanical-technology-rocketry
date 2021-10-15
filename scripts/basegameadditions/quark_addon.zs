//Remove Quark recipes for Minecraft items that interfere
recipes.removeByRecipeName("quark:hopper");
recipes.removeByRecipeName("quark:chest_minecart");
recipes.removeByRecipeName("quark:furnace_minecart");
recipes.removeByRecipeName("quark:hopper_minecart");
recipes.removeByRecipeName("quark:tnt_minecart");
recipes.removeByRecipeName("quark:chest_minecart_1");
recipes.remove(<charm:composter>);
recipes.addShaped(<charm:composter>,
 [[<ore:plankWood>, null, <ore:plankWood>],
 [<ore:trapdoorWood>, null, <ore:trapdoorWood>],
 [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]]);
recipes.remove(<filteredhopper:filteredhopper>);
recipes.addShaped(<filteredhopper:filteredhopper>,
 [[<minecraft:iron_bars>],
 [<minecraft:hopper>]]);
 
//Compass Nuggets
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:nuggetIron>, <minecraft:compass>);
 
//Totem recipes
val totems = <minecraft:totem_of_undying> | <charm:totem_of_returning> | <charm:totem_of_shielding>;
recipes.addShaped(<minecraft:totem_of_undying>,
 [[<pvj:unstable_essence>, <inspirations:edibles>, <pvj:unstable_essence>],
 [<ore:dustBlaze>, totems, <ore:dustBlaze>],
 [<pvj:unstable_essence>, <ore:dustBlaze>, <pvj:unstable_essence>]]);
recipes.addShaped(<charm:totem_of_returning>,
 [[<pvj:unstable_essence>, <minecraft:ender_eye>, <pvj:unstable_essence>],
 [<charm:endermite_powder>, totems, <charm:endermite_powder>],
 [<pvj:unstable_essence>, <charm:endermite_powder>, <pvj:unstable_essence>]]);
recipes.addShaped(<charm:totem_of_shielding>,
 [[<pvj:unstable_essence>, <eerieentities:nether_shield>, <pvj:unstable_essence>],
 [<inspirations:materials:6>, totems, <inspirations:materials:6>],
 [<pvj:unstable_essence>, <inspirations:materials:6>, <pvj:unstable_essence>]]);
recipes.addShaped(<eerieentities:nether_shield>,
 [[<minecraft:nether_brick>, <ore:ingotIron>, <minecraft:nether_brick>],
 [<minecraft:nether_brick>, <stygian:endplanks>, <minecraft:nether_brick>],
 [null, <minecraft:nether_brick>, null]]);
 
 //Charm charged emeralds
recipes.addShaped(<charm:charged_emerald> * 12,
 [[<ore:dustPrismarine>, <ore:gemEmerald>, <ore:dustPrismarine>],
 [<ore:gemEmerald>, <minecraft:nether_star>, <ore:gemEmerald>],
 [<ore:dustPrismarine>, <ore:blockEmerald>, <ore:dustPrismarine>]]);
