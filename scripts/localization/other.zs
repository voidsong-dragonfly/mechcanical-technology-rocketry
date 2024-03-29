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
game.setLocalization("tile.MachineBlock2.PressurizedReactionChamber.name", "Metal Atomizer");
game.setLocalization("gas.hydrogen", "Pressurized Hydrogen");
game.setLocalization("gas.oxygen", "Pressurized Oxygen");
game.setLocalization("gas.sulfuricacid", "Pressurized Sulfuric Acid");
game.setLocalization("fluid.heavywater", "Semiheavy Water");
game.setLocalization("fluid.rocketFuel", "Liquid Fertilizer");

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
<immersiveengineering:metal_device0:0>.addTooltip("Maximum Storage: 1400000 IF, Maximum Output: 256 IF/t");
<immersiveengineering:metal_device0:1>.addTooltip("Maximum Storage: 1600 IF, Maximum Output: 256 IF/t");
<immersiveengineering:metal_device0:2>.addTooltip("Maximum Storage: 400000 IF, Maximum Output: 4096 IF/t");

//Make Mekanism ore pieces the names of the actual ore they're processing
//And make LV "Rutile" Ilmenite, and "Aluminum" Aluminium
//Ilmenite and Bauxite & dilithium
game.setLocalization("tile.Rutile.name", "Ilmenite Ore");
game.setLocalization("material.Rutile.name", "Ilmenite");
game.setLocalization("mekores.ore.aluminum", "Bauxite");
game.setLocalization("mekores.ore.titanium", "Ilmenite");
game.setLocalization("material.Aluminum.name", "Aluminium");
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

//AF to "HVDC"
//Blocks
game.setLocalization("tile.alternatingflux.connector.connector_af.name", "HVDC Wire Connector");
game.setLocalization("tile.alternatingflux.connector.relay_af.name", "HVDC Wire Relay");
game.setLocalization("tile.alternatingflux.connector.transformer_af.name", "HVDC Transformer");
//Items
game.setLocalization("item.alternatingflux.wirecoil.af.name", "HVDC Wire Coil");
game.setLocalization("itemGroup.alternatingflux", "HVDC");
//Manual stuff is in lang file because it didn't work here

//Quartz Crucible to Iridium Crucible
game.setLocalization("tile.qcrucible.name", "Iridium Crucible");

//AR lunar construction materials
game.setLocalization("tile.turf.name", "Regolith Concrete Mix");
game.setLocalization("tile.turfDark.name", "Regolith Coarse Concrete Mix");
game.setLocalization("tile.hotDryturf.name", "Regolith Rebar Concrete Frame");
game.setLocalization("tile.engineersdecor.panzerglass_block.name", "Regolith Glass Block");

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

//Make AR EAF into electric kiln
game.setLocalization("tile.blastBrick.name", "Reinforced Kiln Brick");
game.setLocalization("tile.electricArcFurnace.name", "Electric Kiln");

game.setLocalization("tile.immersiveposts.uraniumpost.name", "Uranium Dioxide Post");
game.setLocalization("tile.immersiveposts.fence_uranium.name", "Uranium Dioxide Fence");
game.setLocalization("item.immersiveposts.metal_rods.stick_uranium.name", "Uranium Dioxide Rod");
game.setLocalization("index.page_0_entry.13", "Uranium Dioxide");

//Rename Constantan items to Molybdenum items
game.setLocalization("tile.immersiveposts.constantanpost.name", "Molybdenum Post");
game.setLocalization("tile.immersiveposts.fence_constantan.name", "Molybdenum Fence");
game.setLocalization("item.immersiveposts.metal_rods.stick_constantan.name", "Molybdenum Rod");
game.setLocalization("item.immersiveposts.metal_rods.stick_constantan.name", "Molybdenum Rod");

game.setLocalization("item.alternatingflux.material.wire_constantan.name", "Molybdenum Wire");

//Osmium to LEU rename
game.setLocalization("tile.BasicBlock.OsmiumBlock.name", "Lightly Enriched Uranium Dioxide Block");
game.setLocalization("item.osmiumDust.name", "Lightly Enriched Uranium Dioxide Dust");
game.setLocalization("item.osmiumIngot.name", "Lightly Enriched Uranium Dioxide Ingot");
game.setLocalization("item.osmiumNugget.name", "Lightly Enriched Uranium Dioxide Nugget");

