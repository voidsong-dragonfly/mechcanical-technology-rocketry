//Import
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.mekanism.combiner;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.AlloySmelter;
import mods.mekanism.chemical.oxidizer;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.purification;
import mods.mekanism.chemical.injection;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.washer;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BottlingMachine;



/*
    Special OreDictionary entries - stuff like ContentTweaker items or similar
*/

//Dyes
<ore:dyeWhite>.remove(<minecraft:dye:15>);
<ore:dyeWhite>.remove(<quark:root_dye:2>);
<ore:dyeWhite>.remove(<futuremc:dye:0>);
<ore:dyeBlack>.remove(<minecraft:dye:0>);
<ore:dyeBlack>.remove(<quark:root_dye:1>);
<ore:dyeBlack>.remove(<futuremc:dye:3>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dyeBrown>.remove(<futuremc:dye:2>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeBlue>.remove(<quark:root_dye:2>);
<ore:dyeBlue>.remove(<futuremc:dye:1>);
<ore:dye>.remove(<minecraft:dye:15>);
<ore:dye>.remove(<minecraft:dye:0>);
<ore:dye>.remove(<minecraft:dye:3>);
<ore:dye>.remove(<minecraft:dye:4>);
<ore:dye>.remove(<quark:root_dye:*>);
<ore:dye>.remove(<futuremc:dye:*>);

//Sticks
<ore:stickWood>.remove(<biomesoplenty:bamboo>);

//Soul Sand
<ore:soulsand>.add(<minecraft:soul_sand>);

//Add oredictionary to ContentTweaker petroleum items
<ore:fuelPetroleumCoke>.add(<contenttweaker:petroleum_coke>);
<ore:dustCoke>.add(<contenttweaker:petroleum_coke_dust>);
<ore:dustPetroleumCoke>.add(<contenttweaker:petroleum_coke_dust>);

//Salts oredictionary
<ore:dustMagnesiumChloride>.add(<contenttweaker:magnesium_chloride>);
<ore:dustLithiumChloride>.add(<contenttweaker:lithium_chloride>);

//Tungsten oredictionary
<ore:blockTungsten>.add(<contenttweaker:tungsten_block>);
<ore:ingotTungsten>.add(<contenttweaker:tungsten_ingot>);
<ore:nuggetTungsten>.add(<contenttweaker:tungsten_nugget>);
<ore:dustTungsten>.add(<contenttweaker:tungsten_dust>);
<ore:plateTungsten>.add(<contenttweaker:tungsten_plate>);
<ore:stickTungsten>.add(<contenttweaker:tungsten_stick>);
<ore:wireTungsten>.add(<contenttweaker:tungsten_wire>);

//Low Carbon Steel oredictionary
<ore:blockHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_block>);
<ore:ingotHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_ingot>);
<ore:nuggetHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_nugget>);
<ore:dustHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_dust>);
<ore:plateHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_plate>);
<ore:sheetHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_sheet>);
<ore:stickHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_stick>);
<ore:wireHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_wire>);
<ore:gearHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_gear>);
<ore:mechanicalComponentHighCarbonSteel>.add(<contenttweaker:high_carbon_steel_mechanical_component>);

//Maraging Steel oredictionary
<ore:blockMaragingSteel>.add(<contenttweaker:maraging_steel_block>);
<ore:ingotMaragingSteel>.add(<contenttweaker:maraging_steel_ingot>);
<ore:nuggetMaragingSteel>.add(<contenttweaker:maraging_steel_nugget>);
<ore:dustMaragingSteel>.add(<contenttweaker:maraging_steel_dust>);
<ore:plateMaragingSteel>.add(<contenttweaker:maraging_steel_plate>);
<ore:sheetMaragingSteel>.add(<contenttweaker:maraging_steel_sheet>);
<ore:stickMaragingSteel>.add(<contenttweaker:maraging_steel_stick>);
<ore:wireMaragingSteel>.add(<contenttweaker:maraging_steel_wire>);
<ore:gearMaragingSteel>.add(<contenttweaker:maraging_steel_gear>);
<ore:mechanicalComponentMaragingSteel>.add(<contenttweaker:maraging_steel_mechanical_component>);

