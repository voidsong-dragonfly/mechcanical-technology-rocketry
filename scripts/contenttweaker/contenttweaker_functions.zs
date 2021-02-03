#priority 999
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

function create_metal_material(name as string, basic as bool, wire as bool, sheet as bool, component as bool, gear as bool, scaffold as bool, pipe as bool) {
    if (basic) {
        createItem(name + "_ingot").register();
        createItem(name + "_nugget").register();
        createItem(name + "_dust").register();
        createItem(name + "_plate").register();
        createItem(name + "_stick").register();
    }
    if (wire) {
        createItem(name + "_wire").register();
    }
    if (sheet) {
        createItem(name + "_sheet").register();
    }
    if (component) {
        createItem(name + "_mechanical_component").register();
    }
    if (gear) {
        createItem(name + "_gear").register();
    }
    if (scaffold) {
        createItem(name + "_scaffolding_panel").register();
    }
    if (pipe) {
        createItem("small_" + name + "_pipe").register();
    }
}

function create_fluid(name as string, color as string, temperature as int, density as int, viscosity as int) {
    var fluid = createFluid(name, Color.fromHex(color));
    fluid.temperature = temperature;
    fluid.density = density;
    fluid.viscosity = viscosity;
    fluid.register();
}

function create_solid_fluid(name as string, color as string, temperature as int, density as int, viscosity as int) {
    var fluid = createFluid(name, Color.fromHex(color));
    fluid.temperature = temperature;
    fluid.density = density;
    fluid.viscosity = viscosity;
    fluid.stillLocation = "contenttweaker:fluids/solid_fluid_still";
    fluid.flowingLocation = "contenttweaker:fluids/solid_fluid_flow";
    fluid.register();
}

function create_molten_fluid(name as string, color as string, temperature as int, density as int, viscosity as int) {
    var fluid = createFluid(name, Color.fromHex(color));
    fluid.temperature = temperature;
    fluid.density = density;
    fluid.viscosity = viscosity;
    fluid.stillLocation = "contenttweaker:fluids/molten_still";
    fluid.flowingLocation = "contenttweaker:fluids/molten_flow";
    fluid.register();
}

function create_gas(name as string, color as string) {
    var fluid = createFluid(name, Color.fromHex(color));
    fluid.temperature = 300;
    fluid.density = -1000;
    fluid.viscosity = 1000;
    fluid.register();
}

function create_block(name as string, material as BlockMaterial, hardness as double, resistance as double, tool as string, level as int) {
    var block = createBlock(name, material);
    block.setBlockHardness(hardness);
    block.setBlockResistance(resistance);
    block.setToolClass(tool);
    block.setToolLevel(level);
    block.register();

}

function create_block_sound(name as string, material as BlockMaterial, hardness as double, resistance as double, tool as string, sound as SoundType, level as int) {
    var block = createBlock(name, material);
    block.setBlockHardness(hardness);
    block.setBlockResistance(resistance);
    block.setToolClass(tool);
    block.setBlockSoundType(sound);
    block.setToolLevel(level);
    block.register();

}

function create_block_transparent(name as string, material as BlockMaterial, hardness as double, resistance as double, tool as string, sound as SoundType, level as int) {
    var block = createBlock(name, material);
    block.setBlockHardness(hardness);
    block.setBlockResistance(resistance);
    block.setToolClass(tool);
    block.setBlockSoundType(sound);
    block.setToolLevel(level);
    block.setBlockLayer("TRANSLUCENT");
    block.register();

}

function create_metal_material_block(name as string, basic as bool, wire as bool, sheet as bool, component as bool, gear as bool, scaffold as bool, pipe as bool, hardness as double, resistance as double, level as int) {
    if (basic) {
        createItem(name + "_ingot").register();
        createItem(name + "_nugget").register();
        createItem(name + "_dust").register();
        createItem(name + "_plate").register();
        createItem(name + "_stick").register();
    }
    if (wire) {
        createItem(name + "_wire").register();
    }
    if (sheet) {
        createItem(name + "_sheet").register();
    }
    if (component) {
        createItem(name + "_mechanical_component").register();
    }
    if (gear) {
        createItem(name + "_gear").register();
    }
    if (scaffold) {
        createItem(name + "_scaffolding_panel").register();
    }
    if (pipe) {
        createItem("small_" + name + "_pipe").register();
    }
    create_block(name + "_block", <blockmaterial:iron>, hardness, resistance, "pickaxe", level);
}
