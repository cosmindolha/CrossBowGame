package;
import openfl.events.Event;
import openfl.geom.Point;
/**
 * ...
 * @author Cosmin Dolha
 */
class ArrowEvent extends Event
{
	public static var POINT:String = "Point";
	public var data:Point;
	public function new(type:String, data:Point, bubbles:Bool = false, cancelable:Bool = false) 
    {
		super(type, bubbles, cancelable);
        this.data = data;
	}
	override public function clone():Event
    {
        return new ArrowEvent(type, data, bubbles, cancelable);
    }
}