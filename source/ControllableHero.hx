package;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;

class ControllableHero extends FlxSprite
{

    var speed:Int;

    public function new(x:Int = 0, y:Int = 0)
    {
        super(x,y);
        this.makeGraphic(10, 50, FlxColor.YELLOW, false);
    }

    public function movement()
        {
            final left = FlxG.keys.pressed.LEFT;
            final right = FlxG.keys.pressed.RIGHT;
            final up = FlxG.keys.pressed.UP;
            final down = FlxG.keys.pressed.DOWN;

            if (left)
                {
                    this.velocity.x = -speed;
                }
                if (right)
                {
                    this.velocity.x = speed;
                }
                if (up)
                {
                    this.velocity.y = speed;
                }
                if (down)
                {
                    this.velocity.y = -speed;
                }
        }
    override public function update(elapsed:Float)
        {
            movement();
            super.update(elapsed);
        }
}
