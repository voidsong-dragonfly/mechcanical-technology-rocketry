#loader contenttweaker
#priority 999
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
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialSystem;



//New parts - dust types
MaterialSystem.getPartBuilder().setName("salt").setPartType(MaterialSystem.getPartType("item")).setOreDictName("dust").build();
MaterialSystem.getPartBuilder().setName("gemdust").setPartType(MaterialSystem.getPartType("item")).setOreDictName("dust").build();
MaterialSystem.getPartBuilder().setName("nonmetaldust").setPartType(MaterialSystem.getPartType("item")).setOreDictName("dust").build();
MaterialSystem.getPartBuilder().setName("dustunshaded").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("dust").build();
MaterialSystem.getPartBuilder().setName("riffle").setPartType(MaterialSystem.getPartType("item")).setOreDictName("dustWashed").setAdditionalOreDictNames("dustDirty").build();
MaterialSystem.getPartBuilder().setName("amalgam").setPartType(MaterialSystem.getPartType("item")).setOreDictName("amalgam").build();
//New parts - other types
MaterialSystem.getPartBuilder().setName("wire").setPartType(MaterialSystem.getPartType("item")).setOreDictName("wire").build();
MaterialSystem.getPartBuilder().setName("sheet").setPartType(MaterialSystem.getPartType("item")).setOreDictName("sheet").build();
MaterialSystem.getPartBuilder().setName("mechanicalcomponent").setPartType(MaterialSystem.getPartType("item")).setOreDictName("mechanicalComponent").build();
MaterialSystem.getPartBuilder().setName("scaffoldingpanel").setPartType(MaterialSystem.getPartType("item")).setOreDictName("scaffoldingPanel").build();
MaterialSystem.getPartBuilder().setName("smallpipe").setPartType(MaterialSystem.getPartType("item")).setOreDictName("smallPipe").build();
MaterialSystem.getPartBuilder().setName("fuelpellet").setPartType(MaterialSystem.getPartType("item")).setOreDictName("fuelPellet").build();
MaterialSystem.getPartBuilder().setName("compressorblade").setPartType(MaterialSystem.getPartType("item")).setOreDictName("compressorBlade").build();
MaterialSystem.getPartBuilder().setName("compressor").setPartType(MaterialSystem.getPartType("item")).setOreDictName("compressor").build();
//New parts - nonmetal types
MaterialSystem.getPartBuilder().setName("slag").setPartType(MaterialSystem.getPartType("item")).setOreDictName("slag").build();
MaterialSystem.getPartBuilder().setName("fuel").setPartType(MaterialSystem.getPartType("item")).setOreDictName("fuel").build();
MaterialSystem.getPartBuilder().setName("sludge").setPartType(MaterialSystem.getPartType("item")).setOreDictName("sludge").build();
MaterialSystem.getPartBuilder().setName("gemplate").setPartType(MaterialSystem.getPartType("item")).setOreDictName("plate").build();
MaterialSystem.getPartBuilder().setName("lens").setPartType(MaterialSystem.getPartType("item")).setOreDictName("lens").build();
//New parts - silicon types
MaterialSystem.getPartBuilder().setName("boule").setPartType(MaterialSystem.getPartType("item")).setOreDictName("boule").build();
MaterialSystem.getPartBuilder().setName("boulewafer").setPartType(MaterialSystem.getPartType("item")).setOreDictName("wafer").build();
MaterialSystem.getPartBuilder().setName("wafer").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("wafer").build();
MaterialSystem.getPartBuilder().setName("circuitplate").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("circuitPlate").build();
MaterialSystem.getPartBuilder().setName("etchingplate").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("etchingPlate").build();
MaterialSystem.getPartBuilder().setName("preparedwafer").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("preparedWafer").build();
MaterialSystem.getPartBuilder().setName("etchedwafer").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("etchedWafer").build();
//New parts - circuit parts
MaterialSystem.getPartBuilder().setName("processorcrystal").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("processorCrystal").build();
MaterialSystem.getPartBuilder().setName("naquadahprocessorcrystal").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("naquadahProcessorCrystal").build();
MaterialSystem.getPartBuilder().setName("perfectcircuit").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("perfectCircuit").build();
MaterialSystem.getPartBuilder().setName("circuitboard").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("circuitBoard").build();
MaterialSystem.getPartBuilder().setName("smd").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("smd").build();
MaterialSystem.getPartBuilder().setName("gpsunit").setPartType(MaterialSystem.getPartType("item")).setOreDictName("gpsUnit").build();
MaterialSystem.getPartBuilder().setName("solder").setPartType(MaterialSystem.getPartType("item")).setOreDictName("solder").build();
//New parts - fuel rods
MaterialSystem.getPartBuilder().setName("fuelbundle").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("fuelBundle").build();
MaterialSystem.getPartBuilder().setName("rodbundle").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("rodBundle").build();
//New parts - power items
MaterialSystem.getPartBuilder().setName("smallbatteryhull").setPartType(MaterialSystem.getPartType("item")).setOreDictName("smallBatteryHull").build();
MaterialSystem.getPartBuilder().setName("supercapacitorhull").setPartType(MaterialSystem.getPartType("item")).setOreDictName("supercapacitorHull").build();
MaterialSystem.getPartBuilder().setName("supercapacitor").setPartType(MaterialSystem.getPartType("item")).setOreDictName("supercapacitor").build();
MaterialSystem.getPartBuilder().setName("inductiontablet").setPartType(MaterialSystem.getPartType("item")).setOreDictName("inductionTablet").build();
MaterialSystem.getPartBuilder().setName("unfilledsuperconductorcable").setPartType(MaterialSystem.getPartType("item")).setOreDictName("unfilledSuperconductorCable").build();
MaterialSystem.getPartBuilder().setName("unfilledhighcurrentsuperconductorcable").setPartType(MaterialSystem.getPartType("item")).setOreDictName("unfilledHighCurrentSuperconductorCable").build();
//New parts - rocketry items
MaterialSystem.getPartBuilder().setName("enginebell").setPartType(MaterialSystem.getPartType("item")).setOreDictName("engineBell").build();
MaterialSystem.getPartBuilder().setName("advancedenginebell").setPartType(MaterialSystem.getPartType("item")).setOreDictName("advancedEngineBell").build();
MaterialSystem.getPartBuilder().setName("catalyticturbopump").setPartType(MaterialSystem.getPartType("item")).setOreDictName("catalyticTurbopump").build();
MaterialSystem.getPartBuilder().setName("turbopump").setPartType(MaterialSystem.getPartType("item")).setOreDictName("turbopump").build();
MaterialSystem.getPartBuilder().setName("pressurizedheliumtank").setPartType(MaterialSystem.getPartType("item")).setOreDictName("heliumTank").build();
MaterialSystem.getPartBuilder().setName("fueltankshell").setPartType(MaterialSystem.getPartType("item")).setOreDictName("fuelTankShell").build();
MaterialSystem.getPartBuilder().setName("reactionwheel").setPartType(MaterialSystem.getPartType("item")).setOreDictName("reactionWheel").build();
MaterialSystem.getPartBuilder().setName("solarpanel").setPartType(MaterialSystem.getPartType("item")).setOreDictName("solarPanel").build();
MaterialSystem.getPartBuilder().setName("mirrorarray").setPartType(MaterialSystem.getPartType("item")).setOreDictName("mirrorArray").build();
MaterialSystem.getPartBuilder().setName("collectionarray").setPartType(MaterialSystem.getPartType("item")).setOreDictName("collectionArray").build();
//New parts - molds, rods, and dies
MaterialSystem.getPartBuilder().setName("metalpressmold").setPartType(MaterialSystem.getPartType("item")).setOreDictName("metalPressMold").build();
MaterialSystem.getPartBuilder().setName("heavymetalpressdie").setPartType(MaterialSystem.getPartType("item")).setOreDictName("heavyMetalPressDie").build();
MaterialSystem.getPartBuilder().setName("injectionmold").setPartType(MaterialSystem.getPartType("item")).setOreDictName("injectionMold").build();
//New parts - blocks
MaterialSystem.getPartBuilder().setName("machinecasing").setPartType(MaterialSystem.getPartType("block")).setOreDictName("machineCasing").build();
MaterialSystem.getPartBuilder().setName("frame").setPartType(MaterialSystem.getPartType("block")).setOreDictName("frame").build();



