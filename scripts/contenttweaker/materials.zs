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
MaterialSystem.getPartBuilder().setName("nonmetaldust").setPartType(MaterialSystem.getPartType("item")).setOreDictName("dust").build();
MaterialSystem.getPartBuilder().setName("dustunshaded").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("dust").build();
MaterialSystem.getPartBuilder().setName("amalgam").setPartType(MaterialSystem.getPartType("item")).setOreDictName("amalgam").build();
//New parts - other types
MaterialSystem.getPartBuilder().setName("wire").setPartType(MaterialSystem.getPartType("item")).setOreDictName("wire").build();
MaterialSystem.getPartBuilder().setName("sheet").setPartType(MaterialSystem.getPartType("item")).setOreDictName("sheet").build();
MaterialSystem.getPartBuilder().setName("mechanicalcomponent").setPartType(MaterialSystem.getPartType("item")).setOreDictName("mechanicalComponent").build();
MaterialSystem.getPartBuilder().setName("scaffoldingpanel").setPartType(MaterialSystem.getPartType("item")).setOreDictName("scaffoldingPanel").build();
MaterialSystem.getPartBuilder().setName("smallpipe").setPartType(MaterialSystem.getPartType("item")).setOreDictName("smallPipe").build();
MaterialSystem.getPartBuilder().setName("fuelpellet").setPartType(MaterialSystem.getPartType("item")).setOreDictName("fuelPellet").build();
MaterialSystem.getPartBuilder().setName("compressor").setPartType(MaterialSystem.getPartType("item")).setOreDictName("compressor").build();
//New parts - nonmetal types
MaterialSystem.getPartBuilder().setName("fiber").setPartType(MaterialSystem.getPartType("item")).setOreDictName("fiber").build();
MaterialSystem.getPartBuilder().setName("slag").setPartType(MaterialSystem.getPartType("item")).setOreDictName("slag").build();
MaterialSystem.getPartBuilder().setName("sludge").setPartType(MaterialSystem.getPartType("item")).setOreDictName("sludge").build();
//New parts - silicon types
MaterialSystem.getPartBuilder().setName("boule").setPartType(MaterialSystem.getPartType("item")).setOreDictName("boule").build();
MaterialSystem.getPartBuilder().setName("boulewafer").setPartType(MaterialSystem.getPartType("item")).setOreDictName("wafer").build();
MaterialSystem.getPartBuilder().setName("wafer").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("wafer").build();
MaterialSystem.getPartBuilder().setName("circuitplate").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("circuitPlate").build();
MaterialSystem.getPartBuilder().setName("etchingplate").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("etchingPlate").build();
MaterialSystem.getPartBuilder().setName("preparedwafer").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("preparedWafer").build();
//New parts - circuit parts
MaterialSystem.getPartBuilder().setName("grapheneprocessorcrystal").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("grapheneProcessorCrystal").build();
MaterialSystem.getPartBuilder().setName("perfectcircuit").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("perfectCircuit").build();
MaterialSystem.getPartBuilder().setName("circuitboard").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("circuitBoard").build();
MaterialSystem.getPartBuilder().setName("smd").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("smd").build();
MaterialSystem.getPartBuilder().setName("gpsunit").setPartType(MaterialSystem.getPartType("item")).setOreDictName("gpsUnit").build();
MaterialSystem.getPartBuilder().setName("circuitdesignic").setPartType(MaterialSystem.getPartType("item")).setOreDictName("circuitDesignIntegratedCircuit").build();
MaterialSystem.getPartBuilder().setName("circuitdesigncpu").setPartType(MaterialSystem.getPartType("item")).setOreDictName("circuitDesignCentralProcessingUnit").build();
MaterialSystem.getPartBuilder().setName("circuitdesignmemory").setPartType(MaterialSystem.getPartType("item")).setOreDictName("circuitDesignMemory").build();
MaterialSystem.getPartBuilder().setName("solder").setPartType(MaterialSystem.getPartType("item")).setOreDictName("solder").build();
//New parts - fuel rods
MaterialSystem.getPartBuilder().setName("fuelbundle").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("fuelBundle").build();
MaterialSystem.getPartBuilder().setName("rodbundle").setPartType(MaterialSystem.getPartType("item")).setHasOverlay(false).setOreDictName("rodBundle").build();
//New parts - power items
MaterialSystem.getPartBuilder().setName("smallbatteryhull").setPartType(MaterialSystem.getPartType("item")).setOreDictName("smallBatteryHull").build();
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
//New parts - molds, rods, and dies
MaterialSystem.getPartBuilder().setName("metalpressmold").setPartType(MaterialSystem.getPartType("item")).setOreDictName("metalPressMold").build();
MaterialSystem.getPartBuilder().setName("heavymetalpressdie").setPartType(MaterialSystem.getPartType("item")).setOreDictName("heavyMetalPressDie").build();
MaterialSystem.getPartBuilder().setName("injectionmold").setPartType(MaterialSystem.getPartType("item")).setOreDictName("injectionMold").build();