//Combined steel oredictionary
<ore:blockUhcsteel>.add(<immersiveengineering:storage:8>);
<ore:blockHcsteel>.add(<contenttweaker:high_carbon_steel_block>);
<ore:blockMaragingsteel>.add(<contenttweaker:maraging_steel_block>);
<ore:blockSteel>.add(<contenttweaker:high_carbon_steel_block>);
<ore:ingotSteel>.add(<contenttweaker:high_carbon_steel_ingot>);
<ore:nuggetSteel>.add(<contenttweaker:high_carbon_steel_nugget>);
<ore:dustSteel>.add(<contenttweaker:high_carbon_steel_dust>);
<ore:plateSteel>.add(<contenttweaker:high_carbon_steel_plate>);
<ore:sheetSteel>.add(<contenttweaker:high_carbon_steel_sheet>);
<ore:stickSteel>.add(<contenttweaker:high_carbon_steel_stick>);
<ore:wireSteel>.add(<contenttweaker:high_carbon_steel_wire>);
<ore:gearSteel>.add(<contenttweaker:high_carbon_steel_gear>);
<ore:blockSteel>.add(<contenttweaker:maraging_steel_block>);
<ore:ingotSteel>.add(<contenttweaker:maraging_steel_ingot>);
<ore:nuggetSteel>.add(<contenttweaker:maraging_steel_nugget>);
<ore:dustSteel>.add(<contenttweaker:maraging_steel_dust>);
<ore:plateSteel>.add(<contenttweaker:maraging_steel_plate>);
<ore:sheetSteel>.add(<contenttweaker:maraging_steel_sheet>);
<ore:stickSteel>.add(<contenttweaker:maraging_steel_stick>);
<ore:wireSteel>.add(<contenttweaker:maraging_steel_wire>);
<ore:gearSteel>.add(<contenttweaker:maraging_steel_gear>);
<ore:mechanicalComponentSteel>.add(<contenttweaker:high_carbon_steel_mechanical_component>);
<ore:mechanicalComponentSteel>.add(<contenttweaker:maraging_steel_mechanical_component>);
<ore:mechanicalComponentSteel>.add(<immersiveengineering:material:9>);
<ore:mechanicalComponentAny>.add(<immersiveengineering:material:8>);
<ore:mechanicalComponentAny>.add(<immersiveengineering:material:9>);
<ore:mechanicalComponentAny>.add(<contenttweaker:high_carbon_steel_mechanical_component>);
<ore:mechanicalComponentAny>.add(<contenttweaker:maraging_steel_mechanical_component>);

//Platinum Group Metal Oredictionary
<ore:orePlatinum>.add(<contenttweaker:platinum_ore>);
<ore:dustPlatinum>.add(<contenttweaker:platinum_dust>);
<ore:ingotPlatinum>.add(<contenttweaker:platinum_ingot>);
<ore:platePlatinum>.add(<contenttweaker:platinum_plate>);
<ore:sheetPlatinum>.add(<contenttweaker:platinum_sheet>);
<ore:nuggetPlatinum>.add(<contenttweaker:platinum_nugget>);
<ore:stickPlatinum>.add(<contenttweaker:platinum_stick>);
<ore:wirePlatinum>.add(<contenttweaker:platinum_wire>);
<ore:dustMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_dust_pt>);
<ore:dustMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_dust_ir>);
<ore:dustMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_dust_os>);
<ore:ingotMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_ingot>);
<ore:plateMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_plate>);
<ore:sheetMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_sheet>);
<ore:nuggetMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_nugget>);
<ore:stickMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_stick>);
<ore:wireMixedPlatinumGroupMetal>.add(<contenttweaker:platinum_group_metal_wire>);
<ore:ingotPGMAny>.add(<contenttweaker:platinum_ingot>);
<ore:ingotPGMAny>.add(<contenttweaker:platinum_group_metal_ingot>);
<ore:ingotPGMAny>.addAll(<ore:ingotOsmium>);
<ore:ingotPGMAny>.addAll(<ore:ingotIridium>);
<ore:wirePGMAny>.add(<contenttweaker:platinum_wire>);
<ore:wirePGMAny>.add(<contenttweaker:platinum_group_metal_wire>);

//Tungstensteel oredictionary
<ore:blockTungstensteel>.add(<contenttweaker:tungstensteel_block>);
<ore:dustTungstensteel>.add(<contenttweaker:tungstensteel_dust>);
<ore:ingotTungstensteel>.add(<contenttweaker:tungstensteel_ingot>);
<ore:plateTungstensteel>.add(<contenttweaker:tungstensteel_plate>);
<ore:nuggetTungstensteel>.add(<contenttweaker:tungstensteel_nugget>);
<ore:stickTungstensteel>.add(<contenttweaker:tungstensteel_stick>);

