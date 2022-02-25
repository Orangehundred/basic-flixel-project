package;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;

class ControllableHero extends FlxSprite
{

    var speed:Int;

    public function new(x:Int = 0, y:Int = 0, ?speed:Int = 100)
    {
        super(x,y);
        this.speed = speed;
        this.makeGraphic(10, 50, FlxColor.YELLOW, false);
    }


     function movement()
        {
            this.velocity.x = 0;
            this.velocity.y = 0;
            if (FlxG.keys.pressed.LEFT)
            {
                this.velocity.x = -speed;
            }
            if (FlxG.keys.pressed.RIGHT)
            {
                this.velocity.x = speed;
            }
            if (FlxG.keys.pressed.UP)
            {
                this.velocity.y = -speed;
            }
            if (FlxG.keys.pressed.DOWN)
            {
                this.velocity.y = speed;
            }
            if (FlxG.keys.pressed.DOWN && FlxG.keys.pressed.UP)
            {
                velocity.y = 0;
            }
            if (FlxG.keys.pressed.LEFT && FlxG.keys.pressed.RIGHT)
            {
                velocity.x = 0;
            }

                /*If out of bounds*/
                if ((velocity.x > 0 && x + width >= FlxG.width) || (velocity.x < 0 && x <= 0))
                    velocity.x *= -1;
                if ((velocity.y > 0 && y + height >= FlxG.height) || (velocity.y < 0 && y <= 0))
                    velocity.y *= -1;
        }
    override public function update(elapsed:Float)
        {
            movement();
            super.update(elapsed);
        }
}
