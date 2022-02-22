package;

import flixel.FlxSprite;
import flixel.util.FlxColor;


class ScreensaverHero extends FlxSprite
{
    public function new(x:Float = 0, y:Float = 0)
    {
        super(x,y);
        var rectangle = new FlxSprite();
        rectangle.makeGraphic(64, 32, FlxColor.BLUE);
    }
    override public function update(elapsed:Float)
        {
            super.update(elapsed);
        }
}