//Niobium oredictionary
<ore:dustNiobium>.add(<contenttweaker:niobium_dust>);
<ore:ingotNiobium>.add(<contenttweaker:niobium_ingot>);
<ore:plateNiobium>.add(<contenttweaker:niobium_plate>);
<ore:nuggetNiobium>.add(<contenttweaker:niobium_nugget>);
<ore:stickNiobium>.add(<contenttweaker:niobium_stick>);

//Niobium-Titanium Alloy oredictionary
<ore:dustNiobiumTitanium>.add(<contenttweaker:niobium_titanium_dust>);
<ore:ingotNiobiumTitanium>.add(<contenttweaker:niobium_titanium_ingot>);
<ore:plateNiobiumTitanium>.add(<contenttweaker:niobium_titanium_plate>);
<ore:nuggetNiobiumTitanium>.add(<contenttweaker:niobium_titanium_nugget>);
<ore:stickNiobiumTitanium>.add(<contenttweaker:niobium_titanium_stick>);
<ore:wireNiobiumTitanium>.add(<contenttweaker:niobium_titanium_wire>);

//Zirconium oredictionary
<ore:dustZirconium>.add(<contenttweaker:zirconium_dust>);
<ore:ingotZirconium>.add(<contenttweaker:zirconium_ingot>);
<ore:plateZirconium>.add(<contenttweaker:zirconium_plate>);
<ore:nuggetZirconium>.add(<contenttweaker:zirconium_nugget>);
<ore:stickZirconium>.add(<contenttweaker:zirconium_stick>);

//Zirconium-Niobium oredictionary
<ore:dustZirconiumNiobium>.add(<contenttweaker:zirconium_niobium_dust>);
<ore:ingotZirconiumNiobium>.add(<contenttweaker:zirconium_niobium_ingot>);
<ore:plateZirconiumNiobium>.add(<contenttweaker:zirconium_niobium_plate>);
<ore:nuggetZirconiumNiobium>.add(<contenttweaker:zirconium_niobium_nugget>);
<ore:stickZirconiumNiobium>.add(<contenttweaker:zirconium_niobium_stick>);

//Silver-Indium oredictionary
<ore:dustSilverIndium>.add(<contenttweaker:silver_indium_dust>);
<ore:ingotSilverIndium>.add(<contenttweaker:silver_indium_ingot>);
<ore:plateSilverIndium>.add(<contenttweaker:silver_indium_plate>);
<ore:nuggetSilverIndium>.add(<contenttweaker:silver_indium_nugget>);
<ore:stickSilverIndium>.add(<contenttweaker:silver_indium_stick>);

//Ore oredictionary
<ore:oreZirconium>.add(<contenttweaker:zircon_ore>);
<ore:oreNiobium>.add(<contenttweaker:pyrochlore_ore>);
<ore:oreCryolite>.add(<contenttweaker:cryolite>);
<ore:oreGold>.add(<contenttweaker:nether_gold_ore>);
<ore:oreNetherGold>.add(<contenttweaker:nether_gold_ore>);
<ore:oreCinnabar>.add(<contenttweaker:cinnabar_ore>);
<ore:oreNetherCinnabar>.add(<contenttweaker:nether_cinnabar_ore>);
<ore:oreFluorite>.add(<contenttweaker:fluorite_ore>);
<ore:oreTungsten>.add(<contenttweaker:tungsten_ore>);

//Lens oredictionary
<ore:lensGlass>.add(<contenttweaker:glass_lens>);
<ore:lensLapis>.add(<contenttweaker:lapis_lens>);
<ore:lensEmerald>.add(<contenttweaker:emerald_lens>);
<ore:lensEnderPearl>.add(<contenttweaker:ender_pearl_lens>);
<ore:lensRuby>.add(<contenttweaker:ruby_lens>);
<ore:lensDiamond>.add(<contenttweaker:diamond_lens>);
<ore:plateGlass>.add(<contenttweaker:glass_plate>);
<ore:plateLapis>.add(<contenttweaker:lapis_plate>);
<ore:plateEmerald>.add(<contenttweaker:emerald_plate>);
<ore:plateEnderPearl>.add(<contenttweaker:ender_pearl_plate>);
<ore:plateRuby>.add(<contenttweaker:ruby_plate>);
<ore:plateDiamond>.add(<contenttweaker:diamond_plate>);

