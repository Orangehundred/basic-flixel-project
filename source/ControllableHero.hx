package;

import flixel.FlxSprite;
import flixel.util.FlxColor;


class ScreensaverHero extends FlxSprite
{
    public function new(x:Int = 0, y:Int = 0)
    {
        super(x,y);
        this.makeGraphic(50, 12, FlxColor.YELLOW, false);
    }
    override public function update(elapsed:Float)
        {
            super.update(elapsed);
        }
}
