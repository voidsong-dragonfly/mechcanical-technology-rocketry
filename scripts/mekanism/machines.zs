//Import
import mods.mekanism.chemical.injection;
import mods.mekanism.reaction;
import mods.mekanism.thermalevaporation;



//Add some use to the chemical injection chamber
injection.addRecipe(<inspirations:materials:6> * 3, <gas:sulfuricacid> * 250, <immersiveengineering:metal:12>);
injection.addRecipe(<ore:rodBlaze>, <gas:sulfuricacid> * 125, <minecraft:blaze_powder> * 6);
injection.addRecipe(<ore:gemPrismarine>, <gas:sulfuricacid> * 125, <minecraft:prismarine_crystals> * 2);
injection.addRecipe(<ore:bone>, <gas:nitrogen> * 125, <minecraft:dye:15> * 8);
injection.addRecipe(<ore:wireTitanium>, <gas:nitrogen> * 100, <ore:wireTitaniumNitride>.firstItem);
injection.addRecipe(<minecraft:end_stone>, <gas:endacid> * 500, <stygian:endmagma>);
injection.addRecipe(<quark:soul_bead>, <gas:endacid> * 4000, <minecraft:ender_pearl>);
injection.addRecipe(<inspirations:materials:6>, <gas:endacid> * 125, <charm:endermite_powder>);
injection.addRecipe(<ore:obsidian>, <gas:endacid> * 250, <mekanism:otherdust:6> * 8);
injection.addRecipe(<ore:enderpearl>, <gas:endacid> * 125, <portalgun:item_dust_ender_pearl> * 4);
injection.addRecipe(<ore:rodBlaze>, <gas:endacid> * 125, <minecraft:blaze_powder> * 8);
injection.addRecipe(<ore:gemPrismarine>, <gas:endacid> * 125, <minecraft:prismarine_crystals> * 3);

//Brine and lithium changes and additions
thermalevaporation.removeRecipe(<liquid:brine>);
thermalevaporation.addRecipe(<liquid:brine> * 5, <liquid:magnesiumchloridesolution>);
thermalevaporation.addRecipe(<liquid:magnesiumchloridesolution> * 4, <liquid:lithiumchloridesolution>);

//The PRC is an atomizer, no matter what you said
reaction.removeAllRecipes();
reaction.addRecipe(<minecraft:glass>, <liquid:molteniron> * 100, <gas:nitrogen> * 100, <immersiveengineering:metal:18> * 1, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<minecraft:glass>, <liquid:moltenmagnesium> * 100, <gas:nitrogen> * 100, <contenttweaker:material_part:60> * 1, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<minecraft:glass>, <liquid:moltenaluminium> * 100, <gas:nitrogen> * 100, <immersiveengineering:metal:10> * 1, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<minecraft:glass>, <liquid:moltentitanium> * 100, <gas:nitrogen> * 100, <libvulpes:productdust:7> * 1, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<minecraft:glass>, <liquid:moltensilicon> * 100, <gas:nitrogen> * 100, <libvulpes:productdust:3> * 1, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<minecraft:glass>, <liquid:moltenslag> * 100, <gas:nitrogen> * 100, <immersiveengineering:material:7> * 1, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<minecraft:glass>, <liquid:moltensulfur> * 100, <gas:nitrogen> * 100, <immersiveengineering:material:25> * 1, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<minecraft:glass>, <liquid:moltenlithium> * 100, <gas:nitrogen> * 100, <mekanism:otherdust:4> * 1, <gas:nitrogen> * 100, 500, 320);

reaction.addRecipe(<immersiveengineering:metal:18>, <liquid:molteniron> * 1500, <gas:nitrogen> * 100, <immersiveengineering:metal:18> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<contenttweaker:material_part:60>, <liquid:moltenmagnesium> * 1500, <gas:nitrogen> * 100, <contenttweaker:material_part:60> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<immersiveengineering:metal:10>, <liquid:moltenaluminium> * 1500, <gas:nitrogen> * 100, <immersiveengineering:metal:10> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<libvulpes:productdust:7>, <liquid:moltentitanium> * 1500, <gas:nitrogen> * 100, <libvulpes:productdust:7> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<libvulpes:productdust:3>, <liquid:moltensilicon> * 1500, <gas:nitrogen> * 100, <libvulpes:productdust:3> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<immersiveengineering:material:7>, <liquid:moltenslag> * 1500, <gas:nitrogen> * 100, <immersiveengineering:material:7> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<immersiveengineering:material:25>, <liquid:moltensulfur> * 1500, <gas:nitrogen> * 100, <immersiveengineering:material:25> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<mekanism:otherdust:4>, <liquid:moltenlithium> * 1500, <gas:nitrogen> * 100, <mekanism:otherdust:4> * 16, <gas:nitrogen> * 100, 500, 320);
reaction.addRecipe(<earthworks:item_sand>, <liquid:pahoehoelava> * 1000, <gas:nitrogen> * 100, <minecraft:magma>, <gas:nitrogen> * 100, 500, 50);
