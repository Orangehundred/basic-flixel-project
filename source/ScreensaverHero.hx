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


        this.makeGraphic(20, 20, FlxColor.GREEN, false);


        this.velocity.x = randomDirection.float(25, 45);
        this.velocity.y = randomDirection.float(0, 20);

    }

	public function changeColor(x:Float, y:Float)
        {
            if (x > y)
            {
                this.color = FlxColor.fromHSL(250, 0.2, .5, 0.5);
            }
            else if (x < y)
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

        /*If out of bounds*/
        if (this.velocity.x > 0 && this.x >= FlxG.width - this.width)
            {
                this.x = FlxG.width - this.width;
                this.velocity.x *= -1;
            }
            else if (this.velocity.x < 0 && this.x <= 0)
            {
                this.x = 0;
                this.velocity.x *= -1;
            }
        if (this.velocity.y > 0 && this.y >= FlxG.height - this.height)
            {
                this.y = FlxG.height - this.height;
                this.velocity.y *= -1;
            }
            else if (this.velocity.y < 0 && this.y <= 0)
            {
                this.y = 0;
                this.velocity.y *= -1;
            }
        }
}


