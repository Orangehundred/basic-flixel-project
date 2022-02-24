import flixel.FlxSprite;
import flixel.util.FlxColor;

class Wall extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		super(x,y);

		this.makeGraphic(25, 25, FlxColor.RED, false);
		immovable = true;
	}


	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		

	}
}