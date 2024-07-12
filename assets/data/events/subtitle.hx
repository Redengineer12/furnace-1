import flixel.text.FlxTextBorderStyle;
var sub:FlxText;
function create() {
    sub = new FlxText(0, 492, 600, "", 32);
    sub.setFormat(Paths.font("tech.ttf"), 32, 0xFFFFFFF, "center", FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    sub.scrollFactor.set();
    sub.borderColor = 0xFF000000;
    sub.borderSize = 2;
    sub.screenCenter(FlxAxes.X);
    add(sub);
    sub.cameras = [camHUD];
}

function onEvent(e) {
    if (e.event.name == "subtitle"){
    sub.scale.x = 1.05;
    sub.scale.y = 1.05;
    sub.color = e.event.params[0];
    sub.borderColor = 0xFF000000;
    sub.text = e.event.params[1];
    FlxTween.tween(sub.scale, {x: 1, y: 1}, 0.2, {ease: FlxEase.circOut});
}
}