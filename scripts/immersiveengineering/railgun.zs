//Import
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import mods.alfinivia.ImmersiveEngineering.addRailgunBullet;
import mods.alfinivia.IRailgunImpact;


/*
    Railgun tweaks, basic
*/
var titanium = [[0x9491b5], [0x9491b5], [0xb1add9], [0xcac6f7], [0xcac6f7], [0xcac6f7]] as int[][];
var titanium_aluminide = [[0x8c9cb2], [0x8c9cb2], [0x97a9c1], [0xaec2de], [0xaec2de], [0xaec2de]] as int[][];
var graphite_composite = [[0x000000], [0x000000], [0x272727], [0x3d3d3d], [0x3d3d3d], [0x3d3d3d]] as int[][];
addRailgunBullet(<ore:stickTitanium>, 28.0, 0.95, titanium);
addRailgunBullet(<ore:stickTitaniumAluminide>, 32.0, 0.9, titanium_aluminide);
addRailgunBullet(<ore:stickGraphiteDepletedUraniumComposite>, 48.0, 0.9, graphite_composite);

/*
    Railgun tweaks, advanced
*/
//Blaze rods burn you
var blaze_rod = [[0xae3c00], [0xae3c00], [0xb36b19], [0xffc100], [0xffc100], [0xffc100]] as int[][];
var wither_bone = [[0x000000], [0x000000], [0x272727], [0x3d3d3d], [0x3d3d3d], [0x3d3d3d]] as int[][];
var end_rod = [[0xae7dae], [0xf2dec9], [0xfbfbfb], [0xfbfbfb], [0xfbfbfb], [0xfbfbfb]] as int[][];
addRailgunBullet(<ore:rodBlaze>, 12.0, 1.25, function(target,shoot){target.setFire(15.0);return false;}, blaze_rod);
//Witherbones wither you
addRailgunBullet(<ore:boneWithered>, 12.0, 1.25,
    function(target,shoot){
        if(target instanceof IEntityLivingBase) {
            var target1  as IEntityLivingBase = target;
            target1.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100.0, 4.0));
        }
        return false;
        },
    wither_bone);
//End rods levitate you
addRailgunBullet(<minecraft:end_rod>, 16.0, 1.0,
    function(target,shoot){
        if(target instanceof IEntityLivingBase) {
            var target1  as IEntityLivingBase = target;
            target1.addPotionEffect(<potion:minecraft:levitation>.makePotionEffect(120.0, 1.0));
        }
        return false;
        },
    end_rod);

