package;


import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.group.FlxGroup;

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
		var ScreensaverHero = new ScreensaverHero(50, 50);
		var ScreensaverHero1 = new ScreensaverHero(30, 30);
		var ScreensaverHero2 = new ScreensaverHero(100, 100);
		var ScreensaverHero3 = new ScreensaverHero(85, 85);
		var ScreensaverHero4 = new ScreensaverHero(20, 20);
		ScreensaverHero.screenCenter();
		add(ScreensaverHero);
		add(ScreensaverHero1);
		add(ScreensaverHero2);
		add(ScreensaverHero3);
		add(ScreensaverHero4);

		

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		
	}
}
