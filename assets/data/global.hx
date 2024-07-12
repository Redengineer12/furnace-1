//
var windowName = 'Furnance Whitty';

window.title = windowName;

function postStateSwitch(){
    if(!Std.isOfType(FlxG.state, PlayState))
        window.title = windowName;
    else
        window.title = windowName + ' - ' + PlayState.SONG.meta.displayName;
}

function destroy(){
    window.title = "Friday Night Funkin' - Codename Engine";
}

function update(elapsed:Float)
    if (FlxG.keys.justPressed.F5) FlxG.resetState();