//Order
static order as string[] = ["ingot", "plate", "gemplate", "nugget", "rod", "gear", "wire", "sheet", "scaffoldingpanel", "smallpipe", "mechanicalcomponent", "fuelpellet", "compressorblade", "compressor", "dust", "gemdust", "nonmetaldust", "dustunshaded", "salt", "riffle", "amalgam", "sludge", "slag", "fuel", "lens", "boule", "boulewafer", "wafer", "circuitplate", "etchingplate", "preparedwafer", "etchedwafer", "processorcrystal", "naquadahprocessorcrystal", "perfectcircuit", "circuitboard", "smd", "gpsunit", "solder", "fuelbundle", "rodbundle", "smallbatteryhull", "supercapacitorhull", "supercapacitor", "inductiontablet", "unfilledsuperconductorcable", "unfilledhighcurrentsuperconductorcable", "enginebell", "advancedenginebell", "catalyticturbopump", "turbopump", "pressurizedheliumtank", "fueltankshell", "reactionwheel", "solarpanel", "mirrorarray", "collectionarray", "metalpressmold", "heavymetalpressdie", "injectionmold", "block", "frame", "machinecasing"];



//Materials
static materials as Material[string] = {
    //Metals
    "Steel" : MaterialSystem.getMaterialBuilder().setName("Steel").setColor(Color.fromHex("707070")).build(),
    "Maraging Steel" : MaterialSystem.getMaterialBuilder().setName("Maraging Steel").setColor(Color.fromHex("ACACA6")).build(),
    "Tungstensteel" : MaterialSystem.getMaterialBuilder().setName("Tungstensteel").setColor(Color.fromHex("83919E")).build(),
    "Titanium" : MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(Color.fromHex("CCC8FA")).build(),
    "Titanium Aluminide" : MaterialSystem.getMaterialBuilder().setName("Titanium Aluminide").setColor(Color.fromHex("aec2de")).build(),
    "Niobium Titanium Alloy" : MaterialSystem.getMaterialBuilder().setName("Niobium Titanium Alloy").setColor(Color.fromHex("DDDAFA")).build(),
    "Zirconium Niobium Alloy" : MaterialSystem.getMaterialBuilder().setName("Zirconium Niobium Alloy").setColor(Color.fromHex("999A8D")).build(),
    "Silver" : MaterialSystem.getMaterialBuilder().setName("Silver").setColor(Color.fromHex("d0dce4")).build(),
    "Silver Indium Alloy" : MaterialSystem.getMaterialBuilder().setName("Silver Indium Alloy").setColor(Color.fromHex("9e90ab")).build(),
    "Aluminium" : MaterialSystem.getMaterialBuilder().setName("Aluminium").setColor(Color.fromHex("b3babd")).build(),
    "Lead" : MaterialSystem.getMaterialBuilder().setName("Lead").setColor(Color.fromHex("404453")).build(),
    "Platinum" : MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(Color.fromHex("C9E3F9")).build(),
    "Mixed Platinum Group Metal" : MaterialSystem.getMaterialBuilder().setName("Mixed Platinum Group Metal").setColor(Color.fromHex("c6d0d1")).build(),
    "Tungsten" : MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(Color.fromHex("5b5b5c")).build(),
    "Depleted Uranium Dioxide" : MaterialSystem.getMaterialBuilder().setName("Depleted Uranium Dioxide").setColor(Color.fromHex("363636")).build(),
    "Lightly Enriched Uranium Dioxide" : MaterialSystem.getMaterialBuilder().setName("Lightly Enriched Uranium Dioxide").setColor(Color.fromHex("576258")).build(),
    "Yttrium Barium Cuprate" : MaterialSystem.getMaterialBuilder().setName("Yttrium Barium Cuprate").setColor(Color.fromHex("7e8084")).build(),
    "Osmiridium" : MaterialSystem.getMaterialBuilder().setName("Osmiridium").setColor(Color.fromHex("608ce0")).build(),
    "Enriched Naquadah" : MaterialSystem.getMaterialBuilder().setName("Enriched Naquadah").setColor(Color.fromHex("32785c")).build(),
    "Neutronium" : MaterialSystem.getMaterialBuilder().setName("Neutronium").setColor(Color.fromHex("d2d5d6")).build(),
    //Metals, ore dust(s) only
    "Gold" : MaterialSystem.getMaterialBuilder().setName("Gold").setColor(Color.fromHex("facd40")).build(),
    "Mercury Gold" : MaterialSystem.getMaterialBuilder().setName("Mercury Gold").setColor(Color.fromHex("8b7e43")).build(),
    "Mercury Silver" : MaterialSystem.getMaterialBuilder().setName("Mercury Silver").setColor(Color.fromHex("848b8f")).build(),
    //Metals, dust
    "Magnesium" : MaterialSystem.getMaterialBuilder().setName("Magnesium").setColor(Color.fromHex("928a89")).build(),
    "Cobalt" : MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(Color.fromHex("25436A")).build(),
    "Indium" : MaterialSystem.getMaterialBuilder().setName("Indium").setColor(Color.fromHex("433253")).build(),
    "Gallium" : MaterialSystem.getMaterialBuilder().setName("Gallium").setColor(Color.fromHex("92929f")).build(),
    "Zirconium" : MaterialSystem.getMaterialBuilder().setName("Zirconium").setColor(Color.fromHex("caccaf")).build(),
    "Niobium" : MaterialSystem.getMaterialBuilder().setName("Niobium").setColor(Color.fromHex("bfbecc")).build(),
    "Neodymium" : MaterialSystem.getMaterialBuilder().setName("Neodymium").setColor(Color.fromHex("7e8084")).build(),
    "Yttrium" : MaterialSystem.getMaterialBuilder().setName("Yttrium").setColor(Color.fromHex("848689")).build(),
    "Barium" : MaterialSystem.getMaterialBuilder().setName("Barium").setColor(Color.fromHex("85878a")).build(),
    "Mixed End Metals" : MaterialSystem.getMaterialBuilder().setName("Mixed End Metals").setColor(Color.fromHex("283d3b")).build(),
    "Rich Mixed Platinum Group Metal" : MaterialSystem.getMaterialBuilder().setName("Rich Mixed Platinum Group Metal").setColor(Color.fromHex("c6d0d1")).build(),
    "Naquadah" : MaterialSystem.getMaterialBuilder().setName("Naquadah").setColor(Color.fromHex("386855")).build(),
    //Nonmetal dusts
    "Stone" : MaterialSystem.getMaterialBuilder().setName("Stone").setColor(Color.fromHex("ffffff")).build(),
    "Charcoal" : MaterialSystem.getMaterialBuilder().setName("Charcoal").setColor(Color.fromHex("ffffff")).build(),
    "Magnesium Chloride" : MaterialSystem.getMaterialBuilder().setName("Magnesium Chloride").setColor(Color.fromHex("716d6c")).build(),
    "Lithium Chloride" : MaterialSystem.getMaterialBuilder().setName("Lithium Chloride").setColor(Color.fromHex("737062")).build(),
    "Calcium Chloride" : MaterialSystem.getMaterialBuilder().setName("Calcium Chloride").setColor(Color.fromHex("c4c4c4")).build(),
    "Ammonium Chloride" : MaterialSystem.getMaterialBuilder().setName("Ammonium Chloride").setColor(Color.fromHex("9b9b9b")).build(),
    "Calcium" : MaterialSystem.getMaterialBuilder().setName("Calcium").setColor(Color.fromHex("b5b199")).build(),
    "Cinnabar" : MaterialSystem.getMaterialBuilder().setName("Cinnabar").setColor(Color.fromHex("ae2e2e")).build(),
    "Quartz" : MaterialSystem.getMaterialBuilder().setName("Quartz").setColor(Color.fromHex("ffffff")).build(),
    "Fluorite" : MaterialSystem.getMaterialBuilder().setName("Fluorite").setColor(Color.fromHex("b18e35")).build(),
    "Ammonium Diuranate" : MaterialSystem.getMaterialBuilder().setName("Ammonium Diuranate").setColor(Color.fromHex("8e6c2b")).build(),
    "Fine Yellowcake" : MaterialSystem.getMaterialBuilder().setName("Fine Yellowcake").setColor(Color.fromHex("7b7569")).build(),
    "Yellowcake" : MaterialSystem.getMaterialBuilder().setName("Yellowcake").setColor(Color.fromHex("69614d")).build(),
    "Uranium Tetrafluoride" : MaterialSystem.getMaterialBuilder().setName("Uranium Tetrafluoride").setColor(Color.fromHex("314b38")).build(),
    "Depleted Uranyl Fluoride" : MaterialSystem.getMaterialBuilder().setName("Depleted Uranyl Fluoride").setColor(Color.fromHex("a85f2f")).build(),
    "Lightly Enriched Uranyl Fluoride" : MaterialSystem.getMaterialBuilder().setName("Lightly Enriched Uranyl Fluoride").setColor(Color.fromHex("a85f2f")).build(),
    "Aluminium Hydroxide" : MaterialSystem.getMaterialBuilder().setName("Aluminium Hydroxide").setColor(Color.fromHex("949aa0")).build(),
    "Alumina" : MaterialSystem.getMaterialBuilder().setName("Alumina").setColor(Color.fromHex("828282")).build(),
    "Rutile" : MaterialSystem.getMaterialBuilder().setName("Rutile").setColor(Color.fromHex("68504f")).build(),
    "Niobium Pentoxide" : MaterialSystem.getMaterialBuilder().setName("Niobium Pentoxide").setColor(Color.fromHex("737678")).build(),
    "Ammonium Chloroplatinate" : MaterialSystem.getMaterialBuilder().setName("Ammonium Chloroplatinate").setColor(Color.fromHex("7f372a")).build(),
    "Hydrated Tungsten Trioxide" : MaterialSystem.getMaterialBuilder().setName("Hydrated Tungsten Trioxide").setColor(Color.fromHex("a9ae36")).build(),
    "Tungsten Trioxide" : MaterialSystem.getMaterialBuilder().setName("Tungsten Trioxide").setColor(Color.fromHex("787957")).build(),
    //Nonmetal gems
    "Emerald" : MaterialSystem.getMaterialBuilder().setName("Emerald").setColor(Color.fromHex("43ba67")).build(),
    "Glass" : MaterialSystem.getMaterialBuilder().setName("Glass").setColor(Color.fromHex("ffffff")).build(),
    "Diamond" : MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(Color.fromHex("81c2b5")).build(),
    "Lapis" : MaterialSystem.getMaterialBuilder().setName("Lapis").setColor(Color.fromHex("3053ac")).build(),
    "Ruby" : MaterialSystem.getMaterialBuilder().setName("Ruby").setColor(Color.fromHex("a63535")).build(),
    "Ender Pearl" : MaterialSystem.getMaterialBuilder().setName("Ender Pearl").setColor(Color.fromHex("1f675a")).build(),
    "Nether Star" : MaterialSystem.getMaterialBuilder().setName("Nether Star").setColor(Color.fromHex("b3bfbb")).build(),
    //Nonmetal processed dusts
    "Petroleum Coke" : MaterialSystem.getMaterialBuilder().setName("Petroleum Coke").setColor(Color.fromHex("ffffff")).build(),
    "Charcoal Precursor" : MaterialSystem.getMaterialBuilder().setName("Charcoal Precursor").setColor(Color.fromHex("282115")).build(),
    //Metal slag intermediates
    "Impure Tin" : MaterialSystem.getMaterialBuilder().setName("Impure Tin").setColor(Color.fromHex("928c87")).build(),
    "Nickel Matte" : MaterialSystem.getMaterialBuilder().setName("Nickel Matte").setColor(Color.fromHex("5b574f")).build(),
    "Lead Sinter" : MaterialSystem.getMaterialBuilder().setName("Lead Sinter").setColor(Color.fromHex("242023")).build(),
    "Niobium Ferroalloy" : MaterialSystem.getMaterialBuilder().setName("Niobium Ferroalloy").setColor(Color.fromHex("756e77")).build(),
    //Metal Sludge
    "Platinum Rich PGM Leach" : MaterialSystem.getMaterialBuilder().setName("Platinum Rich PGM Leach").setColor(Color.fromHex("323649")).build(),
    "Iridium Rich PGM Leach" : MaterialSystem.getMaterialBuilder().setName("Iridium Rich PGM Leach").setColor(Color.fromHex("323649")).build(),
    "Copper Derived Anode" : MaterialSystem.getMaterialBuilder().setName("Copper Derived Anode").setColor(Color.fromHex("474643")).build(),
    "Nickel Derived Anode" : MaterialSystem.getMaterialBuilder().setName("Nickel Derived Anode").setColor(Color.fromHex("434347")).build(),
    //Silicon pieces
    "Gallium Doped Silicon" : MaterialSystem.getMaterialBuilder().setName("Gallium Doped Silicon").setColor(Color.fromHex("ffffff")).build(),
    "Lithium Doped Silicon" : MaterialSystem.getMaterialBuilder().setName("Lithium Doped Silicon").setColor(Color.fromHex("ffffff")).build(),
    "Integrated Circuit" : MaterialSystem.getMaterialBuilder().setName("Integrated Circuit").setColor(Color.fromHex("ffffff")).build(),
    "Central Processing Unit" : MaterialSystem.getMaterialBuilder().setName("Central Processing Unit").setColor(Color.fromHex("ffffff")).build(),
    "Random Access Memory" : MaterialSystem.getMaterialBuilder().setName("Random Access Memory").setColor(Color.fromHex("ffffff")).build(),
    "NAND Memory" : MaterialSystem.getMaterialBuilder().setName("NAND Memory").setColor(Color.fromHex("ffffff")).build(),
    "System On Chip" : MaterialSystem.getMaterialBuilder().setName("System On Chip").setColor(Color.fromHex("ffffff")).build(),
    //Circuit bits
    "Raw" : MaterialSystem.getMaterialBuilder().setName("Raw").setColor(Color.fromHex("ffffff")).build(),
    "Engraved" : MaterialSystem.getMaterialBuilder().setName("Engraved").setColor(Color.fromHex("ffffff")).build(),
    "Treated Wood" : MaterialSystem.getMaterialBuilder().setName("Treated Wood").setColor(Color.fromHex("ffffff")).build(),
    "Unprepared Plastic" : MaterialSystem.getMaterialBuilder().setName("Unprepared Plastic").setColor(Color.fromHex("ffffff")).build(),
    "Plastic" : MaterialSystem.getMaterialBuilder().setName("Plastic").setColor(Color.fromHex("ffffff")).build(),
    "Unprepared Platinum Backed Plastic" : MaterialSystem.getMaterialBuilder().setName("Unprepared Platinum Backed Plastic").setColor(Color.fromHex("ffffff")).build(),
    "Platinum Backed Plastic" : MaterialSystem.getMaterialBuilder().setName("Platinum Backed Plastic").setColor(Color.fromHex("ffffff")).build(),
    "Resistor" : MaterialSystem.getMaterialBuilder().setName("Resistor").setColor(Color.fromHex("ffffff")).build(),
    //Railgin bits
    "Graphite Depleted Uranium Composite" : MaterialSystem.getMaterialBuilder().setName("Graphite Depleted Uranium Composite").setColor(Color.fromHex("323232")).build(),
    //Fuel rods
    "Fresh" : MaterialSystem.getMaterialBuilder().setName("Fresh").setColor(Color.fromHex("ffffff")).build(),
    "Depleted" : MaterialSystem.getMaterialBuilder().setName("Depleted").setColor(Color.fromHex("ffffff")).build(),
    "Spent" : MaterialSystem.getMaterialBuilder().setName("Spent").setColor(Color.fromHex("ffffff")).build(),
    "Deformed" : MaterialSystem.getMaterialBuilder().setName("Deformed").setColor(Color.fromHex("ffffff")).build(),
    "Control" : MaterialSystem.getMaterialBuilder().setName("Control").setColor(Color.fromHex("ffffff")).build(),
    //Molds and dies
    "Ingot" : MaterialSystem.getMaterialBuilder().setName("Ingot").setColor(Color.fromHex("ffffff")).build(),
    "Small Pipe" : MaterialSystem.getMaterialBuilder().setName("Small Pipe").setColor(Color.fromHex("ffffff")).build(),
    "Pipe" : MaterialSystem.getMaterialBuilder().setName("Pipe").setColor(Color.fromHex("ffffff")).build(),
    "Barrel" : MaterialSystem.getMaterialBuilder().setName("Barrel").setColor(Color.fromHex("ffffff")).build(),
    "Wire" : MaterialSystem.getMaterialBuilder().setName("Wire").setColor(Color.fromHex("ffffff")).build(),
    "Fuel Pellet" : MaterialSystem.getMaterialBuilder().setName("Fuel Pellet").setColor(Color.fromHex("ffffff")).build(),
    "Scaffolding Panel" : MaterialSystem.getMaterialBuilder().setName("Scaffolding Panel").setColor(Color.fromHex("ffffff")).build(),
    "Bell" : MaterialSystem.getMaterialBuilder().setName("Bell").setColor(Color.fromHex("ffffff")).build(),
    "HDPE Sheet" : MaterialSystem.getMaterialBuilder().setName("HDPE Sheet").setColor(Color.fromHex("ffffff")).build(),
    "HDPE Rod" : MaterialSystem.getMaterialBuilder().setName("HDPE Rod").setColor(Color.fromHex("ffffff")).build(),
    //Fusion reactor pieces
    "Fusion Reactor Inner Casing" : MaterialSystem.getMaterialBuilder().setName("Fusion Reactor Inner Casing").setColor(Color.fromHex("ffffff")).build(),
    "Fusion Reactor Outer Casing" : MaterialSystem.getMaterialBuilder().setName("Fusion Reactor Outer Casing").setColor(Color.fromHex("ffffff")).build(),
    "Superconductive Coil" : MaterialSystem.getMaterialBuilder().setName("Superconductive Coil").setColor(Color.fromHex("ffffff")).build(),
    //Particle Accelerator & etc pieces
    "Particle Accelerator Casing" : MaterialSystem.getMaterialBuilder().setName("Particle Accelerator Casing").setColor(Color.fromHex("ffffff")).build(),
    "Particle Containment Casing" : MaterialSystem.getMaterialBuilder().setName("Particle Containment Casing").setColor(Color.fromHex("ffffff")).build(),
    "High Current Superconductive Coil" : MaterialSystem.getMaterialBuilder().setName("High Current Superconductive Coil").setColor(Color.fromHex("ffffff")).build(),
    "Rare Earths Magnetic Coil" : MaterialSystem.getMaterialBuilder().setName("Rare Earths Magnetic Coil").setColor(Color.fromHex("ffffff")).build(),
    "Beam Control Lens" : MaterialSystem.getMaterialBuilder().setName("Beam Control Lens").setColor(Color.fromHex("ffffff")).build(),
    //Fission reactor pieces
    "Fission Reactor Calandria Casing Shell" : MaterialSystem.getMaterialBuilder().setName("Fission Reactor Calandria Casing Shell").setColor(Color.fromHex("ffffff")).build(),
    "Fission Reactor Calandria Casing" : MaterialSystem.getMaterialBuilder().setName("Fission Reactor Calandria Casing").setColor(Color.fromHex("ffffff")).build(),
    "Fission Reactor Fuel Rod Assembly Pipe Connector" : MaterialSystem.getMaterialBuilder().setName("Fission Reactor Fuel Rod Assembly Pipe Connector").setColor(Color.fromHex("ffffff")).build(),
    //Naquadah reactor pieces
    "Naquadah Reactor Casing" : MaterialSystem.getMaterialBuilder().setName("Naquadah Reactor Casing").setColor(Color.fromHex("ffffff")).build(),
    //Bearings
    "Lubricated Bearing" : MaterialSystem.getMaterialBuilder().setName("Lubricated Bearing").setColor(Color.fromHex("ffffff")).build(),
    "Magnetic Bearing" : MaterialSystem.getMaterialBuilder().setName("Magnetic Bearing").setColor(Color.fromHex("ffffff")).build(),
    "Centrifuge Cylinder Shell" : MaterialSystem.getMaterialBuilder().setName("Centrifuge Cylinder Shell").setColor(Color.fromHex("ffffff")).build(),
    //Miscelaneous metal bits
    "Metal Barrel Shell" : MaterialSystem.getMaterialBuilder().setName("Metal Barrel Shell").setColor(Color.fromHex("ffffff")).build(),
    "Steel Barrel Shell" : MaterialSystem.getMaterialBuilder().setName("Steel Barrel Shell").setColor(Color.fromHex("ffffff")).build(),
    //Miscelaneous other blocks
    "Plastic Coated Rebar Concrete" : MaterialSystem.getMaterialBuilder().setName("Plastic Coated Rebar Concrete").setColor(Color.fromHex("ffffff")).build(),
    //Register all the things!
    "Item" : MaterialSystem.getMaterialBuilder().setName("Item").setColor(Color.fromHex("ffffff")).build(),
    
};

