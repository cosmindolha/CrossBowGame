package;

import openfl.events.Event;
import openfl.display.Sprite;
import haxe.Timer;
import openfl.events.IEventDispatcher;

import openfl.events.MouseEvent;
import openfl.geom.Point;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import motion.Actuate;
import openfl.utils.Assets;
import openfl.display.StageDisplayState;
/**
 * ...
 * @author Cosmin Dolha
 */
class CrossBow extends Sprite implements IEventDispatcher
{
	var clip:CrossBowAnim;
	var newArrow:Bool;
	var arrowsArrawy:Array<Sprite>;
	var currentArrow:Sprite;
	var readyToShoot:Bool;
	
	var arrowsFlyingArray:Array<Sprite>;
	var arrowPool:Array<Sprite>;
	var _hitTimer:Timer;
	var positionEvent:ArrowEvent;
	
	public function new() 
	{
		super();
		
		arrowPool = new Array<Sprite>();
		
		addEventListener(Event.ADDED_TO_STAGE, onAdded);
		
		_hitTimer = new Timer(20);
		_hitTimer.run = function(){sendArrowPosition(); };
		
	}
	function sendArrowPosition():Void
	{
		
		if (arrowsArrawy.length > 0)
		{
			for (i in 0...arrowsArrawy.length) 
			{
				var sp:Sprite = arrowsArrawy[i];
				var p:Point = new Point(sp.x, sp.y);
				positionEvent = new ArrowEvent(ArrowEvent.POINT, p);
				
				
				dispatchEvent(positionEvent);
				
				
			}
		
		}
	}
	function onAdded(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, onAdded);
		setupComponent();
	}
	function setupComponent() 
	{
		arrowsArrawy = new Array<Sprite>();
		
		clip = new CrossBowAnim();
		addChild (clip);
		clip.x = stage.stageWidth / 2;
		clip.y = stage.stageHeight - clip.height-100;
		clip.scaleX = 3;
		clip.scaleY = 3;
		clip.stop();
		addEvents();
		
		this.mouseEnabled = false;
		this.mouseChildren = false;
		clip.mouseChildren = false;
		clip.mouseEnabled = false;
	}
	function addEvents():Void
	{
		stage.addEventListener(MouseEvent.MOUSE_DOWN, onStageDown);
	}
	function createNewArrow():Void
	{
		var arrowSprite:Sprite;
		
		if (arrowPool.length == 0)
		{
		
			arrowSprite = new Sprite();
			picSp("arrow.png", arrowSprite);
		
		}else{
			arrowSprite = arrowPool.pop();
		}
		
		arrowSprite.mouseChildren = false;
		arrowSprite.mouseEnabled = false;
		
		addChild(arrowSprite);
		
		arrowSprite.x = stage.stageWidth / 2+5;
		arrowSprite.y = 1500;
		arrowSprite.rotation = clip.rotation;
		arrowsArrawy.push(arrowSprite);
		
		currentArrow = arrowSprite;
	}
	function shootNewArrow():Void
	{
		if (!newArrow)
		{
			newArrow = true;
			createNewArrow();
		}
	}
	function onStageUp(e:MouseEvent):Void 
	{
		stage.removeEventListener(MouseEvent.MOUSE_MOVE, onStageMove);
		stage.removeEventListener(MouseEvent.MOUSE_UP, onStageUp);
		stage.removeEventListener(MouseEvent.MOUSE_OUT, onStageUp);
		
		
		stage.addEventListener(MouseEvent.MOUSE_DOWN, onStageDown);
		stage.addEventListener(Event.ENTER_FRAME, onEnterFrame);
		var spArrow:Sprite = arrowsArrawy[arrowsArrawy.length - 1];
		var toX:Float = 540+(540-stage.mouseX) * 2.9;
		if(clip.currentFrame > 20)
		{
			Actuate.tween (spArrow, 1, { y: -250 , x:toX}).onComplete(removeArrow, [spArrow]);
			
			newArrow = false;
			clip.gotoAndPlay(34);
			fireCrossbow();
		}else{
			newArrow = true;
		}
	}
	function removeArrow(sp:Sprite):Void
	{
		arrowsArrawy.remove(sp);
		removeChild(sp);
		
		arrowPool.push(sp);
	}
	function onEnterFrame(e:Event):Void 
	{
		if (clip.currentFrame == 35)
		{
			stage.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
			clip.gotoAndStop(1);
		}
	}
	function onStageMove(e:MouseEvent):Void 
	{
		if (stage.mouseY > clip.y - 150)
		{
		clip.rotation = (540 - stage.mouseX) * 0.1;
		if (currentArrow != null)
		{
			currentArrow.rotation = clip.rotation;
		}
		if (clip.currentFrame < 33)
		{
			
			var mp:Point = new Point(stage.mouseX, stage.mouseY);
			var cp:Point = new Point(clip.x, clip.y-150);
			var dist:Float = Point.distance(mp, cp);
			
			var curFram:Int = Std.int((dist/364)*33);
			if (curFram < 34)
			{
				clip.gotoAndStop(curFram);
			}
		}
		}
	}
	function picSp(pic:String, sp:Sprite):Void
	{
		var bd:BitmapData = Assets.getBitmapData('img/$pic');
		var bmp = new Bitmap(bd);
		bmp.smoothing = true;
		sp.addChild(bmp);
		bmp.x = -bmp.width / 2;
		bmp.y = -bmp.height / 2;
	}
	function onStageDown(e:MouseEvent):Void 
	{
		if (stage.mouseY > 1120)
		{
			stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
			stage.removeEventListener(MouseEvent.MOUSE_DOWN, onStageDown);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, onStageMove);
			stage.addEventListener(MouseEvent.MOUSE_UP, onStageUp);
			stage.addEventListener(MouseEvent.MOUSE_OUT, onStageUp);
			shootNewArrow();
		}
	}
	function fireCrossbow():Void 
	{
		dispatchEvent(new Event("ARROW_FIRED"));
	}
	override function dispatchEvent(e:Event):Bool
	{
		if (e != null)
		{
		super.dispatchEvent(e);
		return true;
		}
		return false;
	}
}