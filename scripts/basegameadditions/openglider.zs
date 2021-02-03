//Make OpenGlider hang glider parts require leather sheets
recipes.remove(<openglider:hang_glider_part>);
recipes.remove(<openglider:hang_glider_part:1>);
recipes.addShaped(<openglider:hang_glider_part>,
 [[null, <ore:stickWood>, <ore:leatherSheet>],
 [<ore:stickWood>, <ore:leatherSheet>, <ore:leatherSheet>],
 [<ore:leatherSheet>, <ore:leatherSheet>, null]]);
recipes.addShaped(<openglider:hang_glider_part:1>,
 [[<ore:leatherSheet>, <ore:stickWood>, null],
 [<ore:leatherSheet>, <ore:leatherSheet>, <ore:stickWood>],
 [null, <ore:leatherSheet>, <ore:leatherSheet>]]);

