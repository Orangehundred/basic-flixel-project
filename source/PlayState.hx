package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.group.FlxGroup;

class PlayState extends FlxState
{
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
		screensaverGroup.add(ScreensaverHero);
		screensaverGroup.add(ScreensaverHero1);
		screensaverGroup.add(ScreensaverHero2);
		screensaverGroup.add(ScreensaverHero3);
		screensaverGroup.add(ScreensaverHero4);
		add(screensaverGroup);

		/*Walls*/

		wallGroup.add(new Wall(0, 50));
		wallGroup.add(new Wall(50, 100));
		wallGroup.add(new Wall(0, -50));
		wallGroup.add(new Wall(50, 500));
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

		/*
		if (screensaverGroup.velocity.x > 0 && screensaverGroup.x >= FlxG.width - sprscreensaverGroupite.width)
			{
				screensaverGroup.x = FlxG.width - screensaverGroup.width;
				screensaverGroup.velocity.x *= -1;
			}
			else if (screensaverGroup.velocity.x < 0 && screensaverGroup.x <= 0)
			{
				screensaverGroup.x = 0;
				screensaverGroup.velocity.x *= -1;
			}
		}
		*/
	}
}