//Order
static order as string[] = ["ingot", "plate", "nugget", "rod", "gear", "fiber", "wire", "sheet", "scaffoldingpanel", "smallpipe", "mechanicalcomponent", "fuelpellet", "compressor", "dust", "nonmetaldust", "dustunshaded", "salt", "amalgam", "sludge", "slag", "boule", "boulewafer", "wafer", "circuitplate", "etchingplate", "preparedwafer", "grapheneprocessorcrystal", "perfectcircuit", "circuitboard", "smd", "gpsunit", "circuitdesignic", "circuitdesigncpu", "circuitdesignmemory", "solder", "fuelbundle", "rodbundle", "smallbatteryhull", "inductiontablet", "unfilledsuperconductorcable", "unfilledhighcurrentsuperconductorcable", "enginebell", "advancedenginebell", "catalyticturbopump", "turbopump", "pressurizedheliumtank", "fueltankshell", "reactionwheel", "solarpanel", "mirrorarray", "collectionarray", "metalpressmold", "heavymetalpressdie", "injectionmold", "block"];



//Materials
static materials as Material[string] = {
    //Metals
    "Steel" : MaterialSystem.getMaterialBuilder().setName("Steel").setColor(Color.fromHex("707070")).build(),
    "Maraging Steel" : MaterialSystem.getMaterialBuilder().setName("Maraging Steel").setColor(Color.fromHex("83919E")).build(),
    "Titanium" : MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(Color.fromHex("CCC8FA")).build(),
    "Aluminium Magnesium Titanide" : MaterialSystem.getMaterialBuilder().setName("Aluminium Magnesium Titanide").setColor(Color.fromHex("aec2de")).build(),
    "Titanium Nitride" : MaterialSystem.getMaterialBuilder().setName("Titanium Nitride").setColor(Color.fromHex("DDDAFA")).build(),
    "Beryllium" : MaterialSystem.getMaterialBuilder().setName("Beryllium").setColor(Color.fromHex("999A8D")).build(),
    "Silver" : MaterialSystem.getMaterialBuilder().setName("Silver").setColor(Color.fromHex("d0dce4")).build(),
    "Aluminium" : MaterialSystem.getMaterialBuilder().setName("Aluminium").setColor(Color.fromHex("b3babd")).build(),
    "Platinum" : MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(Color.fromHex("C9E3F9")).build(),
    "Mixed Platinum Group Metal" : MaterialSystem.getMaterialBuilder().setName("Mixed Platinum Group Metal").setColor(Color.fromHex("c6d0d1")).build(),
    "Depleted Uranium Dioxide" : MaterialSystem.getMaterialBuilder().setName("Depleted Uranium Dioxide").setColor(Color.fromHex("363636")).build(),
    "Lightly Enriched Uranium Dioxide" : MaterialSystem.getMaterialBuilder().setName("Lightly Enriched Uranium Dioxide").setColor(Color.fromHex("55614c")).build(),
    "Mischmetal" : MaterialSystem.getMaterialBuilder().setName("Mischmetal").setColor(Color.fromHex("7e8084")).build(),
    "Titanium Iridium Alloy" : MaterialSystem.getMaterialBuilder().setName("Titanium Iridium Alloy").setColor(Color.fromHex("d7dfe4")).build(),
    "Annealed Copper" : MaterialSystem.getMaterialBuilder().setName("Annealed Copper").setColor(Color.fromHex("d55e28")).build(),
    //Metals, ore dust(s) only
    "Mercury Gold" : MaterialSystem.getMaterialBuilder().setName("Mercury Gold").setColor(Color.fromHex("8b7e43")).build(),
    "Mercury Silver" : MaterialSystem.getMaterialBuilder().setName("Mercury Silver").setColor(Color.fromHex("848b8f")).build(),
    //Metals, dust
    "Magnesium" : MaterialSystem.getMaterialBuilder().setName("Magnesium").setColor(Color.fromHex("928a89")).build(),
    "Cobalt" : MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(Color.fromHex("25436A")).build(),
    "Rich Mixed Platinum Group Metal" : MaterialSystem.getMaterialBuilder().setName("Rich Mixed Platinum Group Metal").setColor(Color.fromHex("c6d0d1")).build(),
    //Nonmetal dusts
    "Stone" : MaterialSystem.getMaterialBuilder().setName("Stone").setColor(Color.fromHex("ffffff")).build(),
    "Charcoal" : MaterialSystem.getMaterialBuilder().setName("Charcoal").setColor(Color.fromHex("ffffff")).build(),
    "Magnesium Chloride" : MaterialSystem.getMaterialBuilder().setName("Magnesium Chloride").setColor(Color.fromHex("716d6c")).build(),
    "Lithium Chloride" : MaterialSystem.getMaterialBuilder().setName("Lithium Chloride").setColor(Color.fromHex("737062")).build(),
    "Cinnabar" : MaterialSystem.getMaterialBuilder().setName("Cinnabar").setColor(Color.fromHex("ae2e2e")).build(),
    "Fluorite" : MaterialSystem.getMaterialBuilder().setName("Fluorite").setColor(Color.fromHex("b18e35")).build(),
    "Ammonium Diuranate" : MaterialSystem.getMaterialBuilder().setName("Ammonium Diuranate").setColor(Color.fromHex("8e6c2b")).build(),
    "Yellowcake" : MaterialSystem.getMaterialBuilder().setName("Yellowcake").setColor(Color.fromHex("69614d")).build(),
    "Uranium Tetrafluoride" : MaterialSystem.getMaterialBuilder().setName("Uranium Tetrafluoride").setColor(Color.fromHex("314b38")).build(),
    "Depleted Uranyl Fluoride" : MaterialSystem.getMaterialBuilder().setName("Depleted Uranyl Fluoride").setColor(Color.fromHex("a85f2f")).build(),
    "Lightly Enriched Uranyl Fluoride" : MaterialSystem.getMaterialBuilder().setName("Lightly Enriched Uranyl Fluoride").setColor(Color.fromHex("a85f2f")).build(),
    "Aluminium Hydroxide" : MaterialSystem.getMaterialBuilder().setName("Aluminium Hydroxide").setColor(Color.fromHex("949aa0")).build(),
    "Alumina" : MaterialSystem.getMaterialBuilder().setName("Alumina").setColor(Color.fromHex("828282")).build(),
    "Rutile" : MaterialSystem.getMaterialBuilder().setName("Rutile").setColor(Color.fromHex("68504f")).build(),
    //Nonmetal processed dusts
    "Charcoal Precursor" : MaterialSystem.getMaterialBuilder().setName("Charcoal Precursor").setColor(Color.fromHex("282115")).build(),
    //Fibers
    "Bitumen" : MaterialSystem.getMaterialBuilder().setName("Bitumen").setColor(Color.fromHex("2a2a2a")).build(),
    "Carbonized Bitumen" : MaterialSystem.getMaterialBuilder().setName("Carbonized Bitumen").setColor(Color.fromHex("252525")).build(),
    "Graphene" : MaterialSystem.getMaterialBuilder().setName("Graphene").setColor(Color.fromHex("101010")).build(),
    "Carbon" : MaterialSystem.getMaterialBuilder().setName("Carbon").setColor(Color.fromHex("202020")).build(),
    "Basalt" : MaterialSystem.getMaterialBuilder().setName("Basalt").setColor(Color.fromHex("171717")).build(),
    //Metal slag intermediates
    "Impure Tin" : MaterialSystem.getMaterialBuilder().setName("Impure Tin").setColor(Color.fromHex("928c87")).build(),
    "Nickel Matte" : MaterialSystem.getMaterialBuilder().setName("Nickel Matte").setColor(Color.fromHex("5b574f")).build(),
    "Lead Sinter" : MaterialSystem.getMaterialBuilder().setName("Lead Sinter").setColor(Color.fromHex("242023")).build(),
    //Metal Sludge
    "Copper Derived Anode" : MaterialSystem.getMaterialBuilder().setName("Copper Derived Anode").setColor(Color.fromHex("474643")).build(),
    "Nickel Derived Anode" : MaterialSystem.getMaterialBuilder().setName("Nickel Derived Anode").setColor(Color.fromHex("434347")).build(),
    //Silicon pieces
    "Gold Doped Silicon" : MaterialSystem.getMaterialBuilder().setName("Gold Doped Silicon").setColor(Color.fromHex("ffffff")).build(),
    "Lithium Doped Silicon" : MaterialSystem.getMaterialBuilder().setName("Lithium Doped Silicon").setColor(Color.fromHex("ffffff")).build(),
    "Integrated Circuit" : MaterialSystem.getMaterialBuilder().setName("Integrated Circuit").setColor(Color.fromHex("ffffff")).build(),
    "Central Processing Unit" : MaterialSystem.getMaterialBuilder().setName("Central Processing Unit").setColor(Color.fromHex("ffffff")).build(),
    "Random Access Memory" : MaterialSystem.getMaterialBuilder().setName("Random Access Memory").setColor(Color.fromHex("ffffff")).build(),
    "NAND Memory" : MaterialSystem.getMaterialBuilder().setName("NAND Memory").setColor(Color.fromHex("ffffff")).build(),
    "System On Chip" : MaterialSystem.getMaterialBuilder().setName("System On Chip").setColor(Color.fromHex("ffffff")).build(),
    //Circuit bits
    "Raw" : MaterialSystem.getMaterialBuilder().setName("Raw").setColor(Color.fromHex("ffffff")).build(),
    "Engraved" : MaterialSystem.getMaterialBuilder().setName("Engraved").setColor(Color.fromHex("ffffff")).build(),
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
    "Fiber" : MaterialSystem.getMaterialBuilder().setName("Fiber").setColor(Color.fromHex("ffffff")).build(),
    "Fuel Pellet" : MaterialSystem.getMaterialBuilder().setName("Fuel Pellet").setColor(Color.fromHex("ffffff")).build(),
    "Scaffolding Panel" : MaterialSystem.getMaterialBuilder().setName("Scaffolding Panel").setColor(Color.fromHex("ffffff")).build(),
    "Bell" : MaterialSystem.getMaterialBuilder().setName("Bell").setColor(Color.fromHex("ffffff")).build(),
    "HDPE Sheet" : MaterialSystem.getMaterialBuilder().setName("HDPE Sheet").setColor(Color.fromHex("ffffff")).build(),
    "HDPE Rod" : MaterialSystem.getMaterialBuilder().setName("HDPE Rod").setColor(Color.fromHex("ffffff")).build(),
    //Register all the things!
    "Item" : MaterialSystem.getMaterialBuilder().setName("Item").setColor(Color.fromHex("ffffff")).build(),
    
};

