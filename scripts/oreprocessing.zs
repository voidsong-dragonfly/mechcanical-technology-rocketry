//Import
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Crusher;
import mods.modularmachinery.RecipeBuilder.newBuilder;
import mods.mekanism.crusher;
import crafttweaker.oredict.IOreDictEntry;


//Dirty water reclamation
var dirty_water_reclamation = newBuilder("dirty_water_reclamation", "sluice", 1);
dirty_water_reclamation.addFluidInput(<liquid:dirtywater> * 24);
dirty_water_reclamation.addItemOutput(<contenttweaker:stone_dust>).setChance(0.12);
dirty_water_reclamation.addItemOutput(<earthworks:item_sand>).setChance(0.04);
dirty_water_reclamation.addItemOutput(<minecraft:clay_ball>).setChance(0.02);
dirty_water_reclamation.addFluidOutput(<liquid:water> * 20);
dirty_water_reclamation.build();

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
var washed_bauxite_ore_dust = newBuilder("washed_bauxite_ore_dust", "washing_plant", 600);
washed_bauxite_ore_dust.addEnergyPerTickInput(320);
washed_bauxite_ore_dust.addItemInput(<mekores:mekanismore:33> * 24);
washed_bauxite_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_bauxite_ore_dust.addItemOutput(<contenttweaker:washed_bauxite_ore_dust> * 24);
washed_bauxite_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_bauxite_ore_dust.build();
furnace.addRecipe(<contenttweaker:calcined_red_mud>, <contenttweaker:red_mud_sludge>);
var red_mud_separation = newBuilder("red_mud_separation", "magnetic_separator", 4800);
red_mud_separation.addEnergyPerTickInput(3072);
red_mud_separation.addItemInput(<contenttweaker:calcined_red_mud> * 4);
red_mud_separation.addItemOutput(<contenttweaker:spent_red_mud> * 3);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18>).setChance(0.2);
red_mud_separation.addItemOutput(<contenttweaker:rutile_dust> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<contenttweaker:rutile_dust> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<contenttweaker:rutile_dust>).setChance(0.4);
red_mud_separation.addItemOutput(<contenttweaker:gallium_dust>).setChance(0.5);
red_mud_separation.addItemOutput(<contenttweaker:gallium_dust>).setChance(0.25);
red_mud_separation.build();
furnace.addRecipe(<contenttweaker:alumina_dust>, <contenttweaker:aluminium_hydroxide>);
furnace.addRecipe(<contenttweaker:alumina_dust>, <contenttweaker:washed_bauxite_ore_dust>);
Mixer.addRecipe(<liquid:moltencryolitesolution> * 100, <liquid:moltencryolite> * 100, [<contenttweaker:alumina_dust>], 4000);
var aluminium_electrolysis = newBuilder("aluminium_electrolysis", "electrolytic_cell_battery", 1600);
aluminium_electrolysis.addEnergyPerTickInput("10050");
aluminium_electrolysis.addItemInput(<immersiveengineering:graphite_electrode> * 8).setChance(0);
aluminium_electrolysis.addFluidInput(<liquid:moltencryolitesolution> * 3200);
aluminium_electrolysis.addFluidOutput(<liquid:moltenaluminium> * 3200);
aluminium_electrolysis.addFluidOutput(<liquid:liquidoxygen> * 4800);
aluminium_electrolysis.addFluidOutput(<liquid:moltencryolite> * 3200);
aluminium_electrolysis.build();
var cast_aluminium_ingot = newBuilder("cast_aluminium_ingot", "casting_basin", 400);
cast_aluminium_ingot.addFluidInput(<liquid:moltenaluminium> * 1600);
cast_aluminium_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
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
var washed_uranium_ore_dust = newBuilder("washed_uranium_ore_dust", "washing_plant", 600);
washed_uranium_ore_dust.addEnergyPerTickInput(320);
washed_uranium_ore_dust.addItemInput(<mekores:mekanismore:3> * 24);
washed_uranium_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_uranium_ore_dust.addItemOutput(<contenttweaker:washed_uranium_ore_dust> * 24);
washed_uranium_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_uranium_ore_dust.build();
Mixer.addRecipe(<liquid:uraniumsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<contenttweaker:washed_uranium_ore_dust>], 4000);
var uranium_tailings = newBuilder("uranium_tailings", "washing_plant", 100);
uranium_tailings.addEnergyPerTickInput(320);
uranium_tailings.addItemInput(<contenttweaker:stone_dust> * 16);
uranium_tailings.addFluidInput(<liquid:uraniumtailingssolution> * 2400);
uranium_tailings.addItemOutput(<contenttweaker:uranium_tailings> * 8);
uranium_tailings.addFluidOutput(<liquid:sulfuricacid> * 2000);
uranium_tailings.build();
furnace.addRecipe(<contenttweaker:yellowcake>, <contenttweaker:ammonium_diuranate>);
var yellowcake_agglomerate = newBuilder("yellowcake_agglomerate", "washing_plant", 1200);
yellowcake_agglomerate.addEnergyPerTickInput(160);
yellowcake_agglomerate.addItemInput(<contenttweaker:yellowcake> * 24);
yellowcake_agglomerate.addFluidInput(<liquid:water> * 800);
yellowcake_agglomerate.addItemOutput(<contenttweaker:yellowcake_agglomerate> * 24);
yellowcake_agglomerate.build();
Crusher.addRecipe(<contenttweaker:fine_yellowcake>, <contenttweaker:yellowcake_agglomerate>, 2400);


