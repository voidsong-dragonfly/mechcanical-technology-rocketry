//Import
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.ITooltipFunction;



//Consistency changes in other mods
//Make AR Sawbade item from "Iron" to "Diamond"
game.setLocalization("item.sawBlade.0.name", "Diamond Saw Blade");

//Ultimate Universal Cable to "Superconducting Cable"
game.setLocalization("tile.Transmitter.UltimateUniversalCable.name", "Superconducting Cable");

//Bio Fuel to "Lightly Sulfated Ethanol Residue"
game.setLocalization("item.BioFuel.name", "Lightly Sulfated Ethanol Resiude");

//Make mekanism gasses "pressurized" but fluids normal
game.setLocalization("gas.hydrogen", "Pressurized Hydrogen");
game.setLocalization("gas.oxygen", "Pressurized Oxygen");
game.setLocalization("gas.chlorine", "Pressurized Chlorine");
game.setLocalization("gas.sulfurdioxide", "Pressurized Sulfur Dioxide");
game.setLocalization("gas.sulfurtrioxide", "Pressurized Sulfur Trioxide");
game.setLocalization("gas.sulfuricacid", "Pressurized Sulfuric Acid");
game.setLocalization("gas.hydrogenchloride", "Pressurized Hydrogen Chloride");
game.setLocalization("gas.ethene", "Pressurized Ethylene");
game.setLocalization("gas.sodium", "Pressurized Molten Sodium");
game.setLocalization("gas.brine", "Pressurized Brine");
game.setLocalization("gas.water", "Pressurized Water Vapor");
game.setLocalization("gas.deuterium", "Pressurized Deuterium");
game.setLocalization("gas.tritium", "Pressurized Tritium");
game.setLocalization("gas.lithium", "Pressurized Molten Lithium");
game.setLocalization("gas.fusionfuel", "Pressurized D-T Fuel");

game.setLocalization("fluid.liquidhydrogen", "Hydrogen");
game.setLocalization("fluid.liquidoxygen", "Oxygen");
game.setLocalization("fluid.liquidchlorine", "Chlorine");
game.setLocalization("fluid.liquidsulfurdioxide", "Sulfur Dioxide");
game.setLocalization("fluid.liquidsulfurtrioxide", "Sulfur Trioxide");
game.setLocalization("fluid.liquidhydrogenchloride", "Hydrogen Chloride");
game.setLocalization("fluid.liquidethene", "Ethylene");
game.setLocalization("fluid.liquidsodium", "Molten Sodium");
game.setLocalization("fluid.liquidlithium", "Molten Lithium");
game.setLocalization("fluid.liquiddeuterium", "Deuterium");
game.setLocalization("fluid.liquidtritium", "Tritium");
game.setLocalization("fluid.liquidfusionfuel", "D-T Fuel");
game.setLocalization("fluid.heavywater", "Semiheavy Water");

//Rotary condensentrator GUI
game.setLocalization("gui.condensentrating", "Depressurizing");
game.setLocalization("gui.decondensentrating", "Pressurizing");

//Osmium dust to grit
game.setLocalization("item.osmiumDust.name", "Osmium Grit");

//Make Quark slate dolomite because I need a good spawn for that
game.setLocalization("tile.quark:stone_slate.name", "Dolomite");
game.setLocalization("tile.quark:stone_slate_smooth.name", "Polished Dolomite");
game.setLocalization("tile.quark:stone_slate_slab.name", "Dolomite Slab");
game.setLocalization("tile.quark:stone_slate_stairs.name", "Dolomite Stairs");
game.setLocalization("tile.quark:stone_slate_bricks.name", "Dolomite Bricks");
game.setLocalization("tile.quark:stone_slate_bricks_slab.name", "Dolomite Brick Slab");
game.setLocalization("tile.quark:stone_slate_bricks_stairs.name", "Dolomite Brick Stairs");
game.setLocalization("tile.quark:stone_slate_carved.name", "Chiseled Dolomite Bricks");
game.setLocalization("tile.quark:stone_slate_bricks_wall.name", "Dolomite Brick Wall");
game.setLocalization("tile.quark:slate_wall.name", "Dolomite Wall");
game.setLocalization("tile.quark:slate_speleothem.name", "Dolomite Speleothem");
game.setLocalization("tile.quark:stone_slate_pavement.name", "Dolomite Pavement");

