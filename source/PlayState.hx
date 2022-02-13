package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var hero:Hero = new Hero(300,300);
		add(hero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
