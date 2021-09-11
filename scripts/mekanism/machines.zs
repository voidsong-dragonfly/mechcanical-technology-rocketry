//Import
import mods.mekanism.chemical.injection;
import mods.mekanism.compressor;
import mods.mekanism.thermalevaporation;
import mods.mekanism.separator;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.washer;



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
thermalevaporation.addRecipe(<liquid:saltwater> * 10, <liquid:richbrine>);
thermalevaporation.addRecipe(<liquid:brine> * 10, <liquid:lithiumchloridesolution>);
thermalevaporation.addRecipe(<liquid:richbrine> * 10, <liquid:magnesiumchloridesolution>);
