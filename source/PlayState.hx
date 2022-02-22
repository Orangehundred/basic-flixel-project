package;

import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		/*Hero*/
		var hero:Hero = new Hero(300,300);
		add(hero);

		/*Text*/
		var text = new flixel.text.FlxText(0, 0, 0, "Hello World, how are you?", 20);
		text.screenCenter();
		text.color = FlxColor.WHITE;
		text.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.RED, 1);
		add(text);	

		/*ScreensaverHero*/            
		var shape:ScreensaverHero = new ScreensaverHero(50, 50);
		shape.screenCenter();
		add(shape);   
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		
	}
}
