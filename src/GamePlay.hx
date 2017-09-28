package;

import openfl.display.Sprite;
import openfl.events.Event;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.geom.Point;
import openfl.utils.Assets;
import haxe.Timer;
import openfl.display.DisplayObject;
/**
 * ...
 * @author Cosmin Dolha
 */
class GamePlay extends Sprite
{
	
	var bubbles:BubblesGen;
	var crossbow:CrossBow;

	public function new() 
	{
		super();
		

		
		
		var bgBmpD:BitmapData = Assets.getBitmapData("img/bg.png");
		var bg = new Bitmap(bgBmpD);
		addChild(bg);
		

		
		bubbles = new BubblesGen();
		addChild(bubbles);
		
		addEventListener(Event.ADDED_TO_STAGE, onAdded);
	}
	
	function collisionDetection() 
	{
		
	}
	
	function onAdded(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, onAdded);
		init();
	}
	
	function init():Void
	{
		crossbow = new CrossBow();
		addChild(crossbow);
		
		//crossbow.addEventListener("ARROW_FIRED", onArrowFired);
		//var cr:CrossBoeSpriteSheet = new CrossBoeSpriteSheet();
		
		//addChild(cr);
		
		crossbow.addEventListener(ArrowEvent.POINT, onArrowPoints);
		
	}
	
	function onArrowPoints(e:ArrowEvent):Void 
	{
		var p:Point = e.data;
		
		for (i in 0...bubbles.numChildren) 
		{
			
			var dobj:DisplayObject  = bubbles.getChildAt(i);
			
			var sp:Sprite = cast(dobj, Sprite);
			
			var bp:Point = new Point(dobj.x, dobj.y);
			var dist:Float = Point.distance(p, bp);
			
			//trace("distance - ", dist, " - end");
			
			if (dist < 150)
			{
				
				
				bubbles.popBubble(sp);
			}
		}
	}
	
	function onArrowFired(e:Event):Void 
	{
		//trace("arrow fired");
	}
	
}