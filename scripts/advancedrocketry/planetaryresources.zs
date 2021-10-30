//Import
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.immersivetechnology.MeltingCrucible;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Crusher;



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
 [<minecraft:dirt>, <liquid:water> * 1000]]);
