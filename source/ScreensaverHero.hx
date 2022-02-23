package;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.math.FlxRandom;
import flixel.math.FlxVelocity;
import flixel.math.FlxPoint;

class ScreensaverHero extends FlxSprite
{
    
    public var direction:Float;
	public var randomDirection:FlxRandom = new FlxRandom();

    public function new(x:Float = 0, y:Float = 0)
    {
        super(x,y);
        this.makeGraphic(30, 30, FlxColor.BLUE, false);

        this.velocity.x = randomDirection.float(30, 500);
        this.velocity.y = randomDirection.float(0, 30);
    }
    override public function update(elapsed:Float)
        {
            
            color = FlxColor.fromHSL(250, 0.2, .5, 0.5);
            super.update(elapsed);
            

        }
}