//Cinnabar oredictionary
<ore:dustCinnabar>.add(<contenttweaker:cinnabar_dust>);

//Fluorite oredictionary
<ore:gemFluorite>.add(<contenttweaker:fluorite>);
<ore:dustFluorite>.add(<contenttweaker:fluorite_dust>);

//Emerald oredictionary
<ore:dustEmerald>.add(<contenttweaker:emerald_dust>);

//Add oredictionary to PVJ blocks
<ore:stoneSiltstone>.add(<pvj:siltstone>);
<ore:mud>.add(<pvj:mud>);

//Fluxes oredictionary
<ore:flux>.add(<contenttweaker:crushed_dolomite>);
<ore:flux>.add(<contenttweaker:crushed_marble>);
<ore:flux>.add(<contenttweaker:crushed_limestone>);

//Rutile Ore to Ilmenite, Aluminum added to "oreBauxite"
<ore:oreBauxite>.add(<immersiveengineering:ore:1>);
<ore:oreRutile>.remove(<libvulpes:ore0:8>);
<ore:oreIlmenite>.addAll(<ore:oreTitanium>);

//Warp block changes
<ore:blockWarpCoreRim>.remove(<libvulpes:metal0:7>);
<ore:blockWarpCoreCore>.remove(<minecraft:gold_block>);
<ore:blockWarpCoreRim>.add(<contenttweaker:warp_ring_engineering_block>);
<ore:blockWarpCoreCore>.add(<contenttweaker:warp_core_engineering_block>);

//Advanced Rocketry crystal entries
<ore:crystalLargeAmethyst>.add(<advancedrocketry:crystal:0>);
<ore:crystalLargeSapphire>.add(<advancedrocketry:crystal:1>);
<ore:crystalLargeEmerald>.add(<advancedrocketry:crystal:2>);
<ore:crystalLargeRuby>.add(<advancedrocketry:crystal:3>);
<ore:crystalLargeCitrine>.add(<advancedrocketry:crystal:4>);
<ore:crystalLargeWulfentite>.add(<advancedrocketry:crystal:5>);

//Remove Mystical Wildlife OD entries for items that don't exist anymore
<ore:wax>.remove(<mysticalwildlife:plumper_blubber>);
<ore:tallow>.remove(<mysticalwildlife:plumper_blubber>);
<ore:materialPressedwax>.remove(<mysticalwildlife:plumper_blubber>);
<ore:leather>.remove(<mysticalwildlife:vrontausaurus_fur>);
<ore:leather>.remove(<mysticalwildlife:dusk_lurker_fur>);
<ore:ash>.remove(<mysticalwildlife:dusk_ash>);
<ore:dustAsh>.remove(<mysticalwildlife:dusk_ash>);
<ore:dyeBlack>.remove(<mysticalwildlife:dusk_ash>);



/*
    Corrective OreDictionary entries - this does stuff like remove Mekanism ingots or similar
*/


purification.removeAllRecipes();
injection.removeAllRecipes();
dissolution.removeAllRecipes();
washer.removeAllRecipes();
crystallizer.removeAllRecipes();

//Ingots
<ore:ingotSteel>.remove(<mekanism:ingot:4>);
<ore:ingotSteel>.remove(<libvulpes:productingot:6>);
<ore:ingotCopper>.remove(<mekanism:ingot:5>);
<ore:ingotCopper>.remove(<libvulpes:productingot:4>);
<ore:ingotCopper>.remove(<forestry:ingot_copper>);
<ore:ingotTin>.remove(<mekanism:ingot:6>);
<ore:ingotTin>.remove(<forestry:ingot_tin>);
<ore:ingotBronze>.remove(<forestry:ingot_bronze>);
<ore:ingotAluminum>.remove(<libvulpes:productingot:9>);
<ore:ingotSilicon>.remove(<libvulpes:productingot:3>);
hide(<mekanism:ingot:4>);
hide(<libvulpes:productingot:6>);
hide(<mekanism:ingot:5>);
hide(<libvulpes:productingot:4>);
removeAndHide(<forestry:ingot_copper>);
hide(<mekanism:ingot:6>);
removeAndHide(<forestry:ingot_tin>);
removeAndHide(<forestry:ingot_bronze>);
hide(<libvulpes:productingot:9>);
hide(<libvulpes:productingot:3>);