static parts as string[][string] = {
    //Metals
    "Steel" : ["scaffoldingpanel"],
    "Maraging Steel" : ["ingot", "plate", "nugget", "dust", "rod", "gear", "wire", "sheet", "scaffoldingpanel", "mechanicalcomponent", "block"],
    "Tungstensteel" : ["ingot", "plate", "nugget", "dust", "rod", "scaffoldingpanel", "smallpipe", "block", "frame"],
    "Titanium" : ["scaffoldingpanel", "smallpipe", "compressorblade", "compressor", "frame"],
    "Titanium Aluminide" : ["scaffoldingpanel"],
    "Niobium Titanium Alloy" : ["ingot", "plate", "nugget", "dust", "rod", "wire"],
    "Zirconium Niobium Alloy" : ["ingot", "plate", "nugget", "dust", "rod", "scaffoldingpanel", "smallpipe", "frame"],
    "Silver" : ["wire", "riffle"],
    "Silver Indium Alloy" : ["ingot", "plate", "nugget", "dust", "rod"],
    "Aluminium" : ["scaffoldingpanel"],
    "Lead" : ["sheet"],
    "Platinum" : ["ingot", "plate", "nugget", "dust", "rod", "sheet", "wire"],
    "Mixed Platinum Group Metal" : ["ingot", "plate", "nugget", "dust", "rod", "sheet", "wire"],
    "Tungsten" : ["ingot", "plate", "nugget", "dust", "rod", "wire", "block"],
    "Depleted Uranium Dioxide" : ["ingot", "plate", "nugget", "dust", "rod"],
    "Lightly Enriched Uranium Dioxide" : ["ingot", "plate", "nugget", "dust", "rod", "fuelpellet"],
    "Yttrium Barium Cuprate" : ["ingot", "plate", "nugget", "dust", "rod", "wire"],
    "Osmiridium" : ["ingot", "plate", "nugget", "dust", "rod", "sheet", "smallpipe"],
    "Enriched Naquadah" : ["ingot", "plate", "nugget", "dust", "rod", "fuelpellet"],
    "Neutronium" : ["ingot", "plate", "nugget", "dust", "rod", "sheet", "scaffoldingpanel", "frame"],
    //Metals, ore dust only
    "Gold" : ["riffle"],
    "Mercury Gold" : ["amalgam"],
    "Mercury Silver" : ["amalgam"],
    //Metals, dust
    "Magnesium" : ["dust"],
    "Cobalt" : ["dust"],
    "Indium" : ["dust"],
    "Gallium" : ["dust"],
    "Zirconium" : ["dust"],
    "Niobium" : ["dust"],
    "Neodymium" : ["dust"],
    "Yttrium" : ["dust"],
    "Barium" : ["dust"],
    "Mixed End Metals" : ["dust"],
    "Rich Mixed Platinum Group Metal" : ["dust"],
    "Naquadah" : ["dust"],
    //Nonmetal dusts
    "Stone" : ["dustunshaded"],
    "Charcoal" : ["dustunshaded"],
    "Magnesium Chloride" : ["salt"],
    "Lithium Chloride" : ["salt"],
    "Calcium Chloride" : ["salt"],
    "Ammonium Chloride" : ["salt"],
    "Calcium" : ["nonmetaldust"],
    "Cinnabar" : ["nonmetaldust"],
    "Quartz" : ["dustunshaded"],
    "Fluorite" : ["nonmetaldust"],
    "Ammonium Diuranate" : ["nonmetaldust"],
    "Fine Yellowcake" : ["nonmetaldust"],
    "Yellowcake" : ["nonmetaldust"],
    "Uranium Tetrafluoride" : ["nonmetaldust"],
    "Depleted Uranyl Fluoride" : ["nonmetaldust"],
    "Lightly Enriched Uranyl Fluoride" : ["nonmetaldust"],
    "Aluminium Hydroxide" : ["nonmetaldust"],
    "Alumina" : ["nonmetaldust"],
    "Rutile" : ["nonmetaldust"],
    "Niobium Pentoxide" : ["nonmetaldust"],
    "Ammonium Chloroplatinate" : ["nonmetaldust"],
    "Hydrated Tungsten Trioxide" : ["nonmetaldust"],
    "Tungsten Trioxide" : ["nonmetaldust"],
    //Nonmetal gems
    "Emerald" : ["gemdust", "gemplate", "lens"],
    "Glass" : ["gemplate", "lens"],
    "Diamond" : ["gemplate", "lens"],
    "Lapis" : ["gemplate", "lens"],
    "Ruby" : ["gemplate", "lens"],
    "Ender Pearl" : ["gemplate", "lens"],
    "Nether Star" : ["lens"],
    //Nonmetal processed dusts
    "Petroleum Coke" : ["dustunshaded", "fuel"],
    "Charcoal Precursor" : ["sludge"],
    //Metal slag intermediates
    "Impure Tin" : ["slag"],
    "Nickel Matte" : ["slag"],
    "Lead Sinter" : ["slag"],
    "Niobium Ferroalloy" : ["slag"],
    //Metal Sludge
    "Platinum Rich PGM Leach" : ["sludge"],
    "Iridium Rich PGM Leach" : ["sludge"],
    "Copper Derived Anode" : ["sludge"],
    "Nickel Derived Anode" : ["sludge"],
    //Silicon pieces
    "Gallium Doped Silicon" : ["boule", "boulewafer"],
    "Lithium Doped Silicon" : ["boule", "boulewafer"],
    "Integrated Circuit" : ["wafer", "circuitplate", "etchingplate", "preparedwafer", "etchedwafer"],
    "Central Processing Unit" : ["wafer", "circuitplate", "etchingplate", "preparedwafer", "etchedwafer"],
    "Random Access Memory" : ["wafer", "circuitplate"],
    "NAND Memory" : ["wafer", "circuitplate"],
    "System On Chip" : ["wafer", "circuitplate"],
    //Circuit bits
    "Raw" : ["processorcrystal", "naquadahprocessorcrystal"],
    "Engraved" : ["processorcrystal", "naquadahprocessorcrystal"],
    "Treated Wood" : ["circuitboard"],
    "Unprepared Plastic" : ["circuitboard"],
    "Plastic" : ["circuitboard"],
    "Unprepared Platinum Backed Plastic" : ["circuitboard"],
    "Platinum Backed Plastic" : ["circuitboard"],
    "Resistor" : ["smd"],
    //Railgin bits
    "Graphite Depleted Uranium Composite" : ["rod"],
    //Fuel rods
    "Fresh" : ["fuelbundle"],
    "Depleted" : ["fuelbundle"],
    "Spent" : ["fuelbundle"],
    "Deformed" : ["fuelbundle"],
    "Control" : ["rodbundle"],
    //Molds & dies
    "Ingot" : ["metalpressmold"],
    "Small Pipe" : ["metalpressmold"],
    "Pipe" : ["metalpressmold"],
    "Barrel" : ["metalpressmold"],
    "Wire" : ["metalpressmold"],
    "Fuel Pellet" : ["metalpressmold"],
    "Scaffolding Panel" : ["heavymetalpressdie"],
    "Bell" : ["heavymetalpressdie"],
    "HDPE Sheet" : ["injectionmold"],
    "HDPE Rod" : ["injectionmold"],
    //Fusion reactor pieces
    "Fusion Reactor Inner Casing" : ["machinecasing"],
    "Fusion Reactor Outer Casing" : ["machinecasing"],
    "Superconductive Coil" : ["machinecasing"],
    //Particle Accelerator & etc pieces
    "Particle Accelerator Casing" : ["machinecasing"],
    "Particle Containment Casing" : ["machinecasing"],
    "High Current Superconductive Coil" : ["machinecasing"],
    "Rare Earths Magnetic Coil" : ["machinecasing"],
    "Beam Control Lens" : ["machinecasing"],
    //Fusion reactor pieces
    "Fission Reactor Calandria Casing Shell" : ["machinecasing"],
    "Fission Reactor Calandria Casing" : ["machinecasing"],
    "Fission Reactor Fuel Rod Assembly Pipe Connector" : ["machinecasing"],
    //Naquadah reactor pieces
    "Naquadah Reactor Casing" : ["machinecasing"],
    //Bearings
    "Lubricated Bearing" : ["machinecasing"],
    "Magnetic Bearing" : ["machinecasing"],
    //Miscelaneous metal bits
    "Metal Barrel Shell" : ["machinecasing"],
    "Steel Barrel Shell" : ["machinecasing"],
    "Centrifuge Cylinder Shell" : ["machinecasing"],
    //Miscelaneous other blocks
    "Plastic Coated Rebar Concrete" : ["machinecasing"],
    //Register all the things!
    "Item" : ["perfectcircuit", "gpsunit", "solder", "smallbatteryhull", "supercapacitorhull", "supercapacitor", "inductiontablet", "unfilledsuperconductorcable", "unfilledhighcurrentsuperconductorcable", "enginebell", "advancedenginebell", "catalyticturbopump", "turbopump", "pressurizedheliumtank", "fueltankshell", "reactionwheel", "solarpanel", "mirrorarray", "collectionarray"],
};



