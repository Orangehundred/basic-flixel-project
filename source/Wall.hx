import flixel.FlxSprite;
import flixel.util.FlxColor;

class Wall extends FlxSprite
{
	public function new(x:Int = 0, y:Int = 0)
	{
		super(x,y);
		this.makeGraphic(15, 50, FlxColor.RED, false);
	}


	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		

	}
}