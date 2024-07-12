import funkin.game.Character;
import flixel.FlxSprite;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import funkin.game.PlayState;
var outlineShader = null;
var updater:Float = 0;
var ignoreBfNotes:Bool =false;
var preloadStuff = [
    'stages/wireframe/Bars',
    'stages/wireframe/Furnace Center',
    'stages/wireframe/Furnace Left',
    'stages/wireframe/Furnace Right',
    'stages/wireframe/Plataform',
    'stages/wireframe/Red Background',
    'icons/animated/destriobf-wireframe',
    'icons/animated/furnace-wireframe',
    'game/transition'
];

function create(){

    for(i in 0...preloadStuff.length){
        graphicCache.cache(Paths.image(preloadStuff[i]));
    }
    trace('created shit');    
} 

function update(elpased:Float){
	updater += elpased;
	//outlineShader.iTime = updater;
}

function transition(event) {
	var trans = new FlxSprite(-400,-500);
	
	trans.frames = Paths.getFrames('game/transition');
	trans.antialiasing=true;
	trans.animation.addByPrefix('trans', 'transition', 24, false);
	trans.cameras = [camHealth];
	trans.animation.play('trans');
	add(trans);

	trans.animation.finishCallback = function(_){
		remove(trans);
	}
}
function alpha(event){
	switch (event){
	case "in":
		FlxTween.tween(camHUD, {alpha:1}, 0.18, {ease: FlxEase.quadInOut}
		);
	case "out":
		FlxTween.tween(camHUD, {alpha:0}, 1, {ease: FlxEase.quadInOut}
		);
	}
}