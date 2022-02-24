package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.group.FlxGroup;

class PlayState extends FlxState
{
	/*Global Variables*/
	var controlledHero:ControllableHero;
	var screensaverGroup = new FlxTypedGroup<ScreensaverHero>();
	var wallGroup = new FlxTypedGroup<Wall>();
	
	override public function create()
	{
		super.create();

		/*Hero*/
		var hero:Hero = new Hero(300,300);
		add(hero);

		/*Text*/
		var text = new flixel.text.FlxText(0, 20, 0, "Pong Game?", 20);
		text.screenCenter();
		text.color = FlxColor.WHITE;
		text.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.RED, 1);
		add(text);	

		/*ScreensaverHero*/            
		add(screensaverGroup);
		for (i in 0...15)
			{
				screensaverGroup.add(new ScreensaverHero(50, 50));
			}

		/*Walls*/
		wallGroup.add(new Wall(150, 300));
		wallGroup.add(new Wall(300, 200));
		wallGroup.add(new Wall(50, 400));
		wallGroup.add(new Wall(450, 300));
		wallGroup.add(new Wall(600, 400));
		add(wallGroup);

		/*ControllableHero*/
		var controlledHero = new ControllableHero(300, 150, 30);
		controlledHero.screenCenter();
		add(controlledHero);


	}

	override public function update(elapsed:Float)
	{
		FlxG.collide(controlledHero, wallGroup);
		super.update(elapsed);
	}
}
