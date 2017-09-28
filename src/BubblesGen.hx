package;
import openfl.display.DisplayObject;
import openfl.display.Sprite;
import Std.random;
import motion.Actuate;
import haxe.Timer;
/**
 * ...
 * @author Cosmin Dolha
 */
class BubblesGen extends Sprite
{
	var bubblesPool:Array<Sprite>;

	public function new() 
	{
		super();
		
		bubblesPool = new Array<Sprite>();
		genBubbles();
	}
	function genBubbles() :Void
	{
		var bubble:Bubbles;
		var spriteBubble:Sprite;
		if (bubblesPool.length == 0)
		{
			spriteBubble = new Sprite();
			
			bubble = new Bubbles();
			
			
			bubble.gotoAndStop(1);

			spriteBubble.addChild(bubble);
			
		}else{
			
			spriteBubble = bubblesPool.pop();
			var dObj:DisplayObject =  spriteBubble.getChildAt(0);
		
			bubble = cast(dObj, Bubbles);
			bubble.gotoAndStop(1);
		}

		
		spriteBubble.x = Std.random(1080);
		spriteBubble.y = -100;
		
		addChild(spriteBubble);
		
		var toX:Int = Std.random(1080);
		var toY:Int = Std.random(1920);
		var timeAnim:Int = 10 + Std.random(5);
		
		Actuate.tween(spriteBubble, timeAnim, {x:toX, y:toY}).onComplete(popBubble, [spriteBubble]);
		
		Timer.delay(genBubbles, 500+Std.random(1000));
	}
	
	function reuseBubble(b:Sprite):Void
	{
		removeChild(b);

		bubblesPool.push(b);
		
	}
	public function popBubble(b:Sprite):Void
	{
		
		if (this.contains(b))
		{
			var dObj:DisplayObject =  b.getChildAt(0);
			var bubble:Bubbles = cast(dObj, Bubbles);
			bubble.play();
			Timer.delay(reuseBubble.bind(b), 300);
		}
	
	}
}