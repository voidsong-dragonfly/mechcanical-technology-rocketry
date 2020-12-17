#priority 998

function localize_material(name as string, local as string) {
    game.setLocalization("item.contenttweaker." + name + "_ingot.name", local + " Ingot");
    game.setLocalization("item.contenttweaker." + name + "_nugget.name", local + " Nugget");
    game.setLocalization("item.contenttweaker." + name + "_plate.name", local + " Plate");
    game.setLocalization("item.contenttweaker." + name + "_dust.name", local + " Grit");
    game.setLocalization("item.contenttweaker." + name + "_mechanical_component.name", local + " Mechanical Component");
    game.setLocalization("item.contenttweaker." + name + "_sheet.name", local + " Sheet");
    game.setLocalization("item.contenttweaker." + name + "_wire.name", local + " Wire");
    game.setLocalization("item.contenttweaker." + name + "_stick.name", local + " Rod");
    game.setLocalization("item.contenttweaker." + name + "_gear.name", local + " Gear");
    game.setLocalization("item.contenttweaker." + name + "_scaffolding_panel.name", local + " Scaffolding Panel");
    game.setLocalization("item.contenttweaker.small_" + name + "_pipe.name", "Small " + local + " Pipe");
    game.setLocalization("item.contenttweaker.hot_" + name + "_ingot.name", "Hot " + local + " Ingot");
    game.setLocalization("tile.contenttweaker." + name + "_block.name", "Block of " + local);
}