//Iron Processing
var washed_iron_ore_dust = newBuilder("washed_iron_ore_dust", "washing_plant", 600);
washed_iron_ore_dust.addEnergyPerTickInput(320);
washed_iron_ore_dust.addItemInput(<mekanism:dirtydust:0> * 24);
washed_iron_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_iron_ore_dust.addItemOutput(<contenttweaker:washed_iron_ore_dust> * 24);
washed_iron_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_iron_ore_dust.build();
var crude_iron = newBuilder("crude_iron", "large_blast_furnace", 2400);
crude_iron.addFluidInput(<liquid:heatedair> * 144000);
crude_iron.addItemInput(<contenttweaker:washed_iron_ore_dust> * 192);
crude_iron.addItemInput(<ore:dustAnyCarbon>, 192);
crude_iron.addItemInput(<ore:flux>, 64);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.build();
var high_carbon_steel = newBuilder("high_carbon_steel", "oxygen_converter", 100);
high_carbon_steel.addFluidInput(<liquid:moltencrudeiron> * 1200);
high_carbon_steel.addFluidInput(<liquid:liquidoxygen> * 300);
high_carbon_steel.addFluidInput(<liquid:water> * 1200);
high_carbon_steel.addFluidOutput(<liquid:moltenslag> * 800);
high_carbon_steel.addFluidOutput(<liquid:moltenhighcarbonsteel> * 1200);
high_carbon_steel.build();
var high_carbon_steel_magnesium = newBuilder("high_carbon_steel_magnesium", "oxygen_converter", 100);
high_carbon_steel_magnesium.addFluidInput(<liquid:moltencrudeiron> * 1200);
high_carbon_steel_magnesium.addFluidInput(<liquid:liquidoxygen> * 300);
high_carbon_steel_magnesium.addFluidInput(<liquid:water> * 1200);
high_carbon_steel_magnesium.addFluidInput(<liquid:moltenmagnesium> * 100);
high_carbon_steel_magnesium.addFluidOutput(<liquid:moltenslag> * 400);
high_carbon_steel_magnesium.addFluidOutput(<liquid:moltenhighcarbonsteel> * 1600);
high_carbon_steel_magnesium.build();
var steel = newBuilder("steel", "oxygen_converter", 100);
steel.addFluidInput(<liquid:moltencrudeiron> * 800);
steel.addFluidInput(<liquid:liquidoxygen> * 300);
steel.addFluidInput(<liquid:water> * 1200);
steel.addItemInput(<ore:dustAnyCarbon>, 8);
steel.addFluidOutput(<liquid:moltenslag> * 600);
steel.addFluidOutput(<liquid:moltensteel> * 800);
steel.build();
var steel_magnesium = newBuilder("steel_magnesium", "oxygen_converter", 100);
steel_magnesium.addFluidInput(<liquid:moltencrudeiron> * 900);
steel_magnesium.addFluidInput(<liquid:liquidoxygen> * 300);
steel_magnesium.addFluidInput(<liquid:water> * 1200);
steel_magnesium.addItemInput(<ore:dustAnyCarbon>, 9);
steel_magnesium.addFluidInput(<liquid:moltenmagnesium> * 90);
steel_magnesium.addFluidOutput(<liquid:moltenslag> * 300);
steel_magnesium.addFluidOutput(<liquid:moltensteel> * 1200);
steel_magnesium.build();
var cast_iron_ingot = newBuilder("cast_iron_ingot", "casting_basin", 400);
cast_iron_ingot.addFluidInput(<liquid:moltencrudeiron> * 1200);
cast_iron_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
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
var high_carbon_steel_ingot = newBuilder("high_carbon_steel_ingot", "casting_basin", 400);
high_carbon_steel_ingot.addFluidInput(<liquid:moltenhighcarbonsteel> * 1200);
high_carbon_steel_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
high_carbon_steel_ingot.addItemOutput(<contenttweaker:high_carbon_steel_ingot> * 12);
high_carbon_steel_ingot.build();
var high_carbon_steel_plate = newBuilder("high_carbon_steel_plate", "casting_basin", 400);
high_carbon_steel_plate.addFluidInput(<liquid:moltenhighcarbonsteel> * 1200);
high_carbon_steel_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
high_carbon_steel_plate.addItemOutput(<contenttweaker:high_carbon_steel_plate> * 12);
high_carbon_steel_plate.build();
var high_carbon_steel_rod = newBuilder("high_carbon_steel_rod", "casting_basin", 200);
high_carbon_steel_rod.addFluidInput(<liquid:moltenhighcarbonsteel> * 600);
high_carbon_steel_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
high_carbon_steel_rod.addItemOutput(<contenttweaker:high_carbon_steel_stick> * 12);
high_carbon_steel_rod.build();
var steel_ingot = newBuilder("steel_ingot", "casting_basin", 400);
steel_ingot.addFluidInput(<liquid:moltensteel> * 1200);
steel_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
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
var washed_tungsten_ore_dust = newBuilder("washed_tungsten_ore_dust", "washing_plant", 600);
washed_tungsten_ore_dust.addEnergyPerTickInput(320);
washed_tungsten_ore_dust.addItemInput(<mekores:mekanismore:108> * 24);
washed_tungsten_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_tungsten_ore_dust.addItemOutput(<contenttweaker:washed_tungsten_ore_dust> * 24);
washed_tungsten_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_tungsten_ore_dust.build();
var hydrated_tungsten_trioxide = newBuilder("hydrated_tungsten_trioxide", "washing_plant", 1200);
hydrated_tungsten_trioxide.addEnergyPerTickInput(160);
hydrated_tungsten_trioxide.addItemInput(<contenttweaker:washed_tungsten_ore_dust> * 24);
hydrated_tungsten_trioxide.addFluidInput(<liquid:liquidhydrogenchloride> * 7200);
hydrated_tungsten_trioxide.addItemOutput(<contenttweaker:hydrated_tungsten_trioxide> * 36);
hydrated_tungsten_trioxide.addItemOutput(<contenttweaker:calcium_chloride> * 36);
hydrated_tungsten_trioxide.build();
furnace.addRecipe(<contenttweaker:tungsten_trioxide>, <contenttweaker:hydrated_tungsten_trioxide>);
var tungsten_dust = newBuilder("tungsten_dust", "oxygen_converter", 400);
tungsten_dust.addItemInput(<contenttweaker:tungsten_trioxide> * 16);
tungsten_dust.addFluidInput(<liquid:liquidhydrogen> * 4800);
tungsten_dust.addFluidInput(<liquid:water> * 9600);
tungsten_dust.addItemOutput(<immersive_energy:metal:3> * 16);
tungsten_dust.build();