//Dusts
<ore:dustIron>.remove(<mekanism:dust:0>);
<ore:dustIron>.remove(<libvulpes:productdust:1>);
<ore:dustGold>.remove(<mekanism:dust:1>);
<ore:dustGold>.remove(<libvulpes:productdust:2>);
<ore:dustCopper>.remove(<mekanism:dust:3>);
<ore:dustCopper>.remove(<libvulpes:productdust:4>);
<ore:dustSilver>.remove(<mekanism:dust:5>);
<ore:dustLead>.remove(<mekanism:dust:6>);
<ore:dustTin>.remove(<mekanism:dust:4>);
<ore:dustSteel>.remove(<mekanism:otherdust:1>);
<ore:dustSteel>.remove(<libvulpes:productdust:6>);
<ore:dustAluminum>.remove(<libvulpes:productdust:9>);
<ore:dustSulfur>.remove(<mekanism:otherdust:3>);
<ore:dustSalt>.remove(<mekanism:salt>);
<ore:itemSalt>.remove(<mekanism:salt>);
<ore:foodSalt>.remove(<mekanism:salt>);
<ore:dustCharcoal>.add(<contenttweaker:charcoal_dust>);
<ore:dustStone>.add(<contenttweaker:stone_dust>);
<ore:dustRutile>.add(<contenttweaker:rutile_dust>);
<ore:dustMagnesium>.add(<contenttweaker:magnesium_dust>);
<ore:dustCobalt>.add(<contenttweaker:cobalt_dust>);
<ore:dustIndium>.add(<contenttweaker:indium_dust>);
<ore:dustGallium>.add(<contenttweaker:gallium_dust>);
<ore:dustQuartz>.add(<contenttweaker:quartz_dust>);
<ore:dustAnyCarbon>.addAll(<ore:dustCoke>);
<ore:dustAnyCarbon>.addAll(<ore:dustCharcoal>);
hide(<mekanism:dust:0>);
hide(<libvulpes:productdust:1>);
hide(<mekanism:dust:1>);
hide(<libvulpes:productdust:2>);
hide(<mekanism:dust:3>);
hide(<libvulpes:productdust:4>);
hide(<mekanism:dust:5>);
hide(<mekanism:dust:6>);
hide(<mekanism:dust:4>);
hide(<mekanism:otherdust:1>);
hide(<libvulpes:productdust:6>);
hide(<libvulpes:productdust:9>);
hide(<mekanism:otherdust:3>);
hide(<mekanism:salt>);

//Gems
<ore:gemApatite>.remove(<forestry:apatite>);
hide(<forestry:apatite>);

//Ore Dusts
<ore:dustDirtyIron>.add(<contenttweaker:washed_iron_ore_dust>);
<ore:dustDirtyCopper>.add(<contenttweaker:washed_copper_ore_dust>);
<ore:dustDirtyTin>.add(<contenttweaker:washed_tin_ore_dust>);
<ore:dustDirtyLead>.add(<contenttweaker:washed_lead_ore_dust>);
<ore:dustDirtyNickel>.add(<contenttweaker:washed_nickel_ore_dust>);
<ore:dustDirtyTungsten>.add(<contenttweaker:washed_tungsten_ore_dust>);
<ore:dustDirtyAluminum>.add(<contenttweaker:washed_bauxite_ore_dust>);
<ore:dustDirtyUranium>.add(<contenttweaker:washed_uranium_ore_dust>);
<ore:dustDirtyTitanium>.add(<contenttweaker:washed_ilmenite_ore_dust>);
<ore:dustDirtyNiobium>.add(<contenttweaker:pyrochlore_ore_dust>);
<ore:dustDirtyNiobium>.add(<contenttweaker:washed_pyrochlore_ore_dust>);
<ore:dustDirtyZirconium>.add(<contenttweaker:zircon_ore_dust>);
<ore:dustDirtyZirconium>.add(<contenttweaker:washed_zircon_ore_dust>);

