//Import
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Crusher;
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.modularmachinery.RecipeBuilder.newBuilder;
import crafttweaker.oredict.IOreDictEntry;



//Heated Air production
var heated_air = newBuilder("heated_air", "blast_preheater", 1);
heated_air.addMekanismHeatInput(0, 1500, (1.0/0));
heated_air.addFluidInput(<liquid:air> * 20);
heated_air.addFluidOutput(<liquid:heatedair> * 20);
heated_air.build();

//Molten slag to slag
var slag = newBuilder("slag", "casting_basin", 200);
slag.addFluidInput(<liquid:moltenslag> * 1200);
slag.addItemOutput(<immersiveengineering:material:7> * 12);
slag.build();

//Aluminium Processing
furnace.addRecipe(<contenttweaker:calcined_red_mud>, <contenttweaker:red_mud_sludge>);
furnace.addRecipe(<ore:dustAlumina>.firstItem, <ore:dustAluminiumHydroxide>.firstItem);
furnace.addRecipe(<ore:dustAlumina>.firstItem, <mekores:mekanismore:33>);
Mixer.addRecipe(<liquid:moltencryolitesolution> * 100, <liquid:moltencryolite> * 100, [<ore:dustAlumina>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:liquidoxygen> * 4800, <liquid:moltenaluminium> * 3200, <liquid:moltencryolite> * 3200, null, <liquid:moltencryolitesolution> * 3200, 16080000, 1600);
var cast_aluminium_ingot = newBuilder("cast_aluminium_ingot", "casting_basin", 400);
cast_aluminium_ingot.addFluidInput(<liquid:moltenaluminium> * 1600);
cast_aluminium_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
cast_aluminium_ingot.addItemOutput(<immersiveengineering:metal:1> * 16);
cast_aluminium_ingot.build();
var cast_aluminium_plate = newBuilder("cast_aluminium_plate", "casting_basin", 400);
cast_aluminium_plate.addFluidInput(<liquid:moltenaluminium> * 1600);
cast_aluminium_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
cast_aluminium_plate.addItemOutput(<immersiveengineering:metal:31> * 16);
cast_aluminium_plate.build();
var cast_aluminium_rod = newBuilder("cast_aluminium_rod", "casting_basin", 200);
cast_aluminium_rod.addFluidInput(<liquid:moltenaluminium> * 800);
cast_aluminium_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
cast_aluminium_rod.addItemOutput(<immersiveengineering:material:3> * 16);
cast_aluminium_rod.build();


//Uranium processing
Mixer.addRecipe(<liquid:uraniumsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<mekores:mekanismore:3>], 4000);
furnace.addRecipe(<ore:dustYellowcake>.firstItem, <ore:dustAmmoniumDiuranate>.firstItem);
Crusher.addRecipe(<ore:dustFineYellowcake>.firstItem, <ore:dustYellowcake>.firstItem, 2400);


//Iron Processing
var crude_iron = newBuilder("crude_iron", "large_blast_furnace", 2400);
crude_iron.addFluidInput(<liquid:heatedair> * 144000);
crude_iron.addItemInput(<ore:dustDirtyIron>.firstItem * 192);
crude_iron.addItemInput(<ore:dustAnyCarbon>, 192);
crude_iron.addItemInput(<ore:flux>, 64);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.build();
var steel = newBuilder("steel", "oxygen_converter", 100);
steel.addFluidInput(<liquid:moltencrudeiron> * 1200);
steel.addFluidInput(<liquid:liquidoxygen> * 300);
steel.addFluidInput(<liquid:water> * 1200);
steel.addFluidOutput(<liquid:moltenslag> * 800);
steel.addFluidOutput(<liquid:moltensteel> * 1200);
steel.build();
var steel_magnesium = newBuilder("steel_magnesium", "oxygen_converter", 100);
steel_magnesium.addFluidInput(<liquid:moltencrudeiron> * 1200);
steel_magnesium.addFluidInput(<liquid:liquidoxygen> * 300);
steel_magnesium.addFluidInput(<liquid:water> * 1200);
steel_magnesium.addFluidInput(<liquid:moltenmagnesium> * 100);
steel_magnesium.addFluidOutput(<liquid:moltenslag> * 400);
steel_magnesium.addFluidOutput(<liquid:moltensteel> * 1600);
steel_magnesium.build();
var cast_iron_ingot = newBuilder("cast_iron_ingot", "casting_basin", 400);
cast_iron_ingot.addFluidInput(<liquid:moltencrudeiron> * 1200);
cast_iron_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
cast_iron_ingot.addItemOutput(<minecraft:iron_ingot> * 12);
cast_iron_ingot.build();
var cast_iron_plate = newBuilder("cast_iron_plate", "casting_basin", 400);
cast_iron_plate.addFluidInput(<liquid:moltencrudeiron> * 1200);
cast_iron_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
cast_iron_plate.addItemOutput(<immersiveengineering:metal:39> * 12);
cast_iron_plate.build();
var cast_iron_rod = newBuilder("cast_iron_rod", "casting_basin", 200);
cast_iron_rod.addFluidInput(<liquid:moltencrudeiron> * 600);
cast_iron_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
cast_iron_rod.addItemOutput(<immersiveengineering:material:1> * 12);
cast_iron_rod.build();
var steel_ingot = newBuilder("steel_ingot", "casting_basin", 400);
steel_ingot.addFluidInput(<liquid:moltensteel> * 1200);
steel_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
steel_ingot.addItemOutput(<immersiveengineering:metal:8> * 12);
steel_ingot.build();
var steel_plate = newBuilder("steel_plate", "casting_basin", 400);
steel_plate.addFluidInput(<liquid:moltensteel> * 1200);
steel_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
steel_plate.addItemOutput(<immersiveengineering:metal:38> * 12);
steel_plate.build();
var steel_rod = newBuilder("steel_rod", "casting_basin", 200);
steel_rod.addFluidInput(<liquid:moltensteel> * 600);
steel_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
steel_rod.addItemOutput(<immersiveengineering:material:2> * 12);
steel_rod.build();