//Capacitor to battery rename
game.setLocalization("tile.immersiveengineering.metal_device0.capacitor_mv.name", "MV Battery Bank");
game.setLocalization("tile.immersiveengineering.metal_device0.capacitor_hv.name", "HV Battery Bank");

//Make Mekanism ore pieces the names of the actual ore they're processing
//And make LV "Rutile" Ilmenite, and "Aluminum" Aluminium
//Ilmenite and Bauxite & dilithium
game.setLocalization("tile.Rutile.name", "Ilmenite Ore");
game.setLocalization("material.Rutile.name", "Ilmenite");
game.setLocalization("mekores.ore.aluminum", "Bauxite");
game.setLocalization("mekores.ore.titanium", "Ilmenite");
game.setLocalization("material.Aluminum.name", "Aluminium");
game.setLocalization("mekores.ore.dilithium", "Niobium");
//Mekanism Ores
game.setLocalization("item.mekores:dustDirty.name", "%s Ore Dust");
//Mekanism
game.setLocalization("item.dirtyIronDust.name", "Iron Ore Dust");
game.setLocalization("item.dirtyGoldDust.name", "Gold Ore Dust");
game.setLocalization("item.dirtyOsmiumDust.name", "Osmium Ore Dust");
game.setLocalization("item.dirtyCopperDust.name", "Copper Ore Dust");
game.setLocalization("item.dirtyTinDust.name", "Tin Ore Dust");
game.setLocalization("item.dirtySilverDust.name", "Silver Ore Dust");
game.setLocalization("item.dirtyLeadDust.name", "Lead Ore Dust");

//Redone alloys & materials
game.setLocalization("material.TitaniumAluminide.name", "Aluminium Magnesium Titanide");
game.setLocalization("material.Copper.name", "Annealed Copper");

//Induction Tablet
<ore:inductionTabletItem>.firstItem.addShiftTooltip("A Lithium-Ion battery cell designed for long life, large storage, and a slim profile. Many of these can be slotted into a casing, along with a circuit to control them, to make an induction cell. Note that by being designed for an Induction Matrix, they are theyfore not able to hold a charge outside of one.", "Hold" ~ format.darkBlue(" LSHIFT ") ~ format.gray("for details."));

//AF to "HVDC"
//Blocks
game.setLocalization("tile.alternatingflux.connector.connector_af.name", "HVDC Wire Connector");
game.setLocalization("tile.alternatingflux.connector.relay_af.name", "HVDC Wire Relay");
game.setLocalization("tile.alternatingflux.connector.transformer_af.name", "HVDC Transformer");
//Items
game.setLocalization("item.alternatingflux.wirecoil.af.name", "HVDC Wire Coil");
game.setLocalization("itemGroup.alternatingflux", "HVDC");
game.setLocalization("tile.immersiveengineering.metal_decoration0.coil_mv.name", "Medium-Voltage Coil Block");
//Manual stuff is in lang file because it didn't work here

//Rustic stone pillar to Fission Reactor Fuel Assembly Channel
//This wouldn't need to be done if ContentTweaker could make log or pillar-style blocks
game.setLocalization("tile.rustic.stone_pillar.name", "Fission Reactor Fuel Assembly Channel");

//Quartz Crucible to Iridium Crucible
game.setLocalization("tile.qcrucible.name", "Iridium Crucible");

//AR Concrete to cement
game.setLocalization("tile.concrete.name", "Cement");

//AR Crystals to their actual names
game.setLocalization("tile.ruby.name", "Large Ruby Crystal");
game.setLocalization("tile.emerald.name", "Large Emerald Crystal");
game.setLocalization("tile.sapphire.name", "Large Sapphire Crystal");
game.setLocalization("tile.citrine.name", "Large Citrine Crystal");
game.setLocalization("tile.wulfentite.name", "Large Wulfentite Crystal");
game.setLocalization("tile.amethyst.name", "Large Amethyst Crystal");

//AR "Some Random Data" to "Undefined Data Type"
game.setLocalization("data.undefined.name", "Undefined Data Type");

//Make AR circuits respect their actual uses
game.setLocalization("item.circuitIC.3.name", "Item IO Circuit Board");
game.setLocalization("item.circuitIC.4.name", "Energy IO Circuit Board");
game.setLocalization("item.circuitIC.5.name", "Liquid IO Circuit Board");

