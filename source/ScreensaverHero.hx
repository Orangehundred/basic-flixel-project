package;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class ScreensaverHero extends FlxSprite
{
    public function new(x:Float = 0, y:Float = 0)
    {
        super(x,y);
        this.makeGraphic(20, 40, FlxColor.BLUE, false);
    }
    override public function update(elapsed:Float)
        {
            super.update(elapsed);
        }
}


