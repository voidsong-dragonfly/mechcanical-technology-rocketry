//Add some recipes for tetra items to people can use them without traveling very very far
recipes.addShaped(<tetra:hammer_head>, 
 [[<ore:plateTungsten>, <ore:scaffoldingSteel>, <ore:plateTungsten>],
 [<ore:plateTungsten>, <engineersdecor:thick_steel_pole_head>, <ore:plateTungsten>],
 [null, <ore:blockTungsten>, null]]);
recipes.addShaped(<tetra:hammer_base>,
 [[<ore:scaffoldingSteel>, <ore:gearSteel>, <ore:scaffoldingSteel>],
 [<engineersdecor:thin_steel_pole>, <ore:machineCasingSteelBarrelShell>, <engineersdecor:thin_steel_pole>],
 [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
recipes.addShaped(<tetra:magmatic_cell:128>,
 [[null, <ore:sheetSteel>, <ore:mechanicalComponentSteel>],
 [<ore:sheetSteel>, <ore:paneGlass>, <ore:sheetSteel>],
 [<ore:mechanicalComponentSteel>, <ore:sheetSteel>, null]]);
recipes.addShapeless(<tetra:journal>, [<tetra:duplex_tool_modular>.withTag({"duplex/basic_hammer_right_material": "basic_hammer/log", "duplex/basic_hammer_left_material": "basic_hammer/log", "duplex/handle": "duplex/basic_handle", "duplex/head_left": "duplex/basic_hammer_left", "duplex/basic_handle_material": "basic_handle/stick", "duplex/head_right": "duplex/basic_hammer_right"})]);