//Copper processing
var washed_copper_ore_dust = newBuilder("washed_copper_ore_dust", "washing_plant", 600);
washed_copper_ore_dust.addEnergyPerTickInput(320);
washed_copper_ore_dust.addItemInput(<mekanism:dirtydust:3> * 24);
washed_copper_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_copper_ore_dust.addItemOutput(<contenttweaker:washed_copper_ore_dust> * 24);
washed_copper_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_copper_ore_dust.build();
Mixer.addRecipe(<liquid:coppersulfatesolution> * 150, <liquid:sulfuricacid> * 150, [<contenttweaker:washed_copper_ore_dust>], 4000);
var copper_electrolysis = newBuilder("copper_electrolysis", "electrolytic_cell_battery", 400);
copper_electrolysis.addEnergyPerTickInput("3350");
copper_electrolysis.addItemInput(<ore:plateHighCarbonSteel>, 8).setChance(0);
copper_electrolysis.addFluidInput(<liquid:coppersulfatesolution> * 1600);
copper_electrolysis.addItemOutput(<immersiveengineering:metal:30> * 16);
copper_electrolysis.addItemOutput(<contenttweaker:copper_derived_anode_slime> * 1);
copper_electrolysis.addFluidOutput(<liquid:sulfuricacid> * 1600);
copper_electrolysis.build();
var copper_derived_anode_slime = newBuilder("copper_derived_anode_slime", "magnetic_separator", 3200);
copper_derived_anode_slime.addEnergyPerTickInput(3072);
copper_derived_anode_slime.addItemInput(<contenttweaker:copper_derived_anode_slime> * 8);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12>).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12>).setChance(0.4);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12>).setChance(0.2);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:19> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:19> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:19> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<contenttweaker:indium_dust>).setChance(0.8);
copper_derived_anode_slime.addItemOutput(<contenttweaker:indium_dust>).setChance(0.4);
copper_derived_anode_slime.build();