//Modular Machinery hatches
game.setLocalization("tile.modularmachinery.blockinputbus.small.name", "Input Bus");
game.setLocalization("tile.modularmachinery.blockoutputbus.small.name", "Output Bus");
game.setLocalization("tile.modularmachinery.blockfluidinputhatch.normal.name", "Input Hatch");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.normal.name", "Output Hatch");
game.setLocalization("tile.modularmachinery.blockfluidinputhatch.small.name", "Secondary Input Hatch");
game.setLocalization("tile.modularmachinery.blockfluidoutputhatch.small.name", "Secondary Output Hatch");
game.setLocalization("tile.modularmachinery.blockenergyinputhatch.normal.name", "Energy Input Hatch");
game.setLocalization("tile.modularmachinery.blockenergyoutputhatch.normal.name", "Energy Output Hatch");

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

//Make Vanilla tools describe themselves as 'Shoddy' (Flint, Iron, & Gold), or 'Decorative' (Diamond)
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
game.setLocalization("item.hoeDiamond.name", "Decorative Diamond Hoe");
game.setLocalization("item.swordDiamond.name", "Decorative Diamond Sword");
game.setLocalization("item.shovelDiamond.name", "Decorative Diamond Shovel");
game.setLocalization("item.pickaxeDiamond.name", "Decorative Diamond Pickaxe");
game.setLocalization("item.hatchetDiamond.name", "Monocrystalline Diamond Axe");
game.setLocalization("item.helmetDiamond.name", "Diamond Scale Helmet");
game.setLocalization("item.chestplateDiamond.name", "Diamond Scale Chestplate");
game.setLocalization("item.leggingsDiamond.name", "Diamond Scale Leggings");
game.setLocalization("item.bootsDiamond.name", "Diamond Scale Boots");
   
//Turn Earthworks compass into "Engineer's Chisel"
game.setLocalization("item.earthworks.tool_compass.name", "Engineer's Chisel");

//Chisels and Bits items
game.setLocalization("item.mod.chiselsandbits.bitsaw_diamond.name", "Engineer's Blockcutting Saw");
game.setLocalization("item.mod.chiselsandbits.chisel_iron.name", "Iron Block Chisel");
game.setLocalization("item.mod.chiselsandbits.chisel_gold.name", "Bronze Block Chisel");
game.setLocalization("item.mod.chiselsandbits.chisel_diamond.name", "Steel Block Chisel");

//Retrocomputers
game.setLocalization("item.retrocomputers:screwdriver.name", "Engineer's Computer Tinkering Screwdriver");

//Bullseye diamond arrow to steel
game.setLocalization("item.diamond_arrow.name", "Steel-Tipped Arrow");

//Earthworks adobe
game.setLocalization("tile.earthworks.block_adobe.name", "Fired Adobe Brick");
game.setLocalization("tile.earthworks.slab_adobe.name", "Fired Adobe Brick Slab");
game.setLocalization("tile.earthworks.stair_adobe.name", "Fired Adobe Brick Stairs");
game.setLocalization("tile.earthworks.wall_adobe.name", "Fired Adobe Brick Wall");
game.setLocalization("item.earthworks.item_adobe.name", "Fired Adobe Brick");
//PVJ stone blocks
game.setLocalization("tile.limestone.name", "Weathered Buffed Marble");
game.setLocalization("tile.limestone_stairs.name", "Weathered Buffed Marble Stairs");
game.setLocalization("tile.limestone_slab.name", "Weathered Buffed Marble Slab");
game.setLocalization("tile.marble.name", "Buffed Marble");
game.setLocalization("tile.marble_stairs.name", "Buffed Marble Stairs");
game.setLocalization("tile.marble_slab.name", "Buffed Marble Slab");
game.setLocalization("tile.marble_brick.name", "Buffed Marble Bricks");
game.setLocalization("tile.marble_brick_stairs.name", "Buffed Marble Brick Stairs");
game.setLocalization("tile.marble_brick_slab.name", "Buffed Marble Brick Slab");
//PVJ outer space stone(s)
game.setLocalization("tile.basalt.name", "Cast Regolith Basalt");
game.setLocalization("tile.basalt_stairs.name", "Cast Regolith Basalt Stairs");
game.setLocalization("tile.basalt_slab.name", "Cast Regolith Basalt Slab");
game.setLocalization("tile.basalt_brick.name", "Cast Regolith Basalt Bricks");
game.setLocalization("tile.basalt_brick_stairs.name", "Cast Regolith Basalt Brick Stairs");
game.setLocalization("tile.basalt_brick_slab.name", "Cast Regolith Basalt Brick Slab");
