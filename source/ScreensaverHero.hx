package;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.math.FlxRandom;
import flixel.FlxG;

class ScreensaverHero extends FlxSprite
{
    
    public var direction:Float;
	public var randomDirection:FlxRandom = new FlxRandom();

    public function new(x:Float = 0, y:Float = 0)
    {
        super(x,y);


        this.makeGraphic(30, 30, FlxColor.BLUE, false);


        this.velocity.x = randomDirection.float(30, 20);
        this.velocity.y = randomDirection.float(0, 30);

    }

	public function changeColor(x:Float, y:Float)
        {
            if (x > y)
            {
                this.color = FlxColor.fromHSL(250, 0.2, .5, 0.5);
            }
            if (x < y)
            {
                this.color = FlxColor.fromHSL(50, 0.8, .5, 0.1);
            }
            else
            {
                this.color = FlxColor.fromHSL(100, 0.5, .5, 0.9);
            }
        }


    override public function update(elapsed:Float)
        {
            changeColor(this.x / FlxG.width, this.y / FlxG.height);
            super.update(elapsed);
        }
}