//Nickel Processing
var washed_nickel_ore_dust = newBuilder("washed_nickel_ore_dust", "washing_plant", 600);
washed_nickel_ore_dust.addEnergyPerTickInput(320);
washed_nickel_ore_dust.addItemInput(<mekores:mekanismore:13> * 24);
washed_nickel_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_nickel_ore_dust.addItemOutput(<contenttweaker:washed_nickel_ore_dust> * 24);
washed_nickel_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_nickel_ore_dust.build();
var nickel_matte = newBuilder("nickel_matte", "oxygen_converter", 200);
nickel_matte.addMekanismHeatInput(0, 1350, (1.0/0));
nickel_matte.addItemInput(<contenttweaker:washed_nickel_ore_dust> * 16);
nickel_matte.addFluidInput(<liquid:liquidoxygen> * 600);
nickel_matte.addFluidInput(<liquid:water> * 2400);
nickel_matte.addFluidOutput(<liquid:moltenslag> * 800);
nickel_matte.addFluidOutput(<liquid:moltennickelmatte> * 2400);
nickel_matte.build();
var nickel_matte_ingot = newBuilder("nickel_matte_ingot", "casting_basin", 400);
nickel_matte_ingot.addFluidInput(<liquid:moltennickelmatte> * 1600);
nickel_matte_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
nickel_matte_ingot.addItemOutput(<contenttweaker:nickel_matte_ingot> * 16);
nickel_matte_ingot.build();
Mixer.addRecipe(<liquid:nickelsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<contenttweaker:nickel_matte_ingot>], 4000);
var nickel_electrolysis = newBuilder("nickel_electrolysis", "electrolytic_cell_battery", 400);
nickel_electrolysis.addEnergyPerTickInput("5025");
nickel_electrolysis.addItemInput(<ore:plateNickel>, 8).setChance(0);
nickel_electrolysis.addFluidInput(<liquid:nickelsulfatesolution> * 1600);
nickel_electrolysis.addItemOutput(<immersiveengineering:metal:34> * 16);
nickel_electrolysis.addItemOutput(<contenttweaker:nickel_derived_anode_slime> * 2);
nickel_electrolysis.addFluidOutput(<liquid:sulfuricacid> * 1600);
nickel_electrolysis.build();  
var nickel_derived_anode_slime = newBuilder("nickel_derived_anode_slime", "magnetic_separator", 3200);
nickel_derived_anode_slime.addEnergyPerTickInput(3072);
nickel_derived_anode_slime.addItemInput(<contenttweaker:nickel_derived_anode_slime> * 8);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9> * 2).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9> * 2).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.75);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.6);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.4);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.25);
nickel_derived_anode_slime.addItemOutput(<contenttweaker:platinum_group_metal_dust_pt>).setChance(0.6);
nickel_derived_anode_slime.addItemOutput(<contenttweaker:platinum_group_metal_dust_pt>).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<contenttweaker:platinum_group_metal_dust_pt>).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<contenttweaker:platinum_group_metal_dust_pt>).setChance(0.4);
nickel_derived_anode_slime.build();

