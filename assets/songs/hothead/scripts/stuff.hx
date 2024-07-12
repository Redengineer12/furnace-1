import flixel.FlxSprite;
import funkin.game.PlayState;



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