static parts as string[][string] = {
    //Metals
    "Steel" : ["scaffoldingpanel"],
    "Maraging Steel" : ["ingot", "plate", "nugget", "dust", "rod", "mechanicalcomponent", "scaffoldingpanel" , "block", "smallpipe"],
    "Titanium" : ["smallpipe", "wire"],
    "Aluminium Magnesium Titanide" : ["scaffoldingpanel", "compressor"],
    "Titanium Nitride" : ["wire"],
    "Beryllium" : ["ingot", "nugget", "dust", "scaffoldingpanel", "smallpipe"],
    "Silver" : ["wire"],
    "Aluminium" : ["scaffoldingpanel"],
    "Platinum" : ["ingot", "plate", "nugget", "dust", "sheet", "wire"],
    "Mixed Platinum Group Metal" : ["dust"],
    "Depleted Uranium Dioxide" : ["ingot", "plate", "nugget", "dust"],
    "Lightly Enriched Uranium Dioxide" : ["fuelpellet"],
    "Mischmetal" : ["ingot", "nugget", "dust", "wire"],
    "Titanium Iridium Alloy" : ["scaffoldingpanel"],
    "Annealed Copper" : ["wire"],
    //Metals, ore dust only
    "Mercury Gold" : ["amalgam"],
    "Mercury Silver" : ["amalgam"],
    //Metals, dust
    "Magnesium" : ["dust"],
    "Cobalt" : ["dust"],
    "Rich Mixed Platinum Group Metal" : ["dust"],
    //Nonmetal dusts
    "Stone" : ["dustunshaded"],
    "Charcoal" : ["dustunshaded"],
    "Magnesium Chloride" : ["salt"],
    "Lithium Chloride" : ["salt"],
    "Cinnabar" : ["nonmetaldust"],
    "Fluorite" : ["nonmetaldust"],
    "Ammonium Diuranate" : ["nonmetaldust"],
    "Yellowcake" : ["nonmetaldust"],
    "Uranium Tetrafluoride" : ["nonmetaldust"],
    "Depleted Uranyl Fluoride" : ["nonmetaldust"],
    "Lightly Enriched Uranyl Fluoride" : ["nonmetaldust"],
    "Aluminium Hydroxide" : ["nonmetaldust"],
    "Alumina" : ["nonmetaldust"],
    "Rutile" : ["nonmetaldust"],
    //Nonmetal processed dusts
    "Charcoal Precursor" : ["sludge"],
    //Fibers
    "Bitumen" : ["fiber"],
    "Carbonized Bitumen" : ["fiber"],
    "Graphene" : ["fiber"],
    "Carbon" : ["fiber"],
    "Basalt" : ["fiber"],
    //Metal slag intermediates
    "Impure Tin" : ["slag"],
    "Nickel Matte" : ["slag"],
    "Lead Sinter" : ["slag"],
    //Metal Sludge
    "Copper Derived Anode" : ["sludge"],
    "Nickel Derived Anode" : ["sludge"],
    //Silicon pieces
    "Gold Doped Silicon" : ["boule", "boulewafer"],
    "Lithium Doped Silicon" : ["boule", "boulewafer"],
    "Integrated Circuit" : ["wafer", "circuitplate", "etchingplate", "preparedwafer"],
    "Central Processing Unit" : ["wafer", "circuitplate", "etchingplate", "preparedwafer"],
    "Random Access Memory" : ["wafer", "circuitplate"],
    "NAND Memory" : ["wafer", "circuitplate"],
    "System On Chip" : ["wafer", "circuitplate"],
    //Circuit bits
    "Raw" : ["grapheneprocessorcrystal"],
    "Engraved" : ["grapheneprocessorcrystal"],
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
    "Fiber" : ["metalpressmold"],
    "Fuel Pellet" : ["metalpressmold"],
    "Scaffolding Panel" : ["heavymetalpressdie"],
    "Bell" : ["heavymetalpressdie"],
    "HDPE Sheet" : ["injectionmold"],
    "HDPE Rod" : ["injectionmold"],
    //Register all the things!
    "Item" : ["perfectcircuit", "gpsunit", "circuitdesignic", "circuitdesigncpu", "circuitdesignmemory", "solder", "inductiontablet", "unfilledsuperconductorcable", "unfilledhighcurrentsuperconductorcable", "enginebell", "advancedenginebell", "catalyticturbopump", "turbopump", "pressurizedheliumtank", "reactionwheel"],
};



//Hackjob mess of a function to make everything order itself well
for type, String in order {
    for material, Material in materials {
        for part, String in parts[material] {
            if (parts[material][part].contains(order[type]) && order[type].contains(parts[material][part])) {
                if (material.contains("Charcoal") && !material.contains("Precursor")) {
                    materials[material].registerPart(order[type]).getData().addDataValue("burn", 2000);
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
Tungsten - 3e424b
*/