//Rename Uranium items to Uranium Dioxide items
game.setLocalization("tile.immersiveengineering.storage.uranium.name", "Block of Uranium Dioxide");
game.setLocalization("tile.immersiveengineering.storage_slab.uranium.name", "Uranium Dioxide Slab");
game.setLocalization("tile.immersiveengineering.sheetmetal.uranium.name", "Uranium Dioxide Sheetmetal");
game.setLocalization("tile.immersiveengineering.sheetmetal_slab.uranium.name", "Uranium Dioxide Sheetmetal Slab");
game.setLocalization("item.immersiveengineering.metal.ingot_uranium.name", "Uranium Dioxide Ingot");
game.setLocalization("item.immersiveengineering.metal.dust_uranium.name", "Uranium Dioxide Grit");
game.setLocalization("item.immersiveengineering.metal.nugget_uranium.name", "Uranium Dioxide Nugget");
game.setLocalization("item.immersiveengineering.metal.plate_uranium.name", "Uranium Dioxide Plate");

game.setLocalization("tile.immersiveposts.uraniumpost.name", "Uranium Dioxide Post");
game.setLocalization("tile.immersiveposts.fence_uranium.name", "Uranium Dioxide Fence");
game.setLocalization("item.immersiveposts.metal_rods.stick_uranium.name", "Uranium Dioxide Rod");
game.setLocalization("item.immersiveposts.metal_rods.stick_uranium.name", "Uranium Dioxide Rod");
game.setLocalization("index.page_0_entry.13", "Uranium Dioxide");

//Rename Constantan items to Tungsten items
game.setLocalization("tile.immersiveengineering.storage.constantan.name", "Block of Tungsten");
game.setLocalization("tile.immersiveengineering.storage_slab.constantan.name", "Tungsten Slab");
game.setLocalization("tile.immersiveengineering.sheetmetal.constantan.name", "Tungsten Sheetmetal");
game.setLocalization("tile.immersiveengineering.sheetmetal_slab.constantan.name", "Tungsten Sheetmetal Slab");
game.setLocalization("item.immersiveengineering.metal.ingot_constantan.name", "Tungsten Ingot");
game.setLocalization("item.immersiveengineering.metal.dust_constantan.name", "Tungsten Grit");
game.setLocalization("item.immersiveengineering.metal.nugget_constantan.name", "Tungsten Nugget");
game.setLocalization("item.immersiveengineering.metal.plate_constantan.name", "Tungsten Plate");

game.setLocalization("tile.immersiveposts.constantanpost.name", "Tungsten Post");
game.setLocalization("tile.immersiveposts.fence_constantan.name", "Tungsten Fence");
game.setLocalization("item.immersiveposts.metal_rods.stick_constantan.name", "Tungsten Rod");
game.setLocalization("item.immersiveposts.metal_rods.stick_constantan.name", "Tungsten Rod");

game.setLocalization("item.alternatingflux.material.wire_constantan.name", "Tungsten Wire");

game.setLocalization("ie.manual.entry.alloys0", "Mixing dusts creates an alloy blend that can then be smelted into alloyed ingots. Nickel and copper have thermo-electric properties and are used in creating the <link;generator;§o§nthermoelectric §o§ngenerator§r;1> and electrum is an excellent electric conductor used in circuitry.");

//Osmium to LEU rename
game.setLocalization("tile.BasicBlock.OsmiumBlock.name", "Lightly Enriched Uranium Dioxide Block");
game.setLocalization("item.osmiumDust.name", "Lightly Enriched Uranium Dioxide Dust");
game.setLocalization("item.osmiumIngot.name", "Lightly Enriched Uranium Dioxide Ingot");
game.setLocalization("item.osmiumNugget.name", "Lightly Enriched Uranium Dioxide Nugget");

//Modular Machinery hatches
game.setLocalization("tile.modularmachinery.blockinputbus.tiny.name", "Fission Reactor Fuel Bundle Holder Input");
game.setLocalization("tile.modularmachinery.blockoutputbus.tiny.name", "Fission Reactor Fuel Bundle Holder Output");
game.setLocalization("tile.modularmachinery.blockinputbus.small.name", "Input Bus");
game.setLocalization("tile.modularmachinery.blockoutputbus.small.name", "Output Bus");
game.setLocalization("tile.modularmachinery.blockfluidinputhatch.normal.name", "Input Hatch");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.normal.name", "Output Hatch");
game.setLocalization("tile.modularmachinery.blockfluidinputhatch.small.name", "Secondary Input Hatch");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.small.name", "Secondary Output Hatch");
game.setLocalization("tile.modularmachinery.blockenergyinputhatch.normal.name", "Energy Input Hatch");
game.setLocalization("tile.modularmachinery.blockenergyoutputhatch.normal.name", "Energy Output Hatch");