//Hackjob mess of a function to make everything order itself well
for type, String in order {
    for material, Material in materials {
        for part, String in parts[material] {
            if (parts[material][part].contains(order[type]) && order[type].contains(parts[material][part])) {
                if (material.contains("Coke")) {
                    if (order[type].contains("dust")) {
                        materials[material].registerPart(order[type]).getData().addDataValue("burn", 4000);
                    } else
                        materials[material].registerPart(order[type]).getData().addDataValue("burn", 3200);
                } else if (material.contains("Charcoal") && !material.contains("Precursor")) {
                    materials[material].registerPart(order[type]).getData().addDataValue("burn", 2000);
                } else if (material.contains("Fusion") || material.contains("Superconductive")) {
                    val data = materials[material].registerPart(order[type]).getData();
                    data.addDataValue("hardness", 12);
                    data.addDataValue("resistance", 100);
                    data.addDataValue("harvestLevel", 4);
                } else if (material.contains("Fission")) {
                    val data = materials[material].registerPart(order[type]).getData();
                    data.addDataValue("hardness", 8);
                    data.addDataValue("resistance", 20);
                    data.addDataValue("harvestLevel", 3);
                } else if (order[type].contains("ore")) {
                    val data = materials[material].registerPart(order[type]).getData();
                    data.addDataValue("hardness", 3);
                    data.addDataValue("resistance", 3);
                    data.addDataValue("harvestLevel", 2);
                } else if (material.contains("Rebar")) {
                    val data = materials[material].registerPart(order[type]).getData();
                    data.addDataValue("hardness", 5);
                    data.addDataValue("resistance", 750);
                    data.addDataValue("harvestLevel", 2);
                } else
                    materials[material].registerPart(order[type]);
            }
        }
    }
}


/*
---- Colors ----
Electrum - f3b74a
Constantan - ef876c
Bronze - b88c5d
Lithium - 
*/