//Tungsten processing
furnace.addRecipe(<ore:dustTungstenTrioxide>.firstItem, <ore:dustHydratedTungstenTrioxide>.firstItem);
var tungsten_dust = newBuilder("tungsten_dust", "oxygen_converter", 400);
tungsten_dust.addItemInput(<ore:dustTungstenTrioxide>.firstItem * 16);
tungsten_dust.addFluidInput(<liquid:liquidhydrogen> * 4800);
tungsten_dust.addFluidInput(<liquid:water> * 9600);
tungsten_dust.addItemOutput(<ore:dustTungsten>.firstItem * 16);
tungsten_dust.build();

//Copper processing
Mixer.addRecipe(<liquid:coppersulfatesolution> * 150, <liquid:sulfuricacid> * 150, [<ore:dustDirtyCopper>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuricacid> * 1200, null, <liquid:coppersulfatesolutionresidue> * 400, <immersiveengineering:metal:30> * 16, <liquid:coppersulfatesolution> * 1600, 1340000, 400);

//Nickel Processing
var nickel_matte = newBuilder("nickel_matte", "oxygen_converter", 200);
nickel_matte.addMekanismHeatInput(0, 1350, (1.0/0));
nickel_matte.addItemInput(<mekores:mekanismore:13> * 16);
nickel_matte.addFluidInput(<liquid:liquidoxygen> * 600);
nickel_matte.addFluidInput(<liquid:water> * 2400);
nickel_matte.addFluidOutput(<liquid:moltenslag> * 800);
nickel_matte.addFluidOutput(<liquid:moltennickelmatte> * 2400);
nickel_matte.build();
var nickel_matte_ingot = newBuilder("nickel_matte_ingot", "casting_basin", 400);
nickel_matte_ingot.addFluidInput(<liquid:moltennickelmatte> * 1600);
nickel_matte_ingot.addItemOutput(<ore:slagNickelMatte>.firstItem * 16);
nickel_matte_ingot.build();
Mixer.addRecipe(<liquid:nickelsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<ore:slagNickelMatte>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuricacid> * 1200, null, <liquid:nickelsulfatesolutionresidue> * 400, <immersiveengineering:metal:34> * 16, <liquid:nickelsulfatesolution> * 1600, 2010000, 400);

//Tin processing
var impure_tin = newBuilder("impure_tin", "large_blast_furnace", 2400);
impure_tin.addFluidInput(<liquid:heatedair> * 96000);
impure_tin.addItemInput(<ore:dustDirtyTin>.firstItem * 192);
impure_tin.addItemInput(<ore:dustAnyCarbon>, 192);
impure_tin.addItemInput(<ore:flux>, 48);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.build();
var impure_tin_ingot = newBuilder("impure_tin_ingot", "casting_basin", 400);
impure_tin_ingot.addFluidInput(<liquid:impuremoltentin> * 1600);
impure_tin_ingot.addItemOutput(<ore:slagImpureTin>.firstItem * 16);
impure_tin_ingot.build();
Mixer.addRecipe(<liquid:tinsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<ore:slagImpureTin>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuricacid> * 1600, null, null, <libvulpes:productplate:5> * 16, <liquid:tinsulfatesolution> * 1600, 2010000, 400);

//Lead processing
var molten_lead = newBuilder("molten_lead", "large_blast_furnace", 2400);
molten_lead.addFluidInput(<liquid:heatedair> * 96000);
molten_lead.addItemInput(<ore:slagLeadSinter>.firstItem * 192);
molten_lead.addItemInput(<ore:dustAnyCarbon>, 192);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.build();
var lead_ingot = newBuilder("lead_ingot", "casting_basin", 400);
lead_ingot.addFluidInput(<liquid:moltenlead> * 1200);
lead_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
lead_ingot.addItemOutput(<immersiveengineering:metal:2> * 12);
lead_ingot.addFluidOutput(<liquid:moltensilver> * 200);
lead_ingot.build();
var lead_plate = newBuilder("lead_plate", "casting_basin", 400);
lead_plate.addFluidInput(<liquid:moltenlead> * 1200);
lead_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
lead_plate.addItemOutput(<immersiveengineering:metal:32> * 12);
lead_plate.addFluidOutput(<liquid:moltensilver> * 200);
lead_plate.build();
var lead_rod = newBuilder("lead_rod", "casting_basin", 200);
lead_rod.addFluidInput(<liquid:moltenlead> * 600);
lead_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
lead_rod.addItemOutput(<immersiveposts:metal_rods:2> * 12);
lead_rod.addFluidOutput(<liquid:moltensilver> * 100);
lead_rod.build();
var silver_ingot = newBuilder("silver_ingot", "casting_basin", 400);
silver_ingot.addFluidInput(<liquid:moltensilver> * 1200);
silver_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
silver_ingot.addItemOutput(<immersiveengineering:metal:3> * 12);
silver_ingot.build();
var silver_plate = newBuilder("silver_plate", "casting_basin", 400);
silver_plate.addFluidInput(<liquid:moltensilver> * 1200);
silver_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
silver_plate.addItemOutput(<immersiveengineering:metal:33> * 12);
silver_plate.build();
var silver_rod = newBuilder("silver_rod", "casting_basin", 200);
silver_rod.addFluidInput(<liquid:moltensilver> * 600);
silver_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
silver_rod.addItemOutput(<immersiveposts:metal_rods:3> * 12);
silver_rod.build();

//Titanium processing
var rutile_dust = newBuilder("rutile_dust", "large_blast_furnace", 7200);
rutile_dust.addFluidInput(<liquid:heatedair> * 192000);
rutile_dust.addItemInput(<mekores:mekanismore:88> * 192);
rutile_dust.addItemInput(<ore:dustAnyCarbon>, 288);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.build();

//Platinum Processing
Mixer.addRecipe(<liquid:nitricacidhydrochloridept> * 100, <liquid:nitricacidhydrochloride> * 100, [<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({metal: "platinum"})], 4000);
Mixer.addRecipe(<liquid:nitricacidhydrochlorideir> * 100, <liquid:nitricacidhydrochloride> * 100, [<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({metal: "iridium"})], 4000);
furnace.addRecipe(<ore:ingotPlatinum>.firstItem, <ore:dustAmmoniumChloroplatinate>.firstItem);


//Gold and silver processing
furnace.addRecipe(<ore:dustWashedGold>.firstItem, <ore:dustDirtyGold>);
furnace.addRecipe(<minecraft:gold_ingot>, <ore:amalgamMercuryGold>.firstItem);
furnace.addRecipe(<ore:dustWashedSilver>.firstItem, <ore:dustDirtySilver>);
furnace.addRecipe(<immersiveengineering:metal:3>, <ore:amalgamMercurySilver>.firstItem);


//Niobium processing
//Associated with zirconium - same vein for both
var niobium_pentoxide = newBuilder("niobium_pentoxide", "oxygen_converter", 200);
niobium_pentoxide.addMekanismHeatInput(0, 2100, (1.0/0));
niobium_pentoxide.addItemInput(<ore:slagNiobiumFerroalloy>.firstItem * 16);
niobium_pentoxide.addFluidInput(<liquid:liquidoxygen> * 600);
niobium_pentoxide.addFluidInput(<liquid:water> * 2400);
niobium_pentoxide.addFluidOutput(<liquid:moltenslag> * 100);
niobium_pentoxide.addFluidOutput(<liquid:moltencrudeiron> * 300);
niobium_pentoxide.addItemOutput(<ore:dustNiobiumPentoxide>.firstItem * 12);
niobium_pentoxide.build();