//Fusion reactor MM pieces
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.tiny.name", "Fusion Plasma Heater - 800MK");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.reinforced.name", "Fusion Plasma Heater - 3600MK");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.big.name", "Fusion Plasma Heater - 8000MK");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.huge.name", "Fusion Plasma Heater - 10000MK");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.ludicrous.name", "Fusion Plasma Heater - 12300MK");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.vacuum.name", "Fusion Plasma Heater - 17500MK");
<modularmachinery:blockfluidoutputhatch:0>.removeTooltip("mb");
<modularmachinery:blockfluidoutputhatch:3>.removeTooltip("mb");
<modularmachinery:blockfluidoutputhatch:4>.removeTooltip("mb");
<modularmachinery:blockfluidoutputhatch:5>.removeTooltip("mb");
<modularmachinery:blockfluidoutputhatch:6>.removeTooltip("mb");
<modularmachinery:blockfluidoutputhatch:7>.removeTooltip("mb");

//Turn Traverse Crag blocks into crucible bits
game.setLocalization("fluid.enrichedLava", "Sulfuric Lava");

//Redo Biomes O Plenty logs that conflict in naming
//Willow -> Cypress
game.setLocalization("tile.log_2.willow_log.name", "Cypress Wood");
game.setLocalization("tile.leaves_4.willow_leaves.name", "Cypress Leaves");
game.setLocalization("tile.planks_0.willow_planks.name", "Cypress Wood Planks");
game.setLocalization("tile.willow_stairs.name", "Cypress Wood Stairs");
game.setLocalization("tile.willow_wood_slab.name", "Cypress Wood Slab");
game.setLocalization("tile.willow_fence.name", "Cypress Fence");
game.setLocalization("tile.willow_fence_gate.name", "Cypress Fence Gate");
game.setLocalization("item.willow_door.name", "Cypress Door");
game.setLocalization("tile.sapling_2.willow_sapling.name", "Cypress Sapling");
game.setLocalization("item.boat_willow.name", "Cypress Boat");
//Pine -> Mountain Pine
<biomesoplenty:log_2:6>.addTooltip("Mountain Pine");
<biomesoplenty:leaves_5:8>.addTooltip("Mountain Pine");
<biomesoplenty:planks_0:10>.addTooltip("Mountain Pine");
<biomesoplenty:pine_stairs>.addTooltip("Mountain Pine");
<biomesoplenty:wood_slab_1:2>.addTooltip("Mountain Pine");
<biomesoplenty:pine_fence>.addTooltip("Mountain Pine");
<biomesoplenty:pine_fence_gate>.addTooltip("Mountain Pine");
<biomesoplenty:pine_door>.addTooltip("Mountain Pine");
<biomesoplenty:sapling_2:4>.addTooltip("Mountain Pine");
<biomesoplenty:boat_pine>.addTooltip("Mountain Pine");
//Fir -> Alpine Fir
<biomesoplenty:log_0:7>.addTooltip("White Fir");
<biomesoplenty:leaves_1:10>.addTooltip("White Fir");
<biomesoplenty:planks_0:3>.addTooltip("White Fir");
<biomesoplenty:fir_stairs>.addTooltip("White Fir");
<biomesoplenty:wood_slab_0:3>.addTooltip("White Fir");
<biomesoplenty:fir_fence>.addTooltip("White Fir");
<biomesoplenty:fir_fence_gate>.addTooltip("White Fir");
<biomesoplenty:fir_door>.addTooltip("White Fir");
<biomesoplenty:sapling_0:6>.addTooltip("White Fir");
<biomesoplenty:boat_fir>.addTooltip("White Fir");
//Mangrove -> Tropical Mangrove
<biomesoplenty:log_1:6>.addTooltip("Tropical Mangrove");
<biomesoplenty:leaves_4:8>.addTooltip("Tropical Mangrove");
<biomesoplenty:planks_0:6>.addTooltip("Tropical Mangrove");
<biomesoplenty:mangrove_stairs>.addTooltip("Tropical Mangrove");
<biomesoplenty:wood_slab_0:6>.addTooltip("Tropical Mangrove");
<biomesoplenty:mangrove_fence>.addTooltip("Tropical Mangrove");
<biomesoplenty:mangrove_fence_gate>.addTooltip("Tropical Mangrove");
<biomesoplenty:mangrove_door>.addTooltip("Tropical Mangrove");
<biomesoplenty:sapling_2>.addTooltip("Tropical Mangrove");
<biomesoplenty:boat_mangrove>.addTooltip("Tropical Mangrove");
//Palm -> Oasis Palm
<biomesoplenty:log_1:7>.addTooltip("Oasis Palm");
<biomesoplenty:leaves_4:9>.addTooltip("Oasis Palm");
<biomesoplenty:planks_0:7>.addTooltip("Oasis Palm");
<biomesoplenty:palm_stairs>.addTooltip("Oasis Palm");
<biomesoplenty:wood_slab_0:7>.addTooltip("Oasis Palm");
<biomesoplenty:palm_fence>.addTooltip("Oasis Palm");
<biomesoplenty:palm_fence_gate>.addTooltip("Oasis Palm");
<biomesoplenty:palm_door>.addTooltip("Oasis Palm");
<biomesoplenty:sapling_2:1>.addTooltip("Oasis Palm");
<biomesoplenty:boat_palm>.addTooltip("Oasis Palm");