//Blocks
<ore:blockSteel>.remove(<mekanism:basicblock:5>);
<ore:blockSteel>.remove(<libvulpes:metal0:6>);
<ore:blockCopper>.remove(<mekanism:basicblock:12>);
<ore:blockCopper>.remove(<libvulpes:metal0:4>);
<ore:blockCopper>.remove(<forestry:resource_storage:1>);
<ore:blockTin>.remove(<mekanism:basicblock:13>);
<ore:blockApatite>.remove(<forestry:resource_storage:0>);
<ore:blockTin>.remove(<forestry:resource_storage:2>);
<ore:blockBronze>.remove(<forestry:resource_storage:3>);
<ore:blockAluminum>.remove(<libvulpes:metal0:9>);
<ore:blockCharcoal>.remove(<forestry:charcoal>);
hide(<mekanism:basicblock:5>);
hide(<libvulpes:metal0:6>);
hide(<mekanism:basicblock:12>);
hide(<libvulpes:metal0:4>);
hide(<mekanism:basicblock:13>);
hide(<libvulpes:metal0:9>);
removeAndHide(<forestry:charcoal>);

//Nuggets
<ore:nuggetSteel>.remove(<mekanism:nugget:4>);
<ore:nuggetSteel>.remove(<libvulpes:productnugget:6>);
<ore:nuggetCopper>.remove(<mekanism:nugget:5>);
<ore:nuggetCopper>.remove(<libvulpes:productnugget:4>);
<ore:nuggetTin>.remove(<mekanism:nugget:6>);
<ore:nuggetAluminum>.remove(<libvulpes:productnugget:9>);
hide(<mekanism:nugget:4>);
hide(<libvulpes:productnugget:6>);
hide(<mekanism:nugget:5>);
hide(<libvulpes:productnugget:4>);
hide(<mekanism:nugget:6>);
hide(<libvulpes:productnugget:9>);

//Rods
<ore:stickIron>.remove(<libvulpes:productrod:1>);
<ore:stickSteel>.remove(<libvulpes:productrod:6>);
<ore:stickCopper>.remove(<libvulpes:productrod:4>);
<ore:stickWoodAny>.addAll(<ore:stickTreatedWood>);
<ore:stickWoodAny>.addAll(<ore:stickWood>);
hide(<libvulpes:productrod:1>);
hide(<libvulpes:productrod:6>);
hide(<libvulpes:productrod:4>);

//Plates
<ore:plateIron>.remove(<libvulpes:productplate:1>);
<ore:plateGold>.remove(<libvulpes:productplate:2>);
<ore:plateSteel>.remove(<libvulpes:productplate:6>);
<ore:plateCopper>.remove(<libvulpes:productplate:4>);
<ore:plateAluminum>.remove(<libvulpes:productplate:9>);
<ore:plateSilicon>.remove(<libvulpes:productplate:3>);
hide(<libvulpes:productplate:1>);
hide(<libvulpes:productplate:2>);
hide(<libvulpes:productplate:6>);
hide(<libvulpes:productplate:4>);
hide(<libvulpes:productplate:9>);
hide(<libvulpes:productplate:3>);

//Gears
<ore:gearCopper>.remove(<forestry:gear_copper>);
<ore:gearTin>.remove(<forestry:gear_tin>);
<ore:gearBronze>.remove(<forestry:gear_bronze>);
removeAndHide(<forestry:gear_copper>);
removeAndHide(<forestry:gear_tin>);
removeAndHide(<forestry:gear_bronze>);