//Tin processing
var washed_tin_ore_dust = newBuilder("washed_tin_ore_dust", "washing_plant", 600);
washed_tin_ore_dust.addEnergyPerTickInput(320);
washed_tin_ore_dust.addItemInput(<mekanism:dirtydust:4> * 24);
washed_tin_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_tin_ore_dust.addItemOutput(<contenttweaker:washed_tin_ore_dust> * 24);
washed_tin_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_tin_ore_dust.build();
var impure_tin = newBuilder("impure_tin", "large_blast_furnace", 2400);
impure_tin.addFluidInput(<liquid:heatedair> * 96000);
impure_tin.addItemInput(<contenttweaker:washed_tin_ore_dust> * 192);
impure_tin.addItemInput(<ore:dustAnyCarbon>, 192);
impure_tin.addItemInput(<ore:flux>, 48);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.build();
var impure_tin_ingot = newBuilder("impure_tin_ingot", "casting_basin", 400);
impure_tin_ingot.addFluidInput(<liquid:impuremoltentin> * 1600);
impure_tin_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
impure_tin_ingot.addItemOutput(<contenttweaker:impure_tin_ingot> * 16);
impure_tin_ingot.build();
Mixer.addRecipe(<liquid:tinsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<contenttweaker:impure_tin_ingot>], 4000);
var tin_electrolysis = newBuilder("tin_electrolysis", "electrolytic_cell_battery", 400);
tin_electrolysis.addEnergyPerTickInput("5025");
tin_electrolysis.addItemInput(<ore:plateHighCarbonSteel>, 8).setChance(0);
tin_electrolysis.addFluidInput(<liquid:tinsulfatesolution> * 1600);
tin_electrolysis.addItemOutput(<libvulpes:productplate:5> * 16);
tin_electrolysis.addFluidOutput(<liquid:sulfuricacid> * 1600);
tin_electrolysis.build();

//Lead processing
var washed_lead_ore_dust = newBuilder("washed_lead_ore_dust", "washing_plant", 600);
washed_lead_ore_dust.addEnergyPerTickInput(320);
washed_lead_ore_dust.addItemInput(<mekanism:dirtydust:6> * 24);
washed_lead_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_lead_ore_dust.addItemOutput(<contenttweaker:washed_lead_ore_dust> * 24);
washed_lead_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_lead_ore_dust.build();
var molten_lead = newBuilder("molten_lead", "large_blast_furnace", 2400);
molten_lead.addFluidInput(<liquid:heatedair> * 96000);
molten_lead.addItemInput(<contenttweaker:lead_sinter> * 192);
molten_lead.addItemInput(<ore:dustAnyCarbon>, 192);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.build();
var lead_ingot = newBuilder("lead_ingot", "casting_basin", 400);
lead_ingot.addFluidInput(<liquid:moltenlead> * 1200);
lead_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
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
silver_ingot.addItemInput(<contenttweaker:ingot_mold>).setChance(0);
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
var washed_ilmenite_ore_dust = newBuilder("washed_ilmenite_ore_dust", "washing_plant", 600);
washed_ilmenite_ore_dust.addEnergyPerTickInput(320);
washed_ilmenite_ore_dust.addItemInput(<mekores:mekanismore:88> * 24);
washed_ilmenite_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_ilmenite_ore_dust.addItemOutput(<contenttweaker:washed_ilmenite_ore_dust> * 24);
washed_ilmenite_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_ilmenite_ore_dust.build();
var rutile_dust = newBuilder("rutile_dust", "large_blast_furnace", 7200);
rutile_dust.addFluidInput(<liquid:heatedair> * 192000);
rutile_dust.addItemInput(<contenttweaker:washed_ilmenite_ore_dust> * 192);
rutile_dust.addItemInput(<ore:dustAnyCarbon>, 288);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addItemOutput(<contenttweaker:rutile_dust> * 64);
rutile_dust.addItemOutput(<contenttweaker:rutile_dust> * 64);
rutile_dust.addItemOutput(<contenttweaker:rutile_dust> * 64);
rutile_dust.build();

