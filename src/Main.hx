package;


import openfl.display.Sprite;


/**
 * ...
 * @author Cosmin Dolha
 */
class Main extends Sprite 
{
	var gameScreen:GamePlay;
	public function new() 
	{
		super();
		gameScreen = new GamePlay();
		addChild(gameScreen);
	}

}