//Make Vanilla tools describe themselves as 'Shoddy' (Flint, Iron, & Gold), or 'Monocrystalline' (Diamond)
game.setLocalization("item.sword_flint.name", "Shoddy Flint Sword");
game.setLocalization("item.knife_flint.name", "Shoddy Flint Knife");
game.setLocalization("item.spade_flint.name", "Shoddy Flint Spade");
game.setLocalization("item.pickaxe_flint.name", "Shoddy Flint Pick");
game.setLocalization("item.axe_flint.name", "Shoddy Flint Hatchet");
game.setLocalization("item.hoe_flint.name", "Shoddy Flint Hoe");
game.setLocalization("item.hoeIron.name", "Shoddy Iron Hoe");
game.setLocalization("item.swordIron.name", "Shoddy Iron Sword");
game.setLocalization("item.shovelIron.name", "Shoddy Iron Shovel");
game.setLocalization("item.pickaxeIron.name", "Shoddy Iron Pickaxe");
game.setLocalization("item.hatchetIron.name", "Shoddy Iron Axe");
game.setLocalization("item.hoeGold.name", "Shoddy Golden Hoe");
game.setLocalization("item.swordGold.name", "Shoddy Golden Sword");
game.setLocalization("item.shovelGold.name", "Shoddy Golden Shovel");
game.setLocalization("item.pickaxeGold.name", "Shoddy Golden Pickaxe");
game.setLocalization("item.hatchetGold.name", "Shoddy Golden Axe");
game.setLocalization("item.hoeDiamond.name", "Monocrystalline Diamond Hoe");
game.setLocalization("item.swordDiamond.name", "Monocrystalline Diamond Sword");
game.setLocalization("item.shovelDiamond.name", "Monocrystalline Diamond Shovel");
game.setLocalization("item.pickaxeDiamond.name", "Monocrystalline Diamond Pickaxe");
game.setLocalization("item.hatchetDiamond.name", "Monocrystalline Diamond Axe");
game.setLocalization("item.helmetDiamond.name", "Monocrystalline Diamond Helmet");
game.setLocalization("item.chestplateDiamond.name", "Monocrystalline Diamond Chestplate");
game.setLocalization("item.leggingsDiamond.name", "Monocrystalline Diamond Leggings");
game.setLocalization("item.bootsDiamond.name", "Monocrystalline Diamond Boots");
   
//Turn Earthworks compass into "Engineer's Chisel"
game.setLocalization("item.earthworks.tool_compass.name", "Engineer's Chisel");

//AR oxygen to air mix
game.setLocalization("fluid.oxygen", "Air Gasses Mix");

//Chisels and Bits items
game.setLocalization("item.mod.chiselsandbits.bitsaw_diamond.name", "Engineer's Blockcutting Saw");
game.setLocalization("item.mod.chiselsandbits.chisel_iron.name", "Iron Block Chisel");
game.setLocalization("item.mod.chiselsandbits.chisel_gold.name", "Bronze Block Chisel");
game.setLocalization("item.mod.chiselsandbits.chisel_diamond.name", "Steel Block Chisel");

//Retrocomputers
game.setLocalization("item.retrocomputers:screwdriver.name", "Engineer's Computer Tinkering Screwdriver");

//Bullseye diamond arrow to steel
game.setLocalization("item.diamond_arrow.name", "Steel-Tipped Arrow");