//Platinum Processing
var platinum_group_metal_dust_pt = newBuilder("platinum_group_metal_dust_pt", "sluice", 75);
platinum_group_metal_dust_pt.addFluidInput(<liquid:water> * 1800);
platinum_group_metal_dust_pt.addItemInput(<mekores:mekanismore:18> * 6);
platinum_group_metal_dust_pt.addItemOutput(<contenttweaker:platinum_group_metal_dust_pt>);
platinum_group_metal_dust_pt.addFluidOutput(<liquid:dirtywater> * 1800);
platinum_group_metal_dust_pt.build();
var platinum_group_metal_dust_ir = newBuilder("platinum_group_metal_dust_ir", "sluice", 75);
platinum_group_metal_dust_ir.addFluidInput(<liquid:water> * 1800);
platinum_group_metal_dust_ir.addItemInput(<mekores:mekanismore:23> * 6);
platinum_group_metal_dust_ir.addItemOutput(<contenttweaker:platinum_group_metal_dust_ir>);
platinum_group_metal_dust_ir.addFluidOutput(<liquid:dirtywater> * 1800);
platinum_group_metal_dust_ir.build();
var platinum_group_metal_dust_os = newBuilder("platinum_group_metal_dust_os", "sluice", 75);
platinum_group_metal_dust_os.addFluidInput(<liquid:water> * 1800);
platinum_group_metal_dust_os.addItemInput(<mekanism:dirtydust:2> * 6);
platinum_group_metal_dust_os.addItemOutput(<contenttweaker:platinum_group_metal_dust_os>);
platinum_group_metal_dust_os.addFluidOutput(<liquid:dirtywater> * 1800);
platinum_group_metal_dust_os.build();
Mixer.addRecipe(<liquid:nitricacidhydrochloridept> * 100, <liquid:nitricacidhydrochloride> * 100, [<contenttweaker:platinum_group_metal_dust_pt>], 4000);
Mixer.addRecipe(<liquid:nitricacidhydrochlorideir> * 100, <liquid:nitricacidhydrochloride> * 100, [<contenttweaker:platinum_group_metal_dust_ir>], 4000);
Mixer.addRecipe(<liquid:nitricacidhydrochlorideos> * 100, <liquid:nitricacidhydrochloride> * 100, [<contenttweaker:platinum_group_metal_dust_os>], 4000);
furnace.addRecipe(<contenttweaker:platinum_ingot>, <contenttweaker:ammonium_chloroplatinate>);


//Gold Processing
var impure_gold_riffle = newBuilder("impure_gold_riffle", "sluice", 150);
impure_gold_riffle.addFluidInput(<liquid:water> * 1800);
impure_gold_riffle.addItemInput(<mekanism:dirtydust:1> * 6);
impure_gold_riffle.addItemOutput(<contenttweaker:impure_gold_riffle> * 6);
impure_gold_riffle.addFluidOutput(<liquid:dirtywater> * 1800);
impure_gold_riffle.build();
var gold_riffle = newBuilder("gold_riffle", "large_blast_furnace", 1200);
gold_riffle.addFluidInput(<liquid:heatedair> * 72000);
gold_riffle.addItemInput(<contenttweaker:impure_gold_riffle> * 256);
gold_riffle.addItemOutput(<contenttweaker:gold_riffle> * 64);
gold_riffle.addItemOutput(<contenttweaker:gold_riffle> * 64);
gold_riffle.addItemOutput(<contenttweaker:gold_riffle> * 64);
gold_riffle.addItemOutput(<contenttweaker:gold_riffle> * 64);
gold_riffle.build();
var mercury_gold_amalgam = newBuilder("mercury_gold_amalgam", "sluice", 300);
mercury_gold_amalgam.addFluidInput(<liquid:mercury> * 1600);
mercury_gold_amalgam.addItemInput(<contenttweaker:gold_riffle> * 6);
mercury_gold_amalgam.addItemOutput(<contenttweaker:mercury_gold_amalgam> * 6);
mercury_gold_amalgam.addItemOutput(<contenttweaker:stone_dust>);
mercury_gold_amalgam.addFluidOutput(<liquid:mercury> * 1000);
mercury_gold_amalgam.build();
furnace.addRecipe(<minecraft:gold_ingot>, <contenttweaker:mercury_gold_amalgam>);