//Ingot equivalents
<ore:ingotEquivalentIron>.addAll(<ore:ingotIron>);
<ore:ingotEquivalentIron>.addAll(<ore:dustIron>);
<ore:ingotEquivalentIron>.addAll(<ore:plateIron>);
<ore:ingotEquivalentCopper>.addAll(<ore:ingotCopper>);
<ore:ingotEquivalentCopper>.addAll(<ore:dustCopper>);
<ore:ingotEquivalentCopper>.addAll(<ore:plateCopper>);
<ore:ingotEquivalentTin>.addAll(<ore:ingotTin>);
<ore:ingotEquivalentTin>.addAll(<ore:dustTin>);
<ore:ingotEquivalentTin>.addAll(<ore:plateTin>);
<ore:ingotEquivalentNickel>.addAll(<ore:ingotNickel>);
<ore:ingotEquivalentNickel>.addAll(<ore:dustNickel>);
<ore:ingotEquivalentNickel>.addAll(<ore:plateNickel>);
<ore:ingotEquivalentSilver>.addAll(<ore:ingotSilver>);
<ore:ingotEquivalentSilver>.addAll(<ore:dustSilver>);
<ore:ingotEquivalentSilver>.addAll(<ore:plateSilver>);
<ore:ingotEquivalentGold>.addAll(<ore:ingotGold>);
<ore:ingotEquivalentGold>.addAll(<ore:dustGold>);
<ore:ingotEquivalentGold>.addAll(<ore:plateGold>);
<ore:ingotEquivalentAluminum>.addAll(<ore:ingotAluminum>);
<ore:ingotEquivalentAluminum>.addAll(<ore:dustAluminum>);
<ore:ingotEquivalentAluminum>.addAll(<ore:plateAluminum>);
<ore:ingotEquivalentSteel>.addAll(<ore:ingotSteel>);
<ore:ingotEquivalentSteel>.addAll(<ore:dustSteel>);
<ore:ingotEquivalentSteel>.addAll(<ore:plateSteel>);
<ore:ingotEquivalentTungsten>.addAll(<ore:ingotTungsten>);
<ore:ingotEquivalentTungsten>.addAll(<ore:dustTungsten>);
<ore:ingotEquivalentTungsten>.addAll(<ore:plateTungsten>);
<ore:ingotEquivalentTitanium>.addAll(<ore:ingotTitanium>);
<ore:ingotEquivalentTitanium>.addAll(<ore:dustTitanium>);
<ore:ingotEquivalentTitanium>.addAll(<ore:plateTitanium>);
<ore:ingotEquivalentNiobium>.addAll(<ore:ingotNiobium>);
<ore:ingotEquivalentNiobium>.addAll(<ore:dustNiobium>);
<ore:ingotEquivalentNiobium>.addAll(<ore:plateNiobium>);
<ore:ingotEquivalentZirconium>.addAll(<ore:ingotZirconium>);
<ore:ingotEquivalentZirconium>.addAll(<ore:dustZirconium>);
<ore:ingotEquivalentZirconium>.addAll(<ore:plateZirconium>);
<ore:ingotEquivalentIridium>.addAll(<ore:ingotIridium>);
<ore:ingotEquivalentIridium>.addAll(<ore:dustIridium>);
<ore:ingotEquivalentIridium>.addAll(<ore:plateIridium>);

//Ores
<ore:oreCopper>.remove(<mekanism:oreblock:1>);
<ore:oreCopper>.remove(<libvulpes:ore0:4>);
<ore:oreCopper>.remove(<forestry:resources:1>);
<ore:oreTin>.remove(<mekanism:oreblock:2>);
<ore:oreTin>.remove(<forestry:resources:2>);
<ore:oreAluminum>.remove(<libvulpes:ore0:9>);
<ore:oreApatite>.remove(<forestry:resources:0>);
hide(<mekanism:oreblock:1>);
hide(<libvulpes:ore0:4>);
hide(<mekanism:oreblock:2>);
hide(<libvulpes:ore0:9>);

//Extraneous parts
<ore:wireSilver>.add(<contenttweaker:silver_wire>);
<ore:wireTungsten>.add(<contenttweaker:tungsten_wire>);
<ore:sheetLead>.add(<contenttweaker:lead_sheet>);

//Boule
hide(<libvulpes:productboule:3>);

//Stones
//Limestone and Marble oredictionary
<ore:stoneMarbleAny>.add(<quark:marble:*>);
<ore:stoneMarbleAny>.add(<quark:world_stone_bricks:4>);
<ore:stoneMarbleAny>.add(<quark:world_stone_carved:4>);
<ore:stoneMarbleAny>.add(<quark:world_stone_pavement:4>);
<ore:stoneLimestoneAny>.add(<quark:limestone:*>);
<ore:stoneLimestoneAny>.add(<quark:world_stone_bricks:5>);
<ore:stoneLimestoneAny>.add(<quark:world_stone_carved:5>);
<ore:stoneLimestoneAny>.add(<quark:world_stone_pavement:5>);
//Turn Quark slate into dolomite
<ore:stoneSlate>.remove(<quark:slate>);
<ore:stoneSlatePolished>.remove(<quark:slate:1>);
<ore:stoneDolomite>.add(<quark:slate>);
<ore:stoneDolomiteAny>.add(<quark:slate:*>);
<ore:stoneDolomiteAny>.add(<quark:world_stone_bricks:7>);
<ore:stoneDolomiteAny>.add(<quark:world_stone_carved:7>);
<ore:stoneDolomiteAny>.add(<quark:world_stone_pavement:7>);
recipes.replaceAllOccurences(<ore:stoneSlate>, <ore:stoneDolomite>, <quark:slate_speleothem>);
