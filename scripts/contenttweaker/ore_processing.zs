#loader contenttweaker
//Import
import mods.contenttweaker.VanillaFactory.createFluid;
import mods.contenttweaker.VanillaFactory.createItem;
import mods.contenttweaker.VanillaFactory.createBlock;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import scripts.contenttweaker.contenttweaker_functions.create_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_solid_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_molten_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_gas;
import scripts.contenttweaker.contenttweaker_functions.create_block;
import scripts.contenttweaker.contenttweaker_functions.create_block_sound;
import scripts.contenttweaker.contenttweaker_functions.create_block_transparent;



//Dirty Water
var dirtywater = createFluid("dirtywater", Color.fromHex("343574"));
dirtywater.register();

//Mercury
create_solid_fluid("mercury", "6B6B6B", 300, 13500, 1000);

//Aluminium processing blocks
create_block_sound("red_mud_sludge", <blockmaterial:sand>, 0.8, 0.8, "shovel", <soundtype:ground>, 0);
create_block_sound("calcined_red_mud", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("spent_red_mud", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:sand>, 0);
//Aluminium processing fluids
create_fluid("sodiumhydroxidesolution", "4A5CF5", 300, 3000, 7800);
create_fluid("impuresodiumaluminatesolution", "1A1A20", 300, 3100, 7800);
create_fluid("sodiumaluminatesolution", "1A1A20", 300, 2000, 7800);
create_molten_fluid("moltencryolite", "ECCEDB", 1350, 2950, 10000);
create_molten_fluid("moltencryolitesolution", "ECCEDB", 1350, 3050, 10000);
create_molten_fluid("moltenaluminium", "899596", 940, 2375, 10000);

//Uranium processing blocks
create_block_sound("uranium_tailings", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:ground>, 0);
//Uranium processing fluids
create_fluid("uraniumsulfatesolution", "6E6D31", 300, 2000, 1000);
create_fluid("uraniumtailingssolution", "1E221C", 300, 2000, 1000);

//Iron processing fluids
create_molten_fluid("moltencrudeiron", "BE8972", 1800, 6900, 10000);
create_molten_fluid("moltensteel", "CB8A44", 2000, 7750, 10000);
create_molten_fluid("moltenslag", "725E55", 1800, 2600, 10000);

//Copper processing fluids
create_fluid("coppersulfatesolution", "6E6D31", 300, 2000, 1000);

//Nickel processing fluids
create_fluid("nickelsulfatesolution", "6E6D31", 300, 2000, 1000);
create_molten_fluid("moltennickelmatte", "948E7F", 1800, 8900, 10000);

//Tin processing fluids
create_fluid("tinsulfatesolution", "6E6D31", 300, 2000, 1000);
create_molten_fluid("impuremoltentin", "F2E9E0", 1800, 7000, 10000);

//Lead processing fluids
create_molten_fluid("moltenlead", "404046", 1800, 10600, 10000);
create_molten_fluid("moltensilver", "95A2A7", 1200, 9320, 10000);

//Platinum processing fluids
create_fluid("nitricacidhydrochloridept", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideir", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideos", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideptprocessed", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideirprocessed", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideosprocessed", "D95E4C", 300, 1210, 1000);
create_fluid("osacidicsolution", "82802B", 300, 1820, 1000);