//Silver processing
var impure_silver_riffle = newBuilder("impure_silver_riffle", "sluice", 150);
impure_silver_riffle.addFluidInput(<liquid:water> * 1800);
impure_silver_riffle.addItemInput(<mekanism:dirtydust:5> * 6);
impure_silver_riffle.addItemOutput(<contenttweaker:impure_silver_riffle> * 6);
impure_silver_riffle.addFluidOutput(<liquid:dirtywater> * 1800);
impure_silver_riffle.build();
var silver_riffle = newBuilder("silver_riffle", "large_blast_furnace", 1200);
silver_riffle.addFluidInput(<liquid:heatedair> * 72000);
silver_riffle.addItemInput(<contenttweaker:impure_silver_riffle> * 256);
silver_riffle.addItemOutput(<contenttweaker:silver_riffle> * 64);
silver_riffle.addItemOutput(<contenttweaker:silver_riffle> * 64);
silver_riffle.addItemOutput(<contenttweaker:silver_riffle> * 64);
silver_riffle.addItemOutput(<contenttweaker:silver_riffle> * 64);
silver_riffle.build();
var mercury_silver_amalgam = newBuilder("mercury_silver_amalgam", "sluice", 300);
mercury_silver_amalgam.addFluidInput(<liquid:mercury> * 1600);
mercury_silver_amalgam.addItemInput(<contenttweaker:silver_riffle> * 6);
mercury_silver_amalgam.addItemOutput(<contenttweaker:mercury_silver_amalgam> * 6);
mercury_silver_amalgam.addItemOutput(<contenttweaker:stone_dust>);
mercury_silver_amalgam.addFluidOutput(<liquid:mercury> * 1000);
mercury_silver_amalgam.build();
furnace.addRecipe(<immersiveengineering:metal:3>, <contenttweaker:mercury_silver_amalgam>);


//Niobium processing
//Associated with zirconium - same vein for both
Crusher.addRecipe(<contenttweaker:pyrochlore_ore_dust> * 2, <ore:oreNiobium>, 4000, <immersive_energy:metal:2>, 0.1);
crusher.addRecipe(<ore:oreNiobium>, <contenttweaker:pyrochlore_ore_dust> * 2);
var washed_pyrochlore_ore_dust = newBuilder("washed_pyrochlore_ore_dust", "washing_plant", 600);
washed_pyrochlore_ore_dust.addEnergyPerTickInput(320);
washed_pyrochlore_ore_dust.addItemInput(<contenttweaker:pyrochlore_ore_dust> * 24);
washed_pyrochlore_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_pyrochlore_ore_dust.addItemOutput(<contenttweaker:washed_pyrochlore_ore_dust> * 24);
washed_pyrochlore_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_pyrochlore_ore_dust.build();
var niobium_pentoxide = newBuilder("niobium_pentoxide", "oxygen_converter", 200);
niobium_pentoxide.addMekanismHeatInput(0, 2100, (1.0/0));
niobium_pentoxide.addItemInput(<contenttweaker:niobium_ferroalloy_ingot> * 16);
niobium_pentoxide.addFluidInput(<liquid:liquidoxygen> * 600);
niobium_pentoxide.addFluidInput(<liquid:water> * 2400);
niobium_pentoxide.addFluidOutput(<liquid:moltenslag> * 100);
niobium_pentoxide.addFluidOutput(<liquid:moltencrudeiron> * 300);
niobium_pentoxide.addItemOutput(<contenttweaker:niobium_pentoxide_dust> * 12);
niobium_pentoxide.build();
var niobium_ingot = newBuilder("niobium_ingot", "precision_laser_engraver", 200);
niobium_ingot.addItemInput(<contenttweaker:impure_niobium_dust>);
niobium_ingot.addItemInput(<contenttweaker:glass_lens>).setChance(0);
niobium_ingot.addItemOutput(<contenttweaker:niobium_ingot>);
niobium_ingot.build();


//Zirconium processing
Crusher.addRecipe(<contenttweaker:zircon_ore_dust> * 2, <ore:oreZirconium>, 4000, <contenttweaker:rutile_dust>, 0.05);
crusher.addRecipe(<ore:oreZirconium>, <contenttweaker:zircon_ore_dust> * 2);
var washed_zircon_ore_dust = newBuilder("washed_zircon_ore_dust", "washing_plant", 600);
washed_zircon_ore_dust.addEnergyPerTickInput(320);
washed_zircon_ore_dust.addItemInput(<contenttweaker:zircon_ore_dust> * 24);
washed_zircon_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_zircon_ore_dust.addItemOutput(<contenttweaker:washed_zircon_ore_dust> * 24);
washed_zircon_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_zircon_ore_dust.build();
