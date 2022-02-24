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


        this.makeGraphic(20, 20, FlxColor.PURPLE, false);


        this.velocity.x = randomDirection.float(25, 45);
        this.velocity.y = randomDirection.float(0, 20);

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

            /*If out of bounds*/
            if ((velocity.x > 0 && x + width >= FlxG.width) || (velocity.x < 0 && x <= 0))
                velocity.x *= -1;
            if ((velocity.y > 0 && y + height >= FlxG.height) || (velocity.y < 0 && y <= 0))
                velocity.y *= -1;
        }


    override public function update(elapsed:Float)
        {
            changeColor(this.x / FlxG.width, this.y / FlxG.height);
            super.update(elapsed);
        }
}


