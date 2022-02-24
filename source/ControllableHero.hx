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
        }
    override public function update(elapsed:Float)
        {
            movement();
            super.update(elapsed);
        }
}
