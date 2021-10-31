//Import
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.immersivetechnology.MeltingCrucible;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Crusher;
import crafttweaker.item.IItemStack;



//Planetary rock crushing & smelting recipes
Crusher.addRecipe(<contenttweaker:lowland_rock_volatiles_cobblestone>, <contenttweaker:lowland_rock_volatiles>, 1600);
Crusher.addRecipe(<contenttweaker:lowland_rock_iron_cobblestone>, <contenttweaker:lowland_rock_iron>, 1600);
Crusher.addRecipe(<contenttweaker:lowland_rock_metals_cobblestone>, <contenttweaker:lowland_rock_metals>, 1600);
Crusher.addRecipe(<contenttweaker:highland_rock_volatiles_cobblestone>, <contenttweaker:highland_rock_volatiles>, 1600);
Crusher.addRecipe(<contenttweaker:highland_rock_iron_cobblestone>, <contenttweaker:highland_rock_iron>, 1600);
Crusher.addRecipe(<contenttweaker:highland_rock_metals_cobblestone>, <contenttweaker:highland_rock_metals>, 1600);
furnace.addRecipe(<contenttweaker:lowland_rock_volatiles>, <contenttweaker:lowland_rock_volatiles_cobblestone>);
furnace.addRecipe(<contenttweaker:lowland_rock_iron>, <contenttweaker:lowland_rock_iron_cobblestone>);
furnace.addRecipe(<contenttweaker:lowland_rock_metals>, <contenttweaker:lowland_rock_metals_cobblestone>);
furnace.addRecipe(<contenttweaker:highland_rock_volatiles>, <contenttweaker:highland_rock_volatiles_cobblestone>);
furnace.addRecipe(<contenttweaker:highland_rock_iron>, <contenttweaker:highland_rock_iron_cobblestone>);
furnace.addRecipe(<contenttweaker:highland_rock_metals>, <contenttweaker:highland_rock_metals_cobblestone>);

//Sulfate regolith
Crusher.addRecipe(<contenttweaker:sulfated_mega_regolith_gravel>, <contenttweaker:sulfated_mega_regolith_cobblestone>, 1600);
Crusher.addRecipe(<contenttweaker:sulfated_mega_regolith_cobblestone>, <ore:anySulfateStone>, 1600);
furnace.addRecipe(<contenttweaker:sulfated_mega_regolith>, <contenttweaker:sulfated_mega_regolith_cobblestone>);

//Dirt from regolith
recipes.addShaped(<minecraft:dirt:1> * 2,
 [[<ore:regolithAny>, <forestry:fertilizer_bio>],
 [<minecraft:dirt>, <liquid:rocketfuel> * 1000]]);

//Melting recipes
//Ices
MeltingCrucible.addRecipe(<liquid:distwater> * 1000, <minecraft:ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:oxygen> * 1000, <contenttweaker:oxygen_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:nitrogen> * 1000, <contenttweaker:nitrogen_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:methane> * 1000, <contenttweaker:methane_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:carbondioxide> * 1000, <contenttweaker:carbon_dioxide_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:ethylene> * 1000, <contenttweaker:ethene_ice>, 76800, 160);
MeltingCrucible.addRecipe(<liquid:ammonia> * 1000, <contenttweaker:ammonia_ice>, 76800, 160);
//Sulfur
MeltingCrucible.addRecipe(<liquid:moltensulfur> * 100, <ore:dustSulfur>, 9600, 160);
MeltingCrucible.addRecipe(<liquid:moltensulfur> * 800, <contenttweaker:sulfur_dust_block>, 76800, 160);
//Planetary rock
MeltingCrucible.addRecipe(<liquid:moltenlowlandvoltaileregolith> * 1000, <ore:rockLowVolatile>, 256000, 320);
MeltingCrucible.addRecipe(<liquid:moltenhighlandvoltaileregolith> * 1000, <ore:rockHighVolatile>, 224000, 320);
MeltingCrucible.addRecipe(<liquid:moltenlowlandironregolith> * 1000, <ore:rockLowIron>, 296000, 320);
MeltingCrucible.addRecipe(<liquid:moltenhighlandironregolith> * 1000, <ore:rockHighIron>, 248000, 320);
MeltingCrucible.addRecipe(<liquid:moltenlowlandmetalregolith> * 1000, <ore:rockLowMetals>, 248000, 320);
MeltingCrucible.addRecipe(<liquid:moltenhighlandmetalregolith> * 1000, <ore:rockHighMetals>, 216000, 320);

//ISRU Electrolytic Crucible recipes
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltenlowlandvoltailemetals> * 488, <liquid:oxygen> * 756, null, null, <liquid:moltenlowlandvoltaileregolith> * 1000, 3072000, 800);
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltenhighlandvoltailemetals> * 491, <liquid:oxygen> * 783, null, null, <liquid:moltenhighlandvoltaileregolith> * 1000, 3072000, 800);
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltenlowlandironmetals> * 487, <liquid:oxygen> * 743, null, null, <liquid:moltenlowlandironregolith> * 1000, 3072000, 800);
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltenhighlandironmetals> * 453, <liquid:oxygen> * 729, null, null, <liquid:moltenhighlandironregolith> * 1000, 3072000, 800);
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltenlowlandmetalmetals> * 593, <liquid:oxygen> * 925, null, null, <liquid:moltenlowlandmetalregolith> * 1000, 3072000, 800);
ElectrolyticCrucibleBattery.addRecipe(<liquid:moltenhighlandmetalmetals> * 508, <liquid:oxygen> * 810, null, null, <liquid:moltenhighlandmetalregolith> * 1000, 3072000, 800);

//Concrete-Related recipes
//Turn AR planet turfs into precursor stuff
recipes.addShapeless(<advancedrocketry:moonturf> * 6, [<ore:regolithAny>, <ore:regolithAny>, <ore:itemSlag>, <ore:itemSlag>, <ore:itemSlag>, <ore:itemSlag>]);
recipes.addShapeless(<advancedrocketry:moonturf_dark> * 6, [<ore:regolithAnyCobblestone>, <ore:regolithAnyCobblestone>, <ore:itemSlag>, <ore:itemSlag>, <ore:itemSlag>, <ore:itemSlag>]);
recipes.addShaped(<advancedrocketry:hotturf>,
 [[<ore:fiberBasalt>, <ore:fiberBasalt>, <ore:fiberBasalt>],
 [<ore:fiberBasalt>, <advancedrocketry:moonturf> | <advancedrocketry:moonturf_dark>, <ore:fiberBasalt>],
 [<ore:fiberBasalt>, <ore:fiberBasalt>, <ore:fiberBasalt>]]);
//Lunar concrete bottling machine recipes
BottlingMachine.addRecipe(<earthworks:block_concrete>, <ore:regolithAnyCobblestone>, <liquid:moltensulfur> * 125);
BottlingMachine.addRecipe(<earthworks:block_concrete>, <advancedrocketry:moonturf_dark>, <liquid:moltensulfur> * 125);
BottlingMachine.addRecipe(<immersiveengineering:stone_decoration:5>, <ore:regolithAny>, <liquid:moltensulfur> * 125);
BottlingMachine.addRecipe(<immersiveengineering:stone_decoration:5>, <advancedrocketry:moonturf>, <liquid:moltensulfur> * 125);
BottlingMachine.addRecipe(<engineersdecor:rebar_concrete>, <advancedrocketry:hotturf>, <liquid:moltensulfur> * 125